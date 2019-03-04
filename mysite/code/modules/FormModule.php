<?php
class FormModule extends Module {

	private static $singular_name = 'Form';
    private static $description = "Embed form (created with user defined forms) into module";

    private static $db = array(
        'Content' => 'HTMLText',
    );

    private static $has_one = array(
		'FormPage' => 'SiteTree',
	);

	public function getModuleCMSFields(fieldList $fields){
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content', 'Content'));
		$fields->addFieldToTab('Root.Main', DropdownField::create('FormPageID', 'Form page', UserDefinedForm::get()->map()));
	}

	public function ModuleForm(){
		$page = SiteTree::get()->byID($this->FormPageID);
		$controller = ModelAsController::controller_for($page);
		return $controller->Form();
	}
}