<?php

//namespace App\controllers;

use App\controllers\AbstractController;
use App\models\TestviewModel;
use App\components\ViewPage;
use App\components\NewTest;
use App\components\Answer\PercentageAnswer;

class TestviewController extends AbstractController
{
    private $title = "Test view";
    private $data;

    public function __construct($path)
    {
        parent::__construct($path);
    }

    public function actionView($test_id)
    {
        //get test  where id = test_id
        if (!isset($_POST['check'])) {
            $test_view = new TestviewModel();
            $this->data = $test_view->getTest($test_id);
            $this->data = $test_view->getTest($test_id);

            $view = new ViewPage();
            $view->render($this->path, $this->title, $this->data);
        } else {
            // load answer form db
            $viewModel = new TestviewModel();
            $rightAnswer = $viewModel->getRightAnswer($test_id);

            //call and fill answerObject
            if (!empty($_POST)) {
                $user_answer = $_POST;
                $answerObject = new PercentageAnswer($user_answer, $rightAnswer);
                $answer_errors = $answerObject->validate();

                if ($answer_errors['valid'] == true) {
                    //compare answerArr ans rightAnswer
                    $percent = $answerObject->calculateAnswer();

                    if(isset($_SESSION['user_id'])){ //check user login
                        $user_id = $_SESSION['user_id'];
                    }else{
                        $user_id = NULL;
                    }

                    $viewModel->saveTestResult($test_id,$user_id, $percent); //save user percent
                        //redirect to home page
                    $answer_errors['redirect'] = true;
                    print_r(json_encode($answer_errors));

                } else {
                    // errors title
                    print_r(json_encode($answer_errors));
                }

            } else {
                $answer_errors[] = 'please resend answer';
                print_r(json_encode($answer_errors));
            }


        }


    }


}