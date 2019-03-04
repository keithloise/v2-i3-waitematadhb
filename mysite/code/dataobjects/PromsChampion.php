<?php
class PromsChampion extends DataObject {

    static $default_sort = 'Sort ASC';

    private static $db = array(
        'Title' => 'Text',
        'Email' => 'Text',
        'Sort'  => 'Int'
    );

    private static $has_one = array(
        'PromsUser'  => 'PromsUser',
    );

    public static $summary_fields = array(
        'Title' => 'Name',
        'Email' => 'Email',
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('Title', 'Name'));
        $fields->addFieldToTab('Root.Main', new TextField('Email', 'Email'));

        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        return $fields;
    }
}