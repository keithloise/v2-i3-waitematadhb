<?php
class Page extends SiteTree {

	private static $db = array(
        'ContentSummary'   => 'HTMLText',
	    'PaddingTop'       => 'Varchar(255)',
        'PaddingBot'       => 'Varchar(255)',
        'PaddingLeft'      => 'Varchar(255)',
        'PaddingRight'     => 'Varchar(255)',
        'Width'            => 'Varchar(255)',
        'HeaderContent'    => 'HTMLText',
        'HeaderContentBox' => 'Boolean',
        'HeaderColor'      => 'Color',
        'HeaderBoxAlign'   => 'Enum(array("left","center","right"))',
        'HeaderBoxColor'   => 'Color',
        'NoScrollArrow'    => 'Boolean',
        'NoBgOverlay'      => 'Boolean',
        'DisableHeroBanner'=> 'Boolean'
	);

	private static $has_one = array(
	    'PageBanner'     => 'Image',
        'PageBackground' => 'Image'
	);

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.PageSettings', $pagebanner = UploadField::create('PageBanner', 'Page Hero Banner'));
        $pagebanner->setFolderName($this->pagePath().'/images/backgroundimages');

        $fields->addFieldToTab('Root.PageSettings', $pagebackground = UploadField::create('PageBackground', 'Page Background'));
        $pagebackground->setFolderName($this->pagePath().'/images/backgroundimages');

        $fields->addFieldToTab('Root.PageSettings', HtmlEditorField::create('HeaderContent', 'Header Content'));
        //Module Settings
        $fields->addFieldToTab('Root.PageSettings', FieldGroup::create(
            TextField::create('PaddingTop','Padding Top'),
            TextField::create('PaddingBot', 'Padding Bottom'),
            TextField::create('PaddingLeft', 'Padding Left'),
            TextField::create('PaddingRight', 'Padding Right'),
            TextField::create('Width', 'Max Width')
        )->setTitle('CONTENT PADDINGS AND WIDTH'));
        
        $fields->addFieldToTab('Root.PageSettings', $headercontent = CheckboxField::create('HeaderContentBox','Make header content box'));
        $headercontent->setDescription('Note: Ticking this will enable the Header Color, Box Background Color & Box Position');
        $fields->addFieldToTab('Root.PageSettings', DropdownField::create('HeaderBoxAlign', 'Box Position', $this->dbObject('HeaderBoxAlign')->enumValues()));
        $fields->addFieldToTab('Root.PageSettings', ColorField::create('HeaderColor', 'Header Color'));
        $fields->addFieldToTab('Root.PageSettings', ColorField::create('HeaderBoxColor', 'Box Background Color'));
        $fields->addFieldToTab('Root.PageSettings', CheckboxField::create('NoScrollArrow','Disable scrolldown arrow'));
        $fields->addFieldToTab('Root.PageSettings', CheckboxField::create('NoBgOverlay','Disable Banner Overlay'));
        $fields->addFieldToTab('Root.PageSettings', CheckboxField::create('DisableHeroBanner','Disable Hero Banner'));

        
        $fields->addFieldToTab(
                'Root.Main',
                ToggleCompositeField::create('PageSummary', 'Page Summary',
                    array(
                        HtmlEditorField::create('ContentSummary','Add a Page Summary')
                    )
                )->setHeadingLevel(4)
            );

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
}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements

        $cssAssets = $this->cssAssets();
        $jsAssets = $this->jsAssets();

        if ($cssAssets->count() != 0 || $jsAssets->count() != 0) {
            foreach ($cssAssets as $cssAsset) {
                Requirements::css($cssAsset->Filename);
            }
            foreach ($jsAssets as $jsAsset) {
                Requirements::javascript($jsAsset->Filename);
            }    
        } else {
            //default Silverstripe Assets
            Requirements::css("themes/simple/css/owl.carousel.css");
            Requirements::css("themes/simple/css/owl.theme.default.css");
            Requirements::css("themes/simple/css/animate.css");
            Requirements::css("themes/simple/css/reset.css");
            Requirements::css("themes/simple/css/typography.css");
            Requirements::css("themes/simple/css/form.css");
            Requirements::css("themes/simple/css/layout.css");
            Requirements::css("themes/simple/css/style.css");
            Requirements::css("themes/simple/css/fonts.css");
            Requirements::css("themes/simple/css/hamburger.nav.css");

            Requirements::javascript('framework/thirdparty/jquery/jquery.js');
            Requirements::javascript('themes/simple/javascript/script.js');
            Requirements::javascript('themes/simple/javascript/jquery.min.js');
            Requirements::javascript('themes/simple/javascript/owl.carousel.js');
            Requirements::javascript('themes/simple/javascript/wow.min.js');
            Requirements::javascript('themes/simple/javascript/isotope.pkgd.min.js');
            Requirements::javascript('themes/simple/javascript/lightbox.js');
            Requirements::javascript('https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js');
            Requirements::javascript('themes/simple/javascript/mods.js');
            Requirements::javascript('themes/simple/javascript/proms.mods.js');
        }
        
        	// Add custom styles (minified) to header
            $styles = '<style>';
            $styles .= $this->CustomStyles();
            $styles .= SiteConfig::current_site_config()->CSSOverrides;
            $styles .= '</style>';
            $minified = preg_replace('!/\*[^*]*\*+([^/][^*]*\*+)*/!', '', $styles);
            $minified = str_replace(': ', ':', $minified);
            $minified = str_replace(array("\r\n", "\r", "\n", "\t", '  ', '    ', '    '), '', $minified);
            Requirements::insertHeadTags($minified);
	}

    public function getLogoWidthFix() {
        $config = SiteConfig::current_site_config();
        return $config->LogoWidth."px";
    }

    public function cssAssets() {
	    $config = SiteConfig::current_site_config();
	    $assets = $config->CSSAssets()->sort('SortOrder');

	    return $assets;
    }

    public function jsAssets() {
        $config = SiteConfig::current_site_config();
        $assets = $config->JSAssets()->sort('SortOrder');

        return $assets;
    }
    
    public function getAllBlogs() {
	    return BlogPost::get()->sort('PublishDate','asc');
    }

    public function filterNews() {
	    $blog = BlogPost::get()->sort('PublishDate', 'asc');
		
		return $blog;
    }
    
    public function CustomStyles(){
		return false;
	}
}
