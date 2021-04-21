<?php


//namespace App\controllers;


class LogoutController
{
    public function actionExit()
    {
        if (isset($_SESSION['user_id'])) {
            session_unset();
            $ref = $_SERVER['HTTP_REFERER'];
            header("Location: $ref");
        }
    }
}