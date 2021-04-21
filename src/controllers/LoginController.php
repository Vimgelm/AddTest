<?php

//namespace App\controllers;

use App\controllers\AbstractController;
use App\components\ViewPage;
use App\components\LoginUser;
use App\models\LoginModel;

class LoginController extends AbstractController
{
    private $title = 'Login';

    public function actionView()// TODO добавить СSRF токен
    {
        if (!isset($_POST['check'])) {
            $view = new ViewPage();
            $view->render($this->path, $this->title);
        } else {
            $login_obj = new LoginUser($_POST);
            $login_obj->filter(); //delete special char and space
            $login_error = $login_obj->validate();
            if ($login_error['valid'] == true) {
                $login_model = new LoginModel($login_obj);
                $check_user = $login_model->checkExistUser();
                if ($check_user == false) {
                    $login_error['email'] = 'incorect email or password';
                    print_r(json_encode($login_error));
                } else {
                    $pass = $login_obj->decodePass(); //this expression compare password and authorizate user
                    if ($pass == true) {
                        $login_model->loginUserLog();// update the last login date
                        $_SESSION['user_id'] = $login_obj->getId();// add auth user info in session
                        $_SESSION['user_nick'] = $login_obj->getNick();
                        $login_error['redirect'] = 'true'; //for jquery code (redirect to page)
                        print json_encode($login_error);

                    } else {
                        $login_error['email'] = 'incorect email or password';
                        print_r(json_encode($login_error));
                    }
                }
            } else {
                print_r(json_encode($login_error));
            }
        }
    }
}