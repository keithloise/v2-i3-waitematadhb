<?php
class FeedModule extends Module {

    private static $singular_name = 'Feed';
    private static $description = "Feed Module";

    public function getModuleCMSFields(fieldList $fields){
    }

    public function getBlogPost(){
        return BlogPost::get()->sort('PublishDate','asc');
    }
}