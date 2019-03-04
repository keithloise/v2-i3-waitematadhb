<?php
class ImageOrTextItem extends DataObject {

    private static $db = array(
        'Title'        => 'Varchar(255)',
        'Content'      => 'HTMLText',
        'ContentSize'  => 'Varchar(255)',
        'ContentColor' => 'Color',
        'HeadingSize'  => 'Varchar(255)',
        'HeaderBold'   => 'Boolean',
        'BlockType'    => 'Enum(array("Text","Image"))',
        'BlockBgColor' => 'Color',
        'ExternalLink' => 'Text',
        'ImageHeight'  => 'Text',
        'Width'        => 'Enum(array("size1of1","size1of2","size1of3", "size2of3", "size1of4", "size3of4", "size1of5","size2of5","size3of5","size4of5"))',
        'PaddingTop'   => 'Varchar(255)',
        'PaddingBot'   => 'Varchar(255)',
        'PaddingLeft'  => 'Varchar(255)',
        'PaddingRight' => 'Varchar(255)',
        'LightBoxImage'=> 'Boolean',
        'ShowHeader'   => 'Boolean',
        'Archived'     => 'Boolean',
        'Sort'         => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'Image'    => 'Image',
        'Parent'   => 'ImageOrTextModule',
        'PageLink' => 'SiteTree'
    );

    private static $summary_fields = array(
        'Title'            => 'Block Type',
        'Width'            => 'Width',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = new FieldList();

        // Create the tabset otherwise we won't be able to add fields to tabs
        $fields->push(new TabSet("Root", $mainTab = new Tab("Main")));

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', SliderField::create('HeadingSize', 'Header font size', 15, 50));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('ShowHeader','Show Title'));

        $fields->addFieldToTab('Root.Main', $typeField = DropdownField::create('BlockType', 'Block type',  $this->dbObject('BlockType')->enumValues()));

        if($this->BlockType){
            $fields->addFieldToTab('Root.Main', ReadonlyField::Create('BlockType', 'Block Type', $this->BlockType));
        }
        else {
            $fields->addFieldToTab('Root.Main', $typeField);
        }

        if($this->ID && $this->BlockType == "Image") {
            $fields->addFieldToTab('Root.Main', $image =  UploadField::create('Image', 'Featured Image'));
            $image->setFolderName($this->pagePath().'/images');

            $fields->addFieldToTab('Root.Main', CheckboxField::create('LightBoxImage', 'Enable image Pop-up when click'));
            $fields->addFieldToTab('Root.Main', $internalLink = TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
            $fields->addFieldToTab('Root.Main', $externalLink = TextField::create('ExternalLink', 'External Link'));
            $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");

            $fields->addFieldToTab('Root.ImageSettings', TextField::create('PaddingTop', 'Padding Top'));
            $fields->addFieldToTab('Root.ImageSettings', TextField::create('PaddingBot', 'Padding Bot'));
            $fields->addFieldToTab('Root.ImageSettings', TextField::create('PaddingLeft', 'Padding Left'));
            $fields->addFieldToTab('Root.ImageSettings', TextField::create('PaddingRight', 'Padding Right'));
            $fields->addFieldToTab('Root.ImageSettings', $imageHeight = TextField::create('ImageHeight', 'Image Height'));
            $imageHeight->setDescription('Please input a number. E.g 120 for 120px');
            
            
        }

        if($this->ID && $this->BlockType == "Text") {
            $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content', 'Content'));
            $fields->addFieldToTab('Root.Main', SliderField::create('ContentSize', 'Content font size', 15, 50));
            $fields->addFieldToTab('Root.Main', ColorField::create('ContentColor', 'Content color'));
            $fields->addFieldToTab('Root.Main', ColorField::create('BlockBgColor', 'Block Background Color'));
        }

        $fields->addFieldToTab('Root.Main', DropdownField::create('Width', 'Width', $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('Archived'));
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

    public function Padding($Location){
        $dbField = 'Padding'.$Location;
        $padding = $this->$dbField;
        if($padding == ''){
            $padding = 10;
        }
        return $padding;
    }

    public function ArchivedReadable() {
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