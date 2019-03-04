<?php
class HistoryPage extends Page {
    private static $icon = 'mysite/images/icons/globe.png';
    private static $db = array(
    );

    private static $has_one = array(
    );

    private static $has_many = array(
        'HistoryItem' => 'HistoryItem'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->HistoryItem()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'HistoryItem',
            'History Items',
            $this->HistoryItem(),
            $gridConfig
        );
        $fields->addFieldToTab('Root.Main', $gridField,'Content');

        return $fields;
    }
}
class HistoryPage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
}