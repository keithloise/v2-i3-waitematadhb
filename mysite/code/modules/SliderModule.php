<?php
class SliderModule extends Module {

    private static $singular_name = 'Slider';
    private static $description = "Image slider";

    private static $has_many = array(
        'Items' => 'SliderItem',
    );

    public function getModuleCMSFields(fieldList $fields){
        $gridConfig = GridFieldConfig_RecordEditor::create();

        if($this->Items()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }

        $gridField = GridField::create(
            'Items',
            'Sliders',
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