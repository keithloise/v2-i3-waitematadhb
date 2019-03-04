<?php
class Navigation extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title'  => 'Varchar(255)',
        'Sort'   => 'Int'
    );

    private static $has_one = array(
        'SiteConfig' => 'SiteConfig'
    );

    private static $has_many = array(
        'Menu' => 'NavigationItem'
    );

    private static $summary_fields = array(
        'Title' => 'Navigation Name'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->removeByName(array('SiteConfigID', 'Sort'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Menu Name'));

        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->Menu()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'Menu',
            'Menu',
            $this->Menu(),
            $gridConfig
        );
        $fields->removeFieldFromTab("Root","Menu");
        $fields->addFieldToTab('Root.Main', $gridField);

        return $fields;
    }
}