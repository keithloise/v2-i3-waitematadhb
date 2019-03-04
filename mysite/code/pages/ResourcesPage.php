<?php
class ResourcesPage extends Page {
    private static $allowed_children = array('ResourcesModulePage');
    private static $db = array(
    );

    private static $has_one = array(
    );

    private static $has_many = array(
        'Resources'       => 'ResourcesType',
        'ExperienceLevel' => 'ExperienceLevel'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->Resources()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'Resources',
            'Resources',
            $this->Resources(),
            $gridConfig
        );
        $fields->addFieldToTab('Root.Resources', $gridField);

        $gridELConfig = GridFieldConfig_RecordEditor::create();
        if($this->Resources()->Count()){
            $gridELConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridELConfigField = GridField::create(
            'ExperienceLevel',
            'Experience Level',
            $this->ExperienceLevel(),
            $gridELConfig
        );
        $fields->addFieldToTab('Root.Resources', $gridELConfigField);

        return $fields;
    }
}
class ResourcesPage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
}