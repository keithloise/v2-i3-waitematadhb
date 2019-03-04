<?php
class ResourcesModulePage extends Page {
    private static $db = array(
    );

    private static $has_one = array(
        'FeaturedImage' => 'Image'
    );

    private static $has_many = array(
        'DownloadableModules' => 'DownloadableModule'
    );

    private static $many_many = array(
        'ModuleType'      => 'ResourcesType',
        'ExperienceLevel' => 'ExperienceLevel'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', $featuredimage = UploadField::create('FeaturedImage', 'Featured Image'),"Content");
        $featuredimage->setFolderName($this->pagePath().'/images');
        
        if($this->ParentPageID) {
            $fields->addFieldToTab('Root.Main', ListBoxField::create('ModuleType', 'Select module type',
            ResourcesType::get()->filter(array('ResourcesPageID' => $this->ParentPageID))->map("ID", "Title")->toArray())->setMultiple(true),"Content");

            $fields->addFieldToTab('Root.Main', ListBoxField::create('ExperienceLevel', 'Experience Level',
            ExperienceLevel::get()->filter(array('ResourcesPageID' => $this->ParentPageID))->map("ID", "Title")->toArray())->setMultiple(true),"Content"); 
        }
        
        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->DownloadableModules()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'DownloadableModules',
            'Downloadable Modules',
            $this->DownloadableModules(),
            $gridConfig
        );
        $fields->addFieldToTab('Root.Main', $gridField,"Content");

        return $fields;
    }
    
    function getParentPageID() {
       return $this->Parent()->ID;
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
class ResourcesModulePage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
}