<?php
class ImageWithContentItem extends DataObject {

    private static $db = array(
        'Title'               => 'Varchar(255)',
        'Content'             => 'HTMLText',
        'BgContentColor'      => 'Color',
        'BgContentHoverColor' => 'Color',
        'Animate'             => 'Varchar(255)',
        'AnimateDelay'        => 'Varchar(255)',
        'AnimateSpeed'        => 'Varchar(255)',
        'Width'               => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'ContentPosition'     => 'Enum(array("left","right"))',
        'LinkPage'            => 'Boolean',
        'Archived'            => 'Boolean',
        'Sort'                => 'Int'
    );

    private static $default_sort = 'Sort';
    
    private static $has_one = array(
        'ItemImage' => 'Image',
        'Parent'    => 'ImageWithContentModule',
        'PageLink'  => 'SiteTree'
    );

    private static $summary_fields = array(
        'ItemTitle'        => 'Title',
        'Width'            => 'Width',
        'ContentPosition'  => 'Content Block Position',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.OptionalContent', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.OptionalContent', $image = UploadField::create('ItemImage', 'Featured Image'));
        $image->setFolderName($this->pagePath().'/images');

        $fields->addFieldToTab('Root.OptionalContent', HtmlEditorField::create('Content', 'Content'));
        
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Select Page', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('LinkPage','Enable Link'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));
        
        //Settings
        $fields->addFieldToTab('Root.Settings', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Settings', ColorField::create('BgContentColor', 'Content Background Color'));
        $fields->addFieldToTab('Root.Settings', ColorField::create('BgContentHoverColor', 'Content Background Hover Color'));
        $fields->addFieldToTab('Root.Settings', DropdownField::create('ContentPosition', 'Content Block Position',  $this->dbObject('ContentPosition')->enumValues()));
        
        //Animation
        $animation = DropdownField::create('Animate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animation);
        $animationDelay = DropdownField::create('AnimateDelay', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animationDelay);
        $animationSpeed = DropdownField::create('AnimateSpeed', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animationSpeed);

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

    public function ArchivedReadable() {
        if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
        return _t('GridField.Live', 'Live');
    }
    
    public function onBeforeWrite() {
        parent::onBeforeWrite();
        if ($this->PageLink()->Title) {
            $this->Title = $this->PageLink()->Title;
        }
    }

    public function onAfterWrite() {
        parent::onAfterWrite();
        if ($this->PageLink()->Title) {
            $this->Title = $this->PageLink()->Title;
        }
    }

    public function getItemTitle() {
        if ($this->PageLink()->Title) {
            return $this->PageLink()->Title;
        } else {
            return $this->Title;
        }
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