<?php


namespace App\models;

use App\components\Db;

class InserttestModel
{
    private $pdo;
    private $test_obj;

    public function __construct($test_obj)
    {
        $this->pdo = Db::getConnection();
        $this->test_obj = $test_obj;
    }

    public function saveNewTest($owner_id)
    {

        // save tests table
        $sql = "INSERT INTO tests (name, description, owner_id) VALUES (:name, :description, :owner_id)";
        $stm = $this->pdo->prepare($sql);
        $stm->execute(array(
            ':name' => $this->test_obj->getName(),
            ':description' => $this->test_obj->getDescription(),
            ':owner_id' => $owner_id,
        ));

        $test_id = $this->pdo->lastInsertId();

        //save questions table
        $stm = $this->pdo->prepare("INSERT INTO questions (test_id, question, answer1, answer2, answer3, answer4) VALUES (:test_id, :question, :answer1, :answer2, :answer3, :answer4)");
        for ($i = 1; $i <= ($this->test_obj->countArray()); $i++) {
             $stm->execute(array(
                ':test_id' => $test_id,
                ':question' => $this->test_obj->getQuestion($i),
                ':answer1' => $this->test_obj->getAnswer1($i),
                ':answer2' => $this->test_obj->getAnswer2($i),
                ':answer3' => $this->test_obj->getAnswer3($i),
                ':answer4' => $this->test_obj->getAnswer4($i),
            ));
        }

    }

    private function getUserEmail($id)
    {

        $stm = $this->pdo->prepare("SELECT email FROM users WHERE id = :id");
        $result = $stm->execute(array(
            ':id' => $id,
        ));
        $result = $stm->fetch();
        return $result['email'];
    }
}