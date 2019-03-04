<?php
class Social extends DataObject {

    private static $db = array(
        'Title'       => 'Varchar(255)',
        'SocialIcon'  => 'Varchar(255)',
        'SocialColor' => 'Color'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'ProfilePage' => 'ProfilePage',
    );

    private static $summary_fields = array(
        'Title' => 'Text'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Text'));
        $fields->addFieldToTab('Root.Main', $social_icon = TextField::create('SocialIcon', 'Social Icon'));
        $fields->addFieldToTab('Root.Main', ColorField::create('SocialColor', 'Social theme color'));

        return $fields;
    }

}