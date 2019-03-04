<?php
class ProjectFilter extends DataObject {

    private static $db = array(
        'Title'   => 'Varchar(255)',
        'Filters' => 'Text',
        'Sort'    => 'Int'
    );

    private static $default_sort = 'Sort';

    private static $has_one = array(
        'ProjectHolderPage' => 'ProjectHolderPage'
    );

    private static $has_many = array(
       //'FilterItem' => 'FilterItem',
    );

    private static $summary_fields = array(
        'Title' => 'Filter Name'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Filter Name'));
        
        $fields->addFieldToTab('Root.Main', $filters = TextareaField::create('Filters','Filters'));
        $filters->setDescription('Put each filter declaration on a new line');

      /*
        $gridConfig = GridFieldConfig_RecordEditor::create();
        if($this->FilterItem()->Count()){
            $gridConfig->addComponent(new GridFieldOrderableRows());
        }
        $gridField = GridField::create(
            'FilterItem',
            'Filter Items',
            $this->FilterItem(),
            $gridConfig
        );
        
        $fields->removeFieldFromTab("Root","FilterItem");
        $fields->addFieldToTab('Root.Main', $gridField);
      */
        $fields->addFieldToTab('Root.Main', HiddenField::create('Sort'));

        return $fields;
    }
    
    public function getFilterList(){
        $items = explode("\n", $this->Filters);
        $filterlist = new ArrayList();
        foreach($items as $item) {
            $filterlist->push(
                new ArrayData(array('filter' => $item))
            );
        }
        return $filterlist;
	}
}