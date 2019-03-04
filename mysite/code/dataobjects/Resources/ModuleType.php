<?php
class ModuleType extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title'      => 'Varchar(255)',
        'Icon'       => 'Varchar(255)',
        'LinkToPage' => 'Boolean',
        'Sort'       => 'Int'
    );

    private static $has_one = array(
        'ResourcesType' => 'ResourcesType',
        'PageLink'      => 'SiteTree',
        'FeaturedImage' => 'Image'
    );

    private static $has_many = array(
        'SubModule' => 'SubModule'
    );

    private static $summary_fields = array(
        'Title'          => 'Module Type',
        'CountSubModule' => 'Number of Sub-Modules',
        'Icon'           => 'Icon',
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Module Type'));
        $fields->addFieldToTab('Root.Main', $icon = TextField::create('Icon', 'Icon'));
        $icon->setDescription("Icons can be found in <a href='https://fontawesome.com'>fontawesome</a> Example input: fas fa-check");
        $fields->addFieldToTab('Root.Main', $featuredImage = UploadField::create('FeaturedImage','Featured Image'));
        $featuredImage->setFolderName($this->pagePath().'/images');

        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
        $fields->addFieldToTab('Root.Main',$externalLink = CheckboxField::create('LinkToPage', 'External Link'));
        $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");

        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->SubModule()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'SubModule',
            'Sub Module',
            $this->SubModule(),
            $gridConfig
        );

        $fields->removeFieldFromTab("Root","SubModule");
        $fields->addFieldToTab('Root.Main', $gridField);

        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));

        return $fields;
    }

    public function getCountSubModule() {
        $subModule = $this->SubModule()->count();

        return $subModule;
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