<?php
// FRONT CONTROLLER
define('ROOT', dirname(__FILE__));

require ROOT . '/vendor/autoload.php';

// 1. Общие настройки
ini_set('display_errors', 1);
error_reporting(E_ALL);

session_start();//подключаем сессию для всех файлов


// root
// call routing
require ROOT . '/src/components/Router.php';
$router = new Router();
$router->run();