<?php
class TeamModule extends Module {

    private static $singular_name = 'People List';
    private static $description = "Team Module";

    private static $has_many = array(
        'Items' => 'TeamItem',
    );

    public function getModuleCMSFields(fieldList $fields){
        $gridConfig = GridFieldConfig_RecordEditor::create();

        if($this->Items()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
		
		$gridConfig->addComponent(new GridFieldEditableColumns());
        $gridConfig->getComponentByType('GridFieldEditableColumns')->setDisplayFields(array(
            'Archived' => array(
                'title' => 'Archive',
                'callback' => function($record, $column, $grid) {
                    return CheckboxField::create($column);
                })
        ));
		
        $gridField = GridField::create(
            'Items',
            'Team',
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