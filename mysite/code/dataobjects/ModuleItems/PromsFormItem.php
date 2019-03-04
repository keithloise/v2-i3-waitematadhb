<?php
class PromsFormItem extends DataObject {

    private static $db = array(
        'Title'       => 'Varchar(255)',
        'Question'    => 'HTMLText',
        'HidQuestion' => 'Text',
        'InputType'   => 'Enum(array("Text","Textarea","Email", "Password","MultipleText"))',
        'TextLabel'   => 'Varchar(255)',
        'Placeholder' => 'Varchar(255)',
        'LoginForm'   => 'Boolean',
        'isInline'    => 'Boolean',
        'Archived'    => 'Boolean',
        'Sort'        => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'Parent' => 'PromsFormModule'
    );

    private static $summary_fields = array(
        'Title'            => 'Question',
        'InputType'        => 'Input type',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Question', 'Question'));
        $fields->addFieldToTab('Root.Main', DropdownField::create('InputType', 'Input Type',  $this->dbObject('InputType')->enumValues()));

        $fields->addFieldToTab('Root.Main', TextField::create('TextLabel', 'TextLabel'));
        $fields->addFieldToTab('Root.Main', TextField::create('Placeholder', 'Placeholder'));


        $fields->addFieldToTab('Root.Main', TextField::create('HidQuestion', 'Hidden Question'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('isInline', 'Make inline block'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('LoginForm', 'Login form?'));
        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort'));

        return $fields;
    }

    public function ArchivedReadable(){
        if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
        return _t('GridField.Live', 'Live');
    }

    public function canCreate($member = null) {
        return $this->Parent()->canCreate($member);
    }

    public function canEdit($member = null) {
        return $this->Parent()->canEdit($member);
    }

    public function canDelete($member = null) {
        return $this->Parent()->canDelete($member);
    }

    public function canView($member = null) {
        return $this->Parent()->canView($member);
    }
}