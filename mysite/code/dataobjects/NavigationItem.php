<?php
class NavigationItem extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title'        => 'Varchar(255)',
        'ExternalLink' => 'Varchar(255)',
        'Sort'         => 'Int'
    );

    private static $has_one = array(
        'Navigation' => 'Navigation',
        'PageLink'   => 'SiteTree'
    );
    
    private static $has_many = array(
        'DropdownMenu' => 'DropdownMenu'
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
	
	    $gridConfig = GridFieldConfig_RecordEditor::create();
	        if($this->DropdownMenu()->Count()){
	            $gridConfig->addComponent(new GridFieldOrderableRows());
	        }
        $gridField = GridField::create(
            'DropdownMenu',
            'Dropdown Menu',
            $this->DropdownMenu(),
            $gridConfig
        );
        $fields->removeFieldFromTab("Root","DropdownMenu");
        $fields->addFieldToTab('Root.Main', $gridField);

        return $fields;
    }
}