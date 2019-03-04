<?php
class ProjectHolderPage extends Page {

    private static $icon = 'mysite/images/icons/folder.png';
    private static $allowed_children = array('ProjectPage');

    private static $defaults = array(
        'ShowInMenus'  => 0,
        'ShowInSearch' => 0,
        'PostsPerPage' => 10,
    );

    private static $db = array(
        'PostsPerPage' => 'Int'
    );

    private static $has_one = array(
    );

    private static $has_many = array(
        'Filter' => 'ProjectFilter'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main',  NumericField::create('PostsPerPage','Post Per Page'));
        
        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->Filter()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'Filter',
            'Filters',
            $this->Filter(),
            $gridConfig
        );
        $fields->addFieldToTab('Root.Filter', $gridField);
        
        return $fields;
    }
}
class ProjectHolderPage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
    
}