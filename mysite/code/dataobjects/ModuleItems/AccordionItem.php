<?php
class AccordionItem extends DataObject {

    private static $db = array(
        'Title'    => 'Text',
        'Content'  => 'HTMLText',
        'Archived' => 'Boolean',
        'Sort'     => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'Parent' => 'AccordionModule',
    );

    private static $summary_fields = array(
        'Title'            => 'Title',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content', 'Content'));

        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        return $fields;
    }

    public function Link(){
        if($this->ExternalLink){
            return $this->ExternalLink;
        }
        if($this->PageLinkID){
            return $this->PageLink()->Link();
        }
        return false;
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