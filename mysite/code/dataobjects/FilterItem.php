<?php
class FilterItem extends DataObject {

    private static $db = array(
        'Title' => 'Varchar(255)',
        'Sort'  => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'ProjectFilter' => 'ProjectFilter',
    );

    private static $summary_fields = array(
        'Title' => 'Filter Name'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Filter Tag'));
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort'));

        return $fields;
    }

}