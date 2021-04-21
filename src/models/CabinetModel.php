<?php

namespace App\models;

use App\components\Db;

class CabinetModel
{
    public function __construct()
    {
        $this->pdo = Db::getConnection();
    }

    public function getOwnerTest($owner_id)
    {
        $sql = "SELECT id, name, description FROM tests WHERE owner_id = :owner_id";
        $stm = $this->pdo->prepare($sql);
        $stm->execute(array(
                ':owner_id' => $owner_id
            )
        );
        $result = $stm->fetchAll();
        return $result;
    }

    public function getTestInfo($owner_id) //for cabinet / return all test with count answer
    {
        $stm = $this->pdo->prepare("SELECT name, id FROM tests WHERE owner_id = :owner_id");
        $stm->execute(array(
            ':owner_id' => $owner_id,
        ));
        $result = $stm->fetchAll();

//        get count answer for current test
        for ($i = 0; $i < count($result); $i++) {
            $test_id = $result[$i]['id'];
            $stm = $this->pdo->prepare("SELECT id, user_id, date, percent FROM answer WHERE test_id = :test_id");
            $stm->execute(array(
                ':test_id' => $test_id,
            ));

            $count_answer = $stm->rowCount();
            $result[$i]['count_answer'] = $count_answer;
        }
        return $result;
    }

    public function getRespondetsList($test_id)
    {
        $stm = $this->pdo->prepare("SELECT * FROM answer WHERE test_id = :$test_id");
        $stm->execute(array(
            ':test_id'=> $test_id,
        ));
        $result = $stm->featchALL();
        return $result;
    }
}