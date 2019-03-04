<?php
class Module extends DataObject {

    private static $default_sort  = 'Sort';
    private static $singular_name = 'Content Module';
    private static $description   = "Standard content block using the text editor with optional box styles.";

    private static $db = array(
        'Title'                => 'Varchar(255)',
        'Content'              => 'HTMLText',
        'ContentSize'          => 'Int',
        'ContentColor'         => 'Color',
        'Type'                 => 'Varchar(255)',
        'PaddingTop'           => 'Varchar(255)',
        'PaddingBot'           => 'Varchar(255)',
        'PaddingLeft'          => 'Varchar(255)',
        'PaddingRight'         => 'Varchar(255)',
        'SectionWidth'         => 'Varchar(255)',
        'SectionHeader'        => 'HTMLText',
        'SectionHeaderSize'    => 'Int',
        'SectionSubHeaderSize' => 'Int',
        'ButtonLabel'          => 'Varchar(255)',
        'BtnSectionHeader'     => 'Boolean',
        'ExternalLink'         => 'Text',
        'LightText'            => 'Boolean',
        'Animate'              => 'Varchar(255)',
        'AnimateDelay'         => 'Varchar(255)',
        'AnimateSpeed'         => 'Varchar(255)',
        'HeaderAnimate'        => 'Varchar(255)',
        'HeaderAnimateDelay'   => 'Varchar(255)',
        'HeaderAnimateSpeed'   => 'Varchar(255)',
        'BackgroundOverlay'    => 'Boolean',
        'BgOverlayColor'       => 'Color',
        'BgColorGradient1'     => 'Color',
        'BgColorGradient2'     => 'Color',
        'ActivateParallax'     => 'Boolean',
        'ContentPosition'      => 'Enum(array("left","right","top left","top right"))',
        'Width'                => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'SectionContWidth'     => 'Enum(array("Full","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'BlogStyle'            => 'Enum(array("horizontal","vertical"))',
        'ImageFit'             => 'Enum(array("contain","cover","fill"))',
        'ImageOverlay'         => 'Boolean',
        'OffHeader'            => 'Boolean',
        'Archived'             => 'Boolean',
        'Sort'                 => 'Int'
    );     

    private static $summary_fields = array(
        'Title'            => 'Title',
        'DisplayType'      => 'Module Type',
        'SectionContWidth' => 'Width',
        'ArchivedReadable' => 'Status'
    );

    private static $has_one = array(
        'Parent'         => 'Page',
        'PageLink'       => 'SiteTree',
        'FileLink'       => 'File',
        'SectionBgImage' => 'Image'
    );

    private static $defaults = array(
        'SectionContWidth'  => 'Full',
        'SectionHeaderSize' => '56'
    );

    public function getCMSFields() {
        $fields = new FieldList();

        // Create the tabset otherwise we won't be able to add fields to tabs
        $fields->push(new TabSet("Root", $mainTab = new Tab("Main")));
        $fields->addFieldToTab('Root.Main', TextField::create('Title'));
        $typeField = new DropdownField("Type", "Module Type", $this->getModuleTypes() , $this->ClassName);

        if($this->Type){
            $fields->addFieldToTab('Root.Main', TextField::Create('ROType', 'Module Type', singleton($this->Type)->singular_name())->performReadonlyTransformation());
        }
        else {
            $fields->addFieldToTab('Root.Main', $typeField);
        }

        if($this->ID && $this->Type) {

            //Module Settings
            $fields->addFieldToTab("Root.SectionSettings", FieldGroup::create(
                TextField::create('PaddingTop','Padding Top'),
                TextField::create('PaddingBot', 'Padding Bottom'),
                TextField::create('PaddingLeft', 'Padding Left'),
                TextField::create('PaddingRight', 'Padding Right'),
                TextField::create('SectionWidth', 'Section Max Width')
            )->setTitle('PADDINGS AND WIDTH'));

            //Settings
            /*
            $fields->addFieldToTab("Root.SectionSettings", FieldGroup::create(
                CheckboxField::create('FloatSection', 'Float Section')
            )->setTitle('FLOAT'));
            */

            //Module Animations
            $fields->addFieldToTab("Root.SectionSettings", FieldGroup::create(
                DropdownField::create('Animate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)'),
                DropdownField::create('AnimateDelay', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)'),
                DropdownField::create('AnimateSpeed', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)')
            )->setTitle('ANIMATIONS'));

            if($this->Type != "SlideshowModule") {
                //Section Heading & Sub Heading
                $fields->addFieldToTab('Root.SectionHeaderContent', HtmlEditorField::create('SectionHeader', 'Section Header Content'));
                $fields->addFieldToTab('Root.SectionHeaderContent', $header = SliderField::create('SectionHeaderSize', 'Section Header Size', 25, 70));
                $header->setDescription('Note: Use "Heading 1" to make a Header');
                $fields->addFieldToTab('Root.SectionHeaderContent', $subHeader = SliderField::create('SectionSubHeaderSize', 'Section Sub Header Size', 20, 70));
                $subHeader->setDescription('Note: Use "Heading 2 / Heading 3 / Heading 4 to make a sub header');
                $fields->addFieldToTab("Root.SectionHeaderContent", FieldGroup::create(
                    DropdownField::create('HeaderAnimate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)'),
                    DropdownField::create('HeaderAnimateDelay', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)'),
                    DropdownField::create('HeaderAnimateSpeed', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)')
                )->setTitle('HEADER ANIMATION'));
            }

            if($this->Type == "SliderModule") {
                $fields->addFieldToTab('Root.Main', CheckboxField::create('ImageOverlay', 'Activate image overlay'));
                $fields->addFieldToTab('Root.Main', DropdownField::create('ImageFit', 'Image appearance',  $this->dbObject('ImageFit')->enumValues()));
            }

            //Module Background
            $fields->addFieldToTab('Root.Background', $sectionbg = UploadField::create('SectionBgImage', 'Section background image'));
            $sectionbg->setFolderName($this->pagePath().'/images/sectionimages');

            $fields->addFieldToTab('Root.Background', CheckboxField::create('ActivateParallax', 'Parallax Background'));
            $fields->addFieldToTab('Root.Background', ColorField::create('BgColorGradient1','Background Color Gradient 1'));
            $fields->addFieldToTab('Root.Background', ColorField::create('BgColorGradient2','Background Color Gradient 2'));

            $fields->addFieldToTab('Root.Background', CheckboxField::create('BackgroundOverlay', 'Activate Bg Image Overlay Color'));
            $fields->addFieldToTab('Root.Background', ColorField::create('BgOverlayColor', 'Background Overlay Color'));

            if($this->ID && $this->Type == "BlogModule") {
                $fields->addFieldToTab('Root.Main', DropdownField::create('ContentPosition', 'Content Position',  $this->dbObject('ContentPosition')->enumValues()));
                $fields->addFieldToTab('Root.Main', DropdownField::create('Width', 'Blog Posts Width',  $this->dbObject('Width')->enumValues()));
                $fields->addFieldToTab('Root.Main', DropdownField::create('BlogStyle', 'Blog Content Style', $this->dbObject('BlogStyle')->enumValues()));
                $fields->addFieldToTab('Root.SectionHeaderContent', CheckboxField::create('OffHeader','Turn off Header Content'));
            }

            $instance = singleton($this->Type);
            $instance->ID = $this->ID;
            $instance->getModuleCMSFields($fields);

            if($this->Type != "SlideshowModule" && $this->Type != "Module") {
                $fields->addFieldToTab('Root.SectionSettings', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
                $fields->addFieldToTab('Root.SectionSettings', $externalLink = TextField::create('ExternalLink','External Link'));
                $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");

                $fields->addFieldToTab('Root.SectionSettings', $fileLink = UploadField::create('FileLink','File'));
                $fileLink->setDescription("Note: If you upload a File, the Internal & External Link will be ignored.");
                $fileLink->setFolderName($this->pagePath().'/files');

                $fields->addFieldToTab('Root.SectionSettings', $btnLabel = TextField::create('ButtonLabel', 'Button Label'));
                $btnLabel->setDescription('Default label: View More');

                $fields->addFieldToTab('Root.SectionSettings', CheckboxField::create('BtnSectionHeader', 'Display button to header'));
            }

            if($this->Type != "BlogModule") {
                $fields->addFieldToTab('Root.Main', DropdownField::create('SectionContWidth', 'Section Width',  $this->dbObject('SectionContWidth')->enumValues()));
            }
        }

        $fields->addFieldToTab('Root.Main', CheckboxField::create('Archived'));
        $this->extend('updateCMSFields', $fields);

        return $fields;
    }

    /* Custom function to display fields required for each module */
    public function getModuleCMSFields(fieldList $fields){
	    $fields->addFieldToTab('Root.Main', CheckboxField::create('LightText','Light Text'));
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content'));
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

    public function onBeforeWrite(){
        parent::onBeforeWrite();
        $this->ClassName = $this->Type;
        if($this->Title == ''){
            $this->Title = $this->Type;
        }
    }

    public function SectionID($id) {
        $string = str_replace(' ', '', $id);
        return $string;
    }

    public function Padding($Location){
        $dbField = 'Padding'.$Location;
        $padding = $this->$dbField;
        if($padding == ''){
            $padding = 40;
        }
        return $padding;
    }

    private function getModuleTypes() {
        $moduleTypes = array();
        $classes = ClassInfo::getValidSubClasses('Module');
        foreach ($classes as $type) {
            $instance = singleton($type);
            $moduleTypes[$instance->ClassName] = $instance->singular_name();
        }
        return $moduleTypes;
    }
    
    public function Show(){
        return $this->RenderWith(array($this->ClassName, 'Module'));
    }

    public function ArchivedReadable(){
        if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
        return _t('GridField.Live', 'Live');
    }

    public function DisplayType(){
        return singleton($this->Type)->singular_name();
    }
    
    public function DisplayTypeTrim() {
        $string = str_replace(' ','', singleton($this->Type)->singular_name());
        return $string;
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