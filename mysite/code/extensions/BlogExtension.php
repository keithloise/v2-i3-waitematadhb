<?php
class BlogExtension extends DataExtension {

    private static $has_many = array(
        'Filter' => 'FilterTag'
    );

    public function updateCMSFields(FieldList $fields)
    {
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
        $fields->addFieldToTab('Root.FilterTag', $gridField);
    }
}
