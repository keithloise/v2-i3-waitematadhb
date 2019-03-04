<?php
class MultiContentPage extends Page {
    private static $icon = 'mysite/images/icons/multicontentpage.png';
    private static $db = array(
    );

    private static $has_many = array(
        'Modules' => 'Module'
    );

    public function getVisibleModules() {
        return $this->Modules()->filter('Archived', false)->sort('Sort');
    }

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        // Tidy admin to remove features we don't need
        $fields->removeByName(array('Content', 'PublishingSchedule'));

        $modules = $this->Modules();
        $gridConfig = GridFieldConfig_RecordEditor::create(999);
        $gridConfig->addComponent(new GridFieldOrderableRows());
        $gridConfig->addComponent(new GridFieldEditableColumns());

        $gridConfig->getComponentByType('GridFieldEditableColumns')->setDisplayFields(array(
            'SectionContWidth' => array(
                'title' => 'Width',
                'callback' => function($record, $column, $grid) {
                    $field = DropdownField::create($column, $column, singleton('Module')->dbObject('SectionContWidth')->enumValues());
                    return $field;
                }),
            'Archived' => array(
                'title' => 'Archive',
                'callback' => function($record, $column, $grid) {
                    return CheckboxField::create($column);
                })
        ));

        $gridField = GridField::create(
            'Modules',
            'Module',
            $modules,
            $gridConfig
        );

        $fields->addFieldToTab('Root.Main', $gridField, 'Metadata');

        return $fields;
    }
}
class MultiContentPage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );

}