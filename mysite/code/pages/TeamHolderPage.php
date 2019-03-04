<?php
class TeamHolderPage extends Page {

    private static $icon = 'mysite/images/icons/people.png';
    private static $allowed_children = array('ProfilePage');

    private static $db = array(
        'i3Header'     => 'HTMLText',
        'ecaldHeader'  => 'HTMLText'
    );

    private static $has_one = array(
    );

    private static $has_many = array(
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.TeamHeader',  HtmlEditorField::create('i3Header','i3 Header'));
        $fields->addFieldToTab('Root.TeamHeader',  HtmlEditorField::create('ecaldHeader','eCald Header'));

        return $fields;
    }

}
class TeamHolderPage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
}