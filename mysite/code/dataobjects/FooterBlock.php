<?php
class FooterBlock extends DataObject {

    private static $db = array(
        'Title'   => 'Varchar(255)',
        'Width'   => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'Content' => 'HTMLText',
        'Sort'    => 'Int',
    );

    private static $has_one = array(
        'SiteConfig' => 'SiteConfig'
    );

    private static $default_sort = 'Sort';

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content', 'Content'));
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));
        return $fields;
    }

}