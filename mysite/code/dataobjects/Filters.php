<?php
class Filters extends DataObject {

    private static $db = array(
        'Title'  => 'Varchar(255)',
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'FilterTag' => 'FilterTag',
    );

    private static $summary_fields = array(
        'Title' => 'Filter Name'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Filter Tag'));

        return $fields;
    }

}