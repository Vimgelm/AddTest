<?php

//namespace App\controllers;

use App\models\HomeModel;
use App\controllers\AbstractController;
use App\components\ViewPage;
use App\components\Paginator;

class HomeController extends AbstractController
{
    private $title = "home";

    public function actionView()
    {
        $current_page = substr($_SERVER['REQUEST_URI'],6); //return last number symbol /home/1<-

        $model = new HomeModel();
        $data = $model->loadTestPreview(7, $current_page);

        $paginator = new Paginator();

        $data['pagination'] = $paginator->makePage($current_page,3,3, 50);
        $data['current_page'] = $current_page;
            // view html template
        $view = new ViewPage();
        $view->render($this->path, $this->title, $data);
    }

}