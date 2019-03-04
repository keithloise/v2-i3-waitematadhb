<?php
class MasonryItem extends DataObject {

    private static $db = array(
        'Title'       => 'Text',
        'Width'       => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'Height'      => 'Enum(array("height1of2","height2of2"))',
        'Content'     => 'HTMLText',
        'GridPadding' => 'Boolean',
        'HoverTitle'  => 'Boolean',
        'Archived'    => 'Boolean',
        'Sort'        => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'Parent'      => 'MasonryModule',
        'Image'       => 'Image',
        'GridBgImage' => 'Image',
        'PageLink'    => 'SiteTree'
    );

    private static $summary_fields = array(
        'Title'            => 'Title',
        'Width'            => 'Width',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content', 'Content'));
        $fields->addFieldToTab('Root.Image', $image =  UploadField::create('Image', 'Featured Image'));
        $image->setFolderName($this->pagePath().'/images');
        $fields->addFieldToTab('Root.Image', $gridimage = UploadField::create('GridBgImage', 'Grid Background Image'));
        $gridimage->setFolderName($this->pagePath().'/images');
        $fields->addFieldToTab('Root.Main', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Main', DropdownField::create('Height', 'Height',  $this->dbObject('Height')->enumValues()));
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', $externalLink = TextField::create('ExternalLink', 'External Link'));
        $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");

        $fields->addFieldToTab('Root.Main', CheckboxField::create('GridPadding', 'Grid Padding'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('HoverTitle', 'Show Title on Hover'));
        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        return $fields;
    }

    public function pagePath() {
        $config = SiteConfig::current_site_config();
        $folder = $config->AssetsFolder;
        if ($folder) {
            return $config->AssetsFolder;
        } else {
            return 'default';
        }
    }

    public function ArchivedReadable(){
        if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
        return _t('GridField.Live', 'Live');
    }

    public function canCreate($member = null) {
        return $this->Parent()->canCreate($member);
    }

    public function canEdit($member = null) {
        return $this->Parent()->canEdit($member);
    }

    public function canDelete($member = null) {
        return $this->Parent()->canDelete($member);
    }

    public function canView($member = null) {
        return $this->Parent()->canView($member);
    }

}