<?php
class ResourcesType extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title' => 'Varchar(255)',
        'Icon'  => 'Varchar(255)',
        'Sort'  => 'Int'
    );

    private static $has_one = array(
        'ResourcesPage' => 'ResourcesPage',
        'PageLink'      => 'SiteTree'
    );

    private static $has_many = array(
        'ModuleType' => 'ModuleType'
    );

    private static $summary_fields = array(
        'Title'        => 'Resources',
        'CountModules' => 'Number of Modules',
        'Icon'         => 'Icon'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Resources Name'));
        $fields->addFieldToTab('Root.Main', $icon = TextField::create('Icon', 'Icon'));
        $icon->setDescription("Icons can be found in <a href='https://fontawesome.com'>fontawesome</a> Example input: fas fa-check");
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Select page to link', 'SiteTree'));

        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->ModuleType()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'ModuleType',
            'Module Type',
            $this->ModuleType(),
            $gridConfig
        );
        $fields->removeFieldFromTab("Root","ModuleType");
        $fields->addFieldToTab('Root.Main', $gridField);

        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));

        return $fields;
    }

    public function getCountModules() {
        $moduleType = $this->ModuleType()->count();

        return $moduleType;
    }
}