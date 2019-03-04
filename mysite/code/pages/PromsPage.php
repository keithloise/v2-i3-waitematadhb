<?php
class PromsPage extends MultiContentPage  {
    private static $icon = 'mysite/images/icons/template.png';
    private static $db = array(
        'EnablePromsHeader' => 'Boolean',
        'PageSession'       => 'Varchar(255)',
        'ProgressBar'       => 'Enum(array("progress-start","progress-quarter","progress-half", "progress-lastquarter", "progress-final"))',
        'VideoBanner'       => 'Boolean'
    );

    private static $has_one = array(
        'VideoPoster' => 'Image'
    );

    private static $has_many = array(
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.PageSettings', $video_poster = UploadField::create('VideoPoster', 'Video Poster'), 'PageBackground');
        $video_poster->setDescription('Note: Please add video poster when you upload mp4 file type on Page hero banner');
        $video_poster->setFolderName($this->pagePath().'/images/videoposter');

        $fields->addFieldToTab('Root.PageSettings', CheckboxField::create('EnablePromsHeader', 'Enable Proms Header'));
        $fields->addFieldToTab('Root.PageSettings', CheckboxField::create('VideoBanner', 'Enable Video Banner'));
        $fields->addFieldToTab('Root.PageSession', $sessionID =  TextField::create('PageSession', 'Page Session ID'));
        $fields->addFieldToTab('Root.PageSession', DropdownField::create('ProgressBar', 'Progress Bar',  $this->dbObject('ProgressBar')->enumValues()));

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
class PromsPage_Controller extends Page_Controller {
    private static $allowed_actions = array (

    );
}