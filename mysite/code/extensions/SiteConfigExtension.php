<?php
class SiteConfigExtension extends DataExtension {
    public static $has_one = array(
        'Logo'         => 'Image',
        'MobileLogo'   => 'Image',
        'OrgLogo'      => 'Image',
        'PromsLogo'    => 'Image',
        'DHBLogo'      => 'Image',
        'DefaultBg'    => 'Image',
    );

    public static $db = array(
        'SiteDescription' => 'Text',
        'GoogleAnalytics' => 'Varchar(255)',
        'CSSOverrides'    => 'Text',
        'FontsScript'     => 'Text',
        'ContactDetails'  => 'HTMLText',
        'LogoWidth'       => 'Int',
        'PreheaderText'   => 'Text',
        'HeaderPosition'  => 'Boolean',
        'HeaderBgColor'   => 'Color',
        'HeaderStyles'    => 'Text',
        'FooterBorder'    => 'Text',
        'FooterBorderBgc' => 'Color',
        'FooterBgColor'   => 'Color',
        'FooterBgColor2'  => 'Color',
        'FooterWidth'     => 'Text',
        'PaddingLeft'     => 'Text',
        'PaddingRight'    => 'Text',
        'PaddingTop'      => 'Text',
        'PaddingBottom'   => 'Text',
        'FooterStyles'    => 'Text',
        'AssetsFolder'    => 'Text',
        'SearchRsBanner'  => 'Boolean'
    );

    private static $has_many = array(
        'Animations'         => 'Animation',
        'AnimationDelays'    => 'AnimationDelay',
        'AnimationSpeeds'    => 'AnimationSpeed',
        'SocialNetworkItems' => 'SocialNetworkItem',
        'FooterBlocks'       => 'FooterBlock',
        'Navigations'        => 'Navigation'
    );

    private static $many_many = array(
        'CSSAssets' => 'File',
        'JSAssets'  => 'File'
      //'Fonts'     => 'File'
    );

    private static $many_many_extraFields = array(
        'CSSAssets' => array('SortOrder' => 'Int'),
        'JSAssets'  => array('SortOrder' => 'Int')
    );

    public function updateCMSFields(FieldList $fields) {

        $fields->addFieldToTab("Root.Main", $googleAnalytics = new TextField("GoogleAnalytics", "Google Analytics"));
        $googleAnalytics->setDescription("Account number to be used all across the site (in the format UA-XXXXX-X)");
        $fields->addFieldToTab("Root.Main", $siteDescription = new TextareaField("SiteDescription", "Site Description"));
        $fields->addFieldToTab("Root.Main", $fonts = new TextareaField("FontsScript", "Fonts"));
        $fonts->setDescription('Put each font declaration on a new line');

        /* --------------------- HEADER --------------------- */

        $fields->addFieldToTab("Root.Header", new TextField("PreheaderText", "Preheader Text"));
        $fields->addFieldToTab("Root.Header", new UploadField("Logo", "Logo"));
        $fields->addFieldToTab("Root.Header", $logoWidth = new SliderField('LogoWidth', 'Logo Width', 90, 400));
        $logoWidth->setDescription("Note: Minimum width is 90px and maximum width is 400px");
        $fields->addFieldToTab("Root.Header", new UploadField("MobileLogo", "Mobile Logo"));
        $fields->addFieldToTab("Root.Header",DropdownField::create( 'HeaderStyles', 'Header style', array('default'=> 'default', 'i3' => 'i3 style', 'SIP' => 'SIP style')));

        $fields->addFieldToTab("Root.Header", new CheckboxField("HeaderPosition", "Sticky Header"));
        $fields->addFieldToTab("Root.Header", $colorPicker = new ColorField("HeaderBgColor", "Header Background Color"));
        $colorPicker->setDescription("Note: This will activate when header is sticky");

        $fields->addFieldToTab("Root.Header", new UploadField("DefaultBg", "Default Hero Banner "));
        $fields->addFieldToTab("Root.Header", new CheckboxField("SearchRsBanner", "Disable Search Result Banner"));


        /* --------------------- CONTACT --------------------- */

        $fields->addFieldToTab("Root.Contact",  new HtmlEditorField("ContactDetails", "Contact Details"));


        /* --------------------- ANIMATIONS --------------------- */

        $confAnimation = GridFieldConfig_RecordEditor::create();
        $confAnimation->addComponent(new GridFieldOrderableRows());
        $fields->addFieldToTab('Root.Animations', GridField::create('Animations', 'Animations', $this->owner->Animations(), $confAnimation));
        $fields->addFieldToTab('Root.Animations', GridField::create('AnimationDelays', 'Animation Delays', $this->owner->AnimationDelays(), $confAnimation));
        $fields->addFieldToTab('Root.Animations', GridField::create('AnimationSpeeds', 'Animation Speeds', $this->owner->AnimationSpeeds(), $confAnimation));


        /* --------------------- SOCIAL MEDIA --------------------- */

        //$fields->addFieldToTab('Root.SocialMedia', CheckboxField::create('HideTwitterInFooter'));
        $confSocial = GridFieldConfig_RecordEditor::create();
        $confSocial->addComponent(new GridFieldOrderableRows());
        $fields->addFieldToTab('Root.SocialMedia', GridField::create('SocialNetworkItems', 'Social Networks', $this->owner->SocialNetworkItems(), $confSocial));
        /* --------------------- FOOTER --------------------- */

        $fields->addFieldToTab('Root.Footer', UploadField::create('OrgLogo', 'Department/Organization Logo'));
        $fields->addFieldToTab('Root.Footer', UploadField::create('DHBLogo', 'DHB Logo'));
        $fields->addFieldToTab("Root.Footer", DropdownField::create( 'FooterStyles', 'Footer style', array('default'=> 'default', 'i3' => 'i3 style', 'SIP' => 'SIP style')));

        $confFooter = GridFieldConfig_RecordEditor::create();
        $confFooter->addComponent(new GridFieldOrderableRows());
        $fields->addFieldToTab('Root.Footer', GridField::create('FooterBlocks', 'Footer Content Blocks', $this->owner->FooterBlocks(), $confFooter));

        $fields->addFieldToTab("Root.Footer", $bordertop = TextField::create("FooterBorder", "Footer Border top"));
        $bordertop->setDescription("E.g. 5 (this will give you a 5px border top)");
        $fields->addFieldToTab("Root.Footer", ColorField::create("FooterBorderBgc", "Footer Border Color"));

        $fields->addFieldToTab("Root.Footer", FieldGroup::create(
            ColorField::create('FooterBgColor','Footer Gradient BgColor'),
            ColorField::create('FooterBgColor2', 'Footer Gradient BgColor 2')
        )->setTitle('BACKGROUND COLOR'));

        $fields->addFieldToTab("Root.Footer", FieldGroup::create(
            TextField::create('FooterWidth','Footer Width'),
            TextField::create('PaddingTop', 'Padding Top'),
            TextField::create('PaddingBottom', 'Padding Bottom'),
            TextField::create('PaddingLeft', 'Padding Left'),
            TextField::create('PaddingRight', 'Padding Right')
        )->setTitle('PADDINGS AND WIDTH'));


        /* --------------------- NAVIGATION MENU -------------------- */

        $confNav = GridFieldConfig_RecordEditor::create();
        $confNav->addComponent(new GridFieldOrderableRows());
        $fields->addFieldToTab('Root.MenuSettings', GridField::create('Navigations', 'Navigations', $this->owner->Navigations(), $confNav));


        /* --------------------- CUSTOM CODE --------------------- */
        $fields->addFieldToTab('Root.CustomCode', CodeEditorField::create('CSSOverrides','CSS Overrides')->setRows(20));
        $fields->addFieldToTab("Root.CustomCode", $folder = new TextField("AssetsFolder", "Assets Folder name"));
        $folder->setDescription("Please set Assets folder name before uploading a file.");

        $fields->addFieldToTab('Root.CustomCode', $cssAssets =  SortableUploadField::create('CSSAssets'));
        $cssAssets->setFolderName($this->assetsPath().'/css');
        $cssAssets->setDescription("Please upload CSS Assets otherwise use CSS Overides");

        $fields->addFieldToTab('Root.CustomCode', $jsAssets =  SortableUploadField::create('JSAssets'));
        $jsAssets->setFolderName($this->assetsPath().'/javascript');
        $jsAssets->setDescription("Please upload JS Assets otherwise use Custom Script");

        /* --------------------- PROMS WEBSITE --------------------- */
        $fields->addFieldToTab("Root.Proms", new UploadField("PromsLogo", "Proms Logo"));

        /*
        $fields->addFieldToTab('Root.CustomCode', $fonts = SortableUploadField::create('Fonts'));
        $fonts->setFolderName($this->assetsPath().'/webfonts');
        $fonts->setDescription("Please upload Fonts otherwise use Custom Script");
        */
    }

    public function assetsPath() {
        $config = SiteConfig::current_site_config();
        $folder = $config->AssetsFolder;
        if ($folder) {
            return $config->AssetsFolder;
        } else {
            return 'default';
        }
    }
    
    public function FontList(){
		$fontsArray = explode("\n", $this->owner->Fonts);
		$fonts = implode($fontsArray, "|");
		return $fonts;
	}
}