<?php
class AnimationSpeed extends DataObject {

    static $default_sort = 'Sort';

    private static $db = array(
        'Title'     => 'Varchar(255)',
        'SpeedTime' => 'Varchar(255)',
        'Sort'      => 'Int'
    );
    public static $summary_fields = array(
        'Title'     => 'Speed',
        'SpeedTime' => 'Speed Time'
    );

    private static $has_one = array(
        'SiteConfig' => 'SiteConfig',
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName(array('SiteConfigID', 'Sort'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));
        $fields->addFieldsToTab('Root.Main', new TextField('Title', 'Speed'));
        $fields->addFieldsToTab('Root.Main', new TextField('SpeedTime', 'Speed Time'));

        return $fields;
    }
}