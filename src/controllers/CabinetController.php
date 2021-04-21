<?php


//namespace App\controllers;

use App\controllers\AbstractController;
use App\components\ViewPage;
use App\models\CabinetModel;

class CabinetController extends AbstractController
{
    private $title = 'cabinet';

    public function actionView()
    {
        var_dump($_POST);
        if (isset($_POST['name_btn'])) {
            if (isset($_SESSION['user_id'])) {
                $test = $_POST['name_btn'];
                if ($_POST['name_btn'] == 'test_list'){
                    $data = self::getTestList();
                    include_once ROOT . "/views/block/user_test_block.html";
                }elseif ($_POST['name_btn'] == 'answer_list'){
                    $test_list = new CabinetModel();
                    $data = $test_list->getTestInfo($_SESSION['user_id']);
                    include_once ROOT . "/views/block/user_answer_block.html";
                }elseif ($_POST['name_btn'] == 'statistic'){

                }elseif (preg_match('answers([0-9]+)', 'answers23')){
                    echo "ok";
//                    include_once ROOT . "/views/block/all_users_answers_for_test.html";
                }
            } else {
                header('Location: /login');
            }
        } else {
            $data = self::getTestList(); //add
            $view = new ViewPage();
            $view->render($this->path, $this->title, $data);
        }
    }

    public function getTestList(){
        $test_list = new CabinetModel();
        if (isset($_SESSION['user_id'])){
            $data = $test_list->getOwnerTest($_SESSION['user_id']);
            return $data;
        }else{
            header("Location: /login");
        }

    }

}