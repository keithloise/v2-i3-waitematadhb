<?php
class AjaxController extends AbstractApiController
{
    private static $allowed_actions = array(
        'connect',
        'promschampionform',
        'promsquestionform',
        'promscontinuelater',
        'promsrelogin',
        'getpromsresult',
    );

    public function connect(SS_HTTPRequest $request)
    {
        $data_exist = false;
        $output     = array();
        $username   = $request->postVar('username');
        $email      = $request->postVar('email');
        $emailValid = $request->postVar('emailValidate');

        if (!$username) {
            $this->setLastError('Please enter your fullname.', 'username');
            return $this->jsonOutput();
        }

        if (!$email) {
            $this->setLastError('Please enter you email.', 'email');
            return $this->jsonOutput();
        }

        if ($emailValid == "false") {
            $this->setLastError('Please enter your waitematadhb email.', 'email');
            return $this->jsonOutput();
        }

        //Check Existing User
        $users = PromsUser::get();

        foreach ($users as $user) {
            if ($user->Email == $email) {
                $data_exist = true;
            }
        }

        if($data_exist) {
            $this->setLastError('Email already exist', 'email');
            return $this->jsonOutput();
        } else {
            $PromUser = new PromsUser();
            $PromUser->Title = $username;
            $PromUser->Email = $email;
            $PromUser->write();

            $filter_users = $users->filter('Email', $email);

            foreach($filter_users as $filtered_user) {
                $output = array (
                    'id'          => $filtered_user->ID,
                    'name'        => $filtered_user->Title,
                    'email'       => $filtered_user->Email
                );
            }

            return $this->jsonOutput($output);
        }
    }

    public function promschampionform(SS_HTTPRequest $request)
    {
        $id       = $request->postVar('id');
        $username = $request->postVar('username');
        $email    = $request->postVar('email');
        $nextURL  = $request->postVar('nextURL');

        $output = array();

        //get User
        $users = PromsUser::get();

        foreach ($users as $user) {
            if ($user->ID == $id) {
               $user->SessionURL = $nextURL;
               $user->write();
            }
        }

        $PromsChampion = new PromsChampion();
        $PromsChampion->Title = $username;
        $PromsChampion->Email = $email;
        $PromsChampion->PromsUserID  = $id;
        $PromsChampion->write();

        $output = array (
            'sessionUrl' => $nextURL
        );

        return $this->jsonOutput($output);
    }

    public function promsquestionform(SS_HTTPRequest $request)
    {
        $id = $request->postVar('id');
        $question   = $request->postVar('question');
        $answer     = $request->postVar('answer');
        $pagetitle  = $request->postVar('page_title');
        $nextURL    = $request->postVar('nextURL');

        //get User
        $users = PromsUser::get();

        foreach ($users as $user) {
            if ($user->ID == $id) {
                $user->SessionURL = $nextURL;
                $user->write();
            }
        }

        $PromsQuestion = new PromsChecklist();
        $PromsQuestion->Title         = $pagetitle;
        $PromsQuestion->PromsQuestion = $question;
        $PromsQuestion->PromsAnswer   = $answer;
        $PromsQuestion->PromsUserID   = $id;
        $PromsQuestion->write();

        return $this->jsonOutput();
    }

    public function promscontinuelater(SS_HTTPRequest $request)
    {
        $id        = $request->postVar('id');
        $pagetitle = $request->postVar('page_title');
        $question  = $request->postVar('question');
        $answer    = $request->postVar('answer');

        $PromsQuestion = new PromsChecklist();
        $PromsQuestion->Title         = $pagetitle;
        $PromsQuestion->PromsQuestion = $question;
        $PromsQuestion->PromsAnswer   = $answer;
        $PromsQuestion->PromsUserID   = $id;
        $PromsQuestion->write();

        return $this->jsonOutput();
    }

    public function promsrelogin(SS_HTTPRequest $request)
    {
        $data_exist = false;
        $output   = array();
        $email    = $request->postVar('email');
        $username = $request->postVar('username');

        if (!$username) {
            $this->setLastError('Please enter your fullname.', 'username');
            return $this->jsonOutput();
        }

        if (!$email) {
            $this->setLastError('Please enter your email.', 'email');
            return $this->jsonOutput();
        }

        //Check Existing User
        $users = PromsUser::get();

        foreach ($users as $user) {
            if ($user->Email == $email) {
                if ($user->Title == $username) {
                    $data_exist = true;
                    $output = array (
                        'id'    => $user->ID,
                        'name'  => $user->Title,
                        'email' => $user->Email,
                        'url'   => $user->SessionURL
                    );
                } else {
                    $this->setLastError('Username does not match our records.', 'username');
                    return $this->jsonOutput();
                }
            }
        }

        if($data_exist) {
            return $this->jsonOutput($output);
        } else {
            $this->setLastError('Email does not exist.', 'email');
        }

        return $this->jsonOutput();
    }

    public function getpromsresult(SS_HTTPRequest $request)
    {
        $id     =  $request->postVar('id');
        $output = array();

        $userChecklist = PromsChecklist::get();

        foreach($userChecklist as $checklist) {
            if ($checklist->PromsUserID == $id) {
                $output = array (
                    'step'     => $checklist->Title,
                    'question' => $checklist->PromsQuestion,
                    'answer'   => $checklist->PromsAnswer
                );
                $result[] = $output;
            }
        }
        return $this->jsonOutput($result);
    }
}