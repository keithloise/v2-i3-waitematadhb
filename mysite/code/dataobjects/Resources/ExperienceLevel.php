<?php
class ExperienceLevel extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title' => 'Varchar(255)',
        'Sort'  => 'Int'
    );

    private static $has_one = array(
        'ResourcesPage' => 'ResourcesPage'
    );

    private static $has_many = array(
    );

    private static $summary_fields = array(
        'Title' => 'Experience Level'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Level'));
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));

        return $fields;
    }
}