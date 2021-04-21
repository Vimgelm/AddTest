<?php

namespace App\components;

class Db
{

    public static function getConnection()
    {

        $params = include(ROOT . '/src/config/db_params.php');

        $dsn = "mysql:host={$params['host']}; dbname={$params['dbname']}; charset={$params['charset']}";
        $opt = [
            \PDO::ATTR_ERRMODE            => \PDO::ERRMODE_EXCEPTION,
            \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
            \PDO::ATTR_EMULATE_PREPARES   => false,
        ];
        $pdo = new \PDO($dsn, $params['user'],$params['password'], $opt);

        return $pdo;
    }

}
