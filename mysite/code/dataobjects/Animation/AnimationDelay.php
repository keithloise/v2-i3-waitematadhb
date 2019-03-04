<?php
class AnimationDelay extends DataObject {

    static $default_sort = 'Sort';

    private static $db = array(
        'Title'     => 'Varchar(255)',
        'DelayTime' => 'Varchar(255)',
        'Sort'      => 'Int'
    );
    public static $summary_fields = array(
        'Title'     => 'Delay Name',
        'DelayTime' => 'Delay Time'
    );

    private static $has_one = array(
        'SiteConfig' => 'SiteConfig',
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName(array('SiteConfigID', 'Sort'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));
        $fields->addFieldsToTab('Root.Main', new TextField('Title', 'Delay Name'));
        $fields->addFieldsToTab('Root.Main', new TextField('DelayTime', 'Delay Time'));

        return $fields;
    }
}