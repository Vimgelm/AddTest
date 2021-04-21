<?php


//namespace App\controllers;
use App\controllers\AbstractController;
use App\components\ViewPage;
use App\components\UserData;
use App\models\AuthorizationModel;
use App\models\FillDb;

class RegisterController extends AbstractController
{
    private $title = 'register';

    public function actionView()
    {
        if (!(isset($_POST['check']) == true)) {
            $l = new FillDb();
            $l->fillTest();
            $view = new ViewPage();
            $render = $view->render($this->path, $this->title);
        } else {
            $user_obj = new UserData($_POST);
            $authorization_model = new AuthorizationModel($user_obj);
            $user_errors = $user_obj->validate();

            if ($user_errors['valid'] == true) {

                if ($user_obj->encrypt_password() == true) { //TODO if
                    if ($authorization_model->checkUser() == true) {
                        $authorization_model->registerUser();
                        header("Location:"); //jump to  home page  if  registration successfully completed
                        exit();
                    } else{
                        $user_errors['nick'] = 'such user already exists';
                        print_r(json_encode($user_errors));
                    }
                } else {
                    print 'password dont encrypt';
                }
            } else {
                print_r(json_encode($user_errors));
            }
        }

    }

}