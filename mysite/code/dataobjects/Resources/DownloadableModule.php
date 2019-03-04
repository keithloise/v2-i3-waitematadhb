<?php
class DownloadableModule extends DataObject {

    private static $default_sort = 'Sort';

    private static $db = array(
        'Title'        => 'Varchar(255)',
        'ModuleType'   => 'Enum(array("General Practice","Pharmacy"))',
        'ExternalLink' => 'Varchar(255)',
        'Sort'         => 'Int'
    );

    private static $has_one = array(
        'Image'               => 'Image',
        'File'                => 'File',
        'PageLink'            => 'SiteTree',
        'ResourcesModulePage' => 'ResourcesModulePage'
    );

    private static $has_many = array(
    );

    private static $summary_fields = array(
        'Title'      => 'File name',
        'ModuleType' => 'Module Type'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'File name'));
        $fields->addFieldToTab('Root.Main', $imagesAssets = UploadField::create('Image', 'Image'));
        $imagesAssets->setFolderName($this->DownloadablePath().'/images');
        $fields->addFieldToTab('Root.Main', $fileAssets =  UploadField::create('File', 'Downloadable File'));
        $fileAssets->setFolderName($this->DownloadablePath().'/files/modules');

        $fields->addFieldToTab('Root.Main', DropdownField::create('ModuleType', 'Module Type',  $this->dbObject('ModuleType')->enumValues()));
        $fields->addFieldToTab('Root.Main', TreeDropdownField::create('PageLinkID', 'Internal Link', 'SiteTree'));
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