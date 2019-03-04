<?php
class SubModule extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title'        => 'Varchar(255)',
        'Icon'         => 'Varchar(255)',
        'ExternalLink' => 'Varchar(255)',
        'LinkToPage'   => 'Boolean',
        'Sort'         => 'Int'
    );

    private static $has_one = array(
        'ModuleType' => 'ModuleType',
        'File'       => 'File',
        'PageLink'   => 'SiteTree'
    );

    private static $summary_fields = array(
        'Title' => 'Module Name',
        'Icon'  => 'Icon',
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Sub Module Name'));
        $fields->addFieldToTab('Root.Main', $icon = TextField::create('Icon', 'Icon'));
        $icon->setDescription("Icons can be found in <a href='https://fontawesome.com'>fontawesome</a> Example input: fas fa-check");
        $fields->addFieldToTab('Root.Main', $fileAssets = UploadField::create('File', 'Downloadable File'));
        $fileAssets->setFolderName($this->DownloadablePath().'/files');

        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('LinkToPage', 'Link to Page'));
        $fields->addFieldToTab('Root.Main', $externalLink = TextField::create('ExternalLink', 'External Link'));
        $externalLink->setDescription("Note: If you specify an External Link, the Internal Link will be ignored.");
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort', 'Sort'));

        return $fields;
    }

    public function DownloadablePath() {
        $config = SiteConfig::current_site_config();
        $folder = $config->AssetsFolder;
        if ($folder) {
            return $config->AssetsFolder;
        } else {
            return 'default';
        }
    }
}