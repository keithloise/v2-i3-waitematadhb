<?php
class PromsChecklist extends DataObject {

    static $default_sort = 'Sort ASC';

    private static $db = array(
        'Title'         => 'Text',
        'PromsQuestion' => 'Text',
        'PromsAnswer'   => 'Text',
        'Sort'          => 'Int'
    );

    private static $has_one = array(
        'PromsUser'  => 'PromsUser',
        'ScreenShot' => 'Image'
    );

    public static $summary_fields = array(
        'Title'         => 'Step',
        'PromsQuestion' => 'Question',
        'PromsAnswer'   => 'Answer'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('Title', 'Step'));
        $fields->addFieldToTab('Root.Main', new TextareaField('PromsQuestion', 'Question'));
        $fields->addFieldToTab('Root.Main', new TextareaField('PromsAnswer', 'Answer'));
        $fields->addFieldToTab('Root.Main', UploadField::create('ScreenShot', 'Screen Shot'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        return $fields;
    }
}