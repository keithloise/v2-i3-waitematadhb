<?php
class ProjectPage extends MultiContentPage {
    private static $db = array(
        'StartDate' => 'SS_Datetime',
        'EndDate'   => 'SS_Datetime',
    );

    private static $has_one = array(
        'ProjectImg' => 'Image'
    );

    private static $has_many = array(
    );
    
    private static $many_many = array(
        'FilterItems' => 'FilterItem',
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', $projectImage = UploadField::create('ProjectImg','Project Image'),'Modules');
        $projectImage->setFolderName($this->pagePath().'/images/projectImages');
            
            $fields->addFieldToTab('Root.Main', TagField::create(
            'FilterItems',
            'Tags',
            FilterItem::get(),
            $this->FilterItems()
            )
            ->setShouldLazyLoad(true) //tags should be lazy loaded
            ->setCanCreate(true), 'Modules');   
           
            $fields->addFieldToTab(
                'Root.Main',
                ToggleCompositeField::create('ProjectDetails', 'Project Details',
                    array(
                        DateField::create('StartDate')->setConfig('showcalendar', true),
                        DateField::create('EndDate')->setConfig('showcalendar', true)
                    )
                )->setHeadingLevel(4),
                'Modules'
            );

        return $fields;
    }
    
    function getParentPageID() {
        return $this->Parent()->ID;
    }
    
    function getParentProjectFilter() {
        $projectFilter = ProjectFilter::get()->filter(array('ProjectHolderPageID' => $this->ParentPageID));
        
        return $projectFilter->ID;
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
class ProjectPage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
}