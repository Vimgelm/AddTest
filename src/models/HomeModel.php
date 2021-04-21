<?php


namespace App\models;

use App\components\Db;
use App\components\NewTest;
//define(OFF, 32);
class HomeModel
{
public function loadTestPreview($amount_row = 3, $curent_page){
    $offset = $amount_row *($curent_page - 1);
    $pdo = Db::getConnection();
    $result = $pdo->prepare("SELECT id, name, description FROM tests LIMIT :amount_row OFFSET :offset");
    $result->execute(array(
        ':amount_row' => $amount_row,
        ':offset'=> $offset,
    ));

    $preview_test_arr  = $result->fetchAll();
    return $preview_test_arr;
}
}