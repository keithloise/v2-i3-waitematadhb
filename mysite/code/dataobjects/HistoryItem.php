<?php
class HistoryItem extends DataObject {

    private static $db = array(
        'Title'   => 'Varchar(255)',
        'Content' => 'HTMLText',
        'Width'   => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'BtnNav'  => 'Boolean',
        'Sort'    => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'HistoryPage' => 'HistoryPage',
    );

    private static $summary_fields = array(
        'Title' => 'Title'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content', 'Content'));
        $fields->addFieldToTab('Root.Main', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('BtnNav', 'Enable Button Nav'));
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort'));


        return $fields;
    }

}