<?php

class PromsAdmin extends ModelAdmin {

    private static $menu_icon = 'mysite/images/icons/people.png';
    private static $managed_models = array(
        'PromsUser' => array(
            'title' => 'Proms Users'
        )
    );
    private static $url_segment = 'promsusers';
    private static $menu_title = 'Proms Users';
}