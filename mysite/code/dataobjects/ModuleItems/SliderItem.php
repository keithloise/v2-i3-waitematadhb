<?php
class SliderItem extends DataObject {

    private static $db = array(
        'Title'         => 'Text',
        'Content'       => 'HTMLText',
        'Animate'       => 'Varchar(255)',
        'AnimateDelays' => 'Varchar(255)',
        'AnimateSpeeds' => 'Varchar(255)',
        'LightBoxImage' => 'Boolean',
        'LinkToPage'    => 'Boolean',
        'Archived'      => 'Boolean',
        'Sort'          => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'SliderImg'  => 'Image',
        'Parent'     => 'SliderModule',
        'PageLink'   => 'SiteTree',
    );

    private static $summary_fields = array(
        'Title'            => 'Title',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', $image = UploadField::create('SliderImg', 'Slider Image'));
        $image->setFolderName($this->pagePath().'/images/slider');

        $fields->addFieldToTab('Root.Main', CheckboxField::create('LightBoxImage', 'Enable image Pop-up when click'));
        
        $fields->addFieldToTab('Root.Main', $content = HtmlEditorField::create('Content', 'Content'));
        $content->setDescription("Note: You don't need to add content if you selected page for slider");
        $fields->addFieldToTab('Root.Main', $page = TreeDropdownField::create('PageLinkID', 'Select Page for slider', 'SiteTree'));
        $page->setDescription("Please fill in the Page Summary of selected page to show the slider content");

        $fields->addFieldToTab('Root.Main', CheckboxField::create('LinkToPage', 'Enable link to slider'));

        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));
    
        $fields->addFieldToTab('Root.Animation', DropdownField::create('Animate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)'));
        $fields->addFieldToTab('Root.Animation', DropdownField::create('AnimateDelays', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)'));
        $fields->addFieldToTab('Root.Animation', DropdownField::create('AnimateSpeeds', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)'));

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

    public function Link(){
        if($this->ExternalLink){
            return $this->ExternalLink;
        }
        if($this->PageLinkID){
            return $this->PageLink()->Link();
        }
        return false;
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