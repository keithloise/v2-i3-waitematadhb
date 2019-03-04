<?php
class ProfilePage extends Page {
    private static $icon = 'mysite/images/icons/user.png';
    private static $db = array(
        'Position'   => 'Varchar(255)'
        //'Department' => 'Enum(array("i3","eCALD","SIP"))'
    );

    private static $has_one = array(
        'ProfileImage'  => 'Image',
        'ProfileImage2' => 'Image',
        'ProfileImage3' => 'Image'
    );

    private static $has_many = array(
        'SocialItem' => 'SocialNetworkItem'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', $profileImage1 =  UploadField::create('ProfileImage','Profile Image'),'Content');
        $profileImage1->setFolderName($this->pagePath().'/images/profileImage');

        $fields->addFieldToTab('Root.Main', $profileImage2 =  UploadField::create('ProfileImage2','Profile Image 2'),'Content');
        $profileImage2->setFolderName($this->pagePath().'/images/profileImage');

        $fields->addFieldToTab('Root.Main', $profileImage3 =  UploadField::create('ProfileImage3','Profile Image 3'),'Content');
        $profileImage3->setFolderName($this->pagePath().'/images/profileImage');

        $fields->addFieldToTab('Root.Main', TextField::create('Position', 'Position'),'Content');

        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->SocialItem()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'SocialItem',
            'Socials',
            $this->SocialItem(),
            $gridConfig
        );
        $fields->removeFieldFromTab("Root","SocialItem");
        $fields->addFieldToTab('Root.Social', $gridField);

        //$fields->addFieldToTab('Root.Main', DropdownField::create('Department', 'Department',  $this->dbObject('Department')->enumValues()),'Content');

        return $fields;
    }

    public function pagePath() {
        $config = SiteConfig::current_site_config();
        $folder = $config->AssetsFolder;
        if ($folder) {
            return $config->AssetsFolder;
        } else {
            return 'default';
        }
    }
}
class ProfilePage_Controller extends Page_Controller {
    private static $allowed_actions = array (
    );
}