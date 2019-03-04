<?php
class IconBoxItem extends DataObject {

    private static $db = array(
        'Title'           => 'Text',
        'Content'         => 'HTMLText',
        'ContentSize'     => 'Int',
        'ContentColor'    => 'Color',
        'ContHeaderColor' => 'Color',
        'ContHeaderSize'  => 'Int',
        'Alignment'       => 'Enum(array("align-center","align-left","align-right"))',
        'Width'           => 'Enum(array("size1of1","size1of2","size1of3", "size1of4", "size1of5", "size2of3", "size2of5","size3of4","size3of5","size4of5"))',
        'BlockPadding'    => 'Text',
        'BlockBgColor'    => 'Color',
        'BlockBgColor2'   => 'Color',
        'BadgeIcon'       => 'Text',
        'Animate'         => 'Varchar(255)',
        'AnimateDelays'   => 'Varchar(255)',
        'AnimateSpeeds'   => 'Varchar(255)',
        'ExternalLink'    => 'Varchar(255)',
        'ShowHeader'      => 'Boolean',
        'Archived'        => 'Boolean',
        'Sort'            => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'Parent'   => 'IconBoxModule',
        'PageLink' => 'SiteTree',
    );

    private static $summary_fields = array(
        'Title'            => 'Title',
        'Width'            => 'Width',
        'ArchivedReadable' => 'Status'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('ShowHeader', 'Show Title'));
        $fields->addFieldToTab('Root.Main', DropdownField::create('Alignment', 'Title header Alignment',  $this->dbObject('Alignment')->enumValues()));
        $fields->addFieldToTab('Root.Main', $badgeIcon = TextField::create('BadgeIcon', 'Badge Icon'));
        $badgeIcon->setDescription("Icons can be found in <a href='https://fontawesome.com'>fontawesome</a> E.g. fas fa-check");

        $fields->addFieldToTab('Root.Main', SliderField::create('ContHeaderSize', 'Content Header size', 10, 70));
        $fields->addFieldToTab('Root.Main', ColorField::create('ContHeaderColor', 'Content Header color'));

        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content'));
        $fields->addFieldToTab('Root.Main', SliderField::create('ContentSize', 'Content Font size', 10, 70));
        $fields->addFieldToTab('Root.Main', ColorField::create('ContentColor', 'Content Font color'));
        
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', $externalLink = TextField::create('ExternalLink', 'External Link'));
        $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");

        $fields->addFieldToTab('Root.Main', $pageLink = CheckboxField::create('Archived'));
        $fields->addFieldToTab('Root.Main', new HiddenField('Sort', 'Sort'));

        $fields->addFieldToTab('Root.Settings', DropdownField::create('Width', 'Width',  $this->dbObject('Width')->enumValues()));
        $fields->addFieldToTab('Root.Settings', ColorField::create('BlockBgColor', 'Block Bg Color'));
        $fields->addFieldToTab('Root.Settings', $bgcolor2 = ColorField::create('BlockBgColor2', 'Block Bg Color 2'));
        $bgcolor2->setDescription("Add a different color to make a Gradient Bg");
        $fields->addFieldToTab('Root.Settings', $blockpadding = TextField::create('BlockPadding', 'Block Padding'));
        $blockpadding->setDescription("Note: This will give paddings on the entire side of block");

        $fields->addFieldToTab('Root.Animation', DropdownField::create('Animate', 'Animation', Animation::get()->map('Title', 'Title'))->setEmptyString('(Select one)'));
        $fields->addFieldToTab('Root.Animation', DropdownField::create('AnimateDelays', 'Animation Delay', AnimationDelay::get()->map('Title', 'DelayTime'))->setEmptyString('(Select one)'));
        $fields->addFieldToTab('Root.Animation', DropdownField::create('AnimateSpeeds', 'Animation Speed', AnimationSpeed::get()->map('Title', 'Title'))->setEmptyString('(Select one)'));

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