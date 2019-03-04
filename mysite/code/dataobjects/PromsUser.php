<?php
class PromsUser extends DataObject {

    static $default_sort = 'Sort ASC';

    private static $db = array(
        'Title'      => 'Text',
        'Email'      => 'Text',
        'Password'   => 'Text',
        'Session'    => 'Text',
        'SessionURL' => 'Text',
        'Sort'       => 'Int'
    );

    private static $has_one = array(
    );

    private static $has_many = array(
        'PromsChecklist' => 'PromsChecklist',
        'PromsChampions' => 'PromsChampion'
    );
    public static $summary_fields = array(
        'Title'   => 'Full name',
        'Email'   => 'Email',
        'Session' => 'Current Session'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('Title', 'Full name'));
        $fields->addFieldToTab('Root.Main', new TextField('Email', 'Email'));
        $fields->addFieldToTab('Root.Main', new TextField('Password', 'Password'));
        $fields->addFieldToTab('Root.Main', new ReadonlyField('Session', 'Current Session'));
        $fields->addFieldToTab('Root.Main', new ReadonlyField('SessionURL', 'Session URL'));

       $gridConfig = GridFieldConfig_RecordEditor::create();
       if($this->PromsChecklist()->Count()){
           $gridConfig->addComponent(new GridFieldOrderableRows());
       }
       $gridField = GridField::create(
           'PromsChecklist',
           'Checklist',
           $this->PromsChecklist(),
           $gridConfig
       );

       $fields->removeFieldFromTab("Root","PromsChecklist");
       $fields->addFieldToTab('Root.Main', $gridField);

        $gridConfig_champ = GridFieldConfig_RecordEditor::create();
        if($this->PromsChampions()->Count()){
            $gridConfig_champ->addComponent(new GridFieldOrderableRows());
        }
        $gridField_champ = GridField::create(
            'PromsChampions',
            'Proms Champions',
            $this->PromsChampions(),
            $gridConfig_champ
        );

        $fields->removeFieldFromTab("Root","PromsChampions");
        $fields->addFieldToTab('Root.Main', $gridField_champ);



        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        return $fields;
    }
}