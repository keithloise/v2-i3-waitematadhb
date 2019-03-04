<?php
class BlogItem extends DataObject {

    private static $db = array(
        'Title'        => 'Varchar(255)',
        'LinkPage'     => 'Boolean',
        'ShowContent'  => 'Boolean',
        'Archived'     => 'Boolean',
        'Width'        => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'Animate'      => 'Varchar(255)',
        'AnimateDelay' => 'Varchar(255)',
        'AnimateSpeed' => 'Varchar(255)',
        'Sort'         => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'Parent'    => 'BlogModule',
        'PageLink'  => 'SiteTree'
    );

    private static $summary_fields = array(
        'PageLink.Title'   => 'Title',
        'Width'            => 'Width',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.OptionalContent', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Select Page', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('ShowContent','Show Content'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('LinkPage','Enable Link'));
        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        //Animation
        $animation = DropdownField::create('Animate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animation);
        $animationDelay = DropdownField::create('AnimateDelay', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animationDelay);
        $animationSpeed = DropdownField::create('AnimateSpeed', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)');
        $fields->addFieldToTab('Root.Animation', $animationSpeed);

        return $fields;
    }

    public function ArchivedReadable() {
        if($this->Archived == 1) return _t('GridField.Archived', 'Archived');
        return _t('GridField.Live', 'Live');
    }

    public function onBeforeWrite() {
        parent::onBeforeWrite();
        $this->Title = $this->PageLink()->Title;
    }

    public function onAfterWrite() {
        parent::onAfterWrite();
        $this->Title = $this->PageLink()->Title;
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