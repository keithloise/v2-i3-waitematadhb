<?php
class FilterTag extends DataObject {

    private static $db = array(
        'Title'  => 'Varchar(255)',
        'Sort'   => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'BlogExtension' => 'BlogExtension',
    );

    private static $has_many = array(
        'Filter' => 'Filters',
    );

    private static $summary_fields = array(
        'Title' => 'Filter Tag'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Filter Tag'));

        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->Filter()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'Filter',
            'Filter',
            $this->Filter(),
            $gridConfig
        );
        
        $fields->addFieldToTab('Root.FilterTags', $gridField);
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort'));

        return $fields;
    }

}