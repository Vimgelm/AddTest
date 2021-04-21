<?php

//namespace App\controllers;

use App\components\NewTest;
use App\models\InserttestModel;
use App\controllers\AbstractController;
use App\components\ViewPage;

class NewtestController extends AbstractController
{
    private $title = "New test";

    public function actionView()
    {
        //TODO: костыль с проверкой существования name
        if (!isset($_POST['name'])) {
            // view html template
            $view = new ViewPage();
            $view->render($this->path, $this->title);
        } else {

            if (!isset($POST['name'])) {
                $test_arr = new NewTest($_POST);
                $insertModel = new InserttestModel($test_arr);
                $test_errors = $test_arr->validate();

                if (isset($_SESSION['user_id']) AND ($test_errors['valid'] === true)) {
                    $test_errors['redirect'] = 'home/1';
                    $result = $insertModel->saveNewTest($_SESSION['user_id']);
                    print_r(json_encode($test_errors));
                } else {
                    $test_errors['redirect'] = 'login';
                    print_r(json_encode($test_errors)); //if user input himself email in test page
                }
//
            } else {
                $test_errors['title'] = 'Test dont send.';
                print_r(json_encode($test_errors));
            }


        }
    }

}