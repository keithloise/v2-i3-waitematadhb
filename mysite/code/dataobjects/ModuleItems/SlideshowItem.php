<?php
class SlideshowItem extends DataObject {

    private static $db = array(
        'Title'           => 'Text',
        'Content'         => 'HTMLText',
        'SliderTextColor' => 'Color',
        'SliderTextSize'  => 'Int',
        'OverlayOpacity'  => 'Int',
        'LinkLabel'       => 'Text',
        'ExternalLink'    => 'Text',
        'ButtonColor'     => 'Color',
        'ButtonBGColor'   => 'Color',
        'Archived'        => 'Boolean',
        'Sort'            => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'BgImage'  => 'Image',
        'Parent'   => 'SlideshowModule',
        'PageLink' => 'SiteTree',
    );

    private static $summary_fields = array(
        'Title'            => 'Slider text title',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        return new FieldList(
            UploadField::create('BgImage', 'Slider image')->setFolderName($this->pagePath().'/images/slider'),
            TextField::create('Title', 'Slider text title'),
            ColorField::create('SliderTextColor', 'Slider text title color')->setDescription('Default is White #fff'),
            SliderField::create('SliderTextSize', 'Slider text title size', 10, 70),
            HTMLEditorField::create('Content', 'Slider content'),
            TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'),
            TextField::create('ExternalLink')->setDescription('Note: If you specify an External Link, the Internal Link will be ignored.'),
            CheckboxField::create('Archived')
            /*
            DropdownField::create('ContentAlignment', 'Content alignment', $this->dbObject('ContentAlignment')->enumValues()),
            HTMLEditorField::create('CarouselContent')
            */
        );
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