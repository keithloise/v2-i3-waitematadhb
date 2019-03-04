<?php
class ImageWithTextOverlayItem extends DataObject {

    private static $db = array(
        'Title'          => 'Text',
        'Content'        => 'HTMLText',
        'BgOverlayColor' => 'Color',
        'BgHoverColor'   => 'Color',
        'BgOpacity'      => 'Text',
        'TitleColor'     => 'Color',
        'TitleSize'      => 'Int',
        'BlurbBg'        => 'Color',
        'BlockBgColor'   => 'Color',
        'BlockImgHeight' => 'Int',
        'Animate'        => 'Varchar(255)',
        'AnimateDelay'   => 'Varchar(255)',
        'AnimateSpeed'   => 'Varchar(255)',
        'Width'          => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'ExternalLink'   => 'Varchar(255)',
        'Archived'       => 'Boolean',
        'Sort'           => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'BlockBgImage' => 'Image',
        'PageLink'     => 'SiteTree',
        'FileLink'     => 'File',
        'Parent'       => 'ImageWithTextOverlayModule'
    );

    private static $summary_fields = array(
        'Title'            => 'Title',
        'Width'            => 'Width',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', ColorField::create('TitleColor', 'Title Color'));
        $fields->addFieldToTab("Root.Main", SliderField::create('TitleSize', 'Title Size', 0, 50));
        $fields->addFieldToTab('Root.Main', ColorField::create('BlurbBg', 'Blurb Bg Color'));

        $fields->addFieldToTab('Root.Main', $image = UploadField::create('BlockBgImage', 'Block Image'));
        $image->setFolderName($this->pagePath().'/images');

        $fields->addFieldToTab('Root.Main', $blockbg = ColorField::create('BlockBgColor', 'Block Bg Color'));
        $blockbg->setDescription("Please select a bgcolor if you don't have a Block Image");
        $fields->addFieldToTab("Root.Main", SliderField::create('BlockImgHeight', 'Block Image Height', 0, 500));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content', 'Content'));
        
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', $externalLink = TextField::create('ExternalLink','External Link'));
        $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");

        $fields->addFieldToTab('Root.Main', $fileLink = UploadField::create('FileLink','File'));
        $fileLink->setDescription("Note: If you upload a File, the Internal & External Link will be ignored.");
        $fileLink->setFolderName($this->pagePath().'/files');
        
        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));
        //Settings

        $fields->addFieldToTab('Root.Settings', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Settings', ColorField::create('BgOverlayColor', 'Image Color Overlay'));
        $fields->addFieldToTab("Root.Settings", SliderField::create('BgOpacity', 'Color Overlay Opacity', 0, 10));
        $fields->addFieldToTab('Root.Settings', $hoverColor = ColorField::create('BgHoverColor', 'Image Hover Color Overlay'));

        //Animation
        $animation = DropdownField::create('Animate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animation);
        $animationDelay = DropdownField::create('AnimateDelay', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animationDelay);
        $animationSpeed = DropdownField::create('AnimateSpeed', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animationSpeed);

        $fields->addFieldToTab('Root.Main',  HiddenField::create('Sort'));

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