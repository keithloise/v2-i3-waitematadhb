<?php
class ImageWithTextOverlayModule extends Module {

    private static $singular_name = 'Image With Text Overlay';
    private static $description = "Image with text Overlay";

    private static $has_many = array(
        'Items' => 'ImageWithTextOverlayItem',
    );

    public function getModuleCMSFields(fieldList $fields){
        $gridConfig = GridFieldConfig_RecordEditor::create();

        if($this->Items()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }

        $gridConfig->addComponent(new GridFieldEditableColumns());
        $gridConfig->getComponentByType('GridFieldEditableColumns')->setDisplayFields(array(
            'Width' => array(
                'title' => 'Width',
                'callback' => function($record, $column, $grid) {
                    $field = DropdownField::create($column, $column, singleton('ImageWithTextOverlayItem')->dbObject('Width')->enumValues());
                    return $field;
                }),
            'Archived' => array(
                'title' => 'Archive',
                'callback' => function($record, $column, $grid) {
                    return CheckboxField::create($column);
                })
        ));

        $gridField = GridField::create(
            'Items',
            'Image With Text Overlay Items',
            $this->Items(),
            $gridConfig
        );
        $fields->removeByName('Content');
        $fields->addFieldToTab('Root.Main', $gridField);
    }

    public function getVisibleItems() {
        return $this->Items()->filter('Archived', false)->sort('Sort');
    }

}