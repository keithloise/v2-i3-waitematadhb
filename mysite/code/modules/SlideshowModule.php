<?php
class SlideshowModule extends Module {

    private static $singular_name = 'Slideshow';
    private static $description = "Image and Video Slideshow";

    private static $db = array(
        'SliderHeight' => 'Text',
    );

    private static $has_many = array(
        'Items' => 'SlideshowItem',
    );

    public function getModuleCMSFields(fieldList $fields){
        $gridConfig = GridFieldConfig_RecordEditor::create();

        if($this->Items()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }

        $gridField = GridField::create(
            'Items',
            'Slideshow',
            $this->Items(),
            $gridConfig
        );
        $fields->removeByName('Content');
        $fields->addFieldToTab('Root.Main', $gridField);

        $fields->addFieldToTab('Root.Main', TextField::create('SliderHeight', 'Slider Height'));
    }

    public function getVisibleItems() {
        return $this->Items()->filter('Archived', false)->sort('Sort');
    }

}