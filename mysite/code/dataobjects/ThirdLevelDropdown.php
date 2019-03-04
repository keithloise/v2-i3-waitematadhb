<?php
class ThirdLevelDropdown extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title'        => 'Varchar(255)',
        'ExternalLink' => 'Varchar(255)',
        'Sort'         => 'Int'
    );

    private static $has_one = array(
       'DropdownMenu' => 'DropdownMenu',
       'PageLink'     => 'SiteTree'
    );
    
    private static $summary_fields = array(
        'Title' => 'Menu Name'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Menu Name'));
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', $externalLink = TextField::create('ExternalLink','External Link'));
        $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));
      
        return $fields;
    }
}