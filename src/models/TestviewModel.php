<?php

namespace App\models;

use App\components\Db;
use App\components\NewTest;
use Twig\Cache\NullCache;

class TestviewModel
{
    private $pdo;

    public function __construct()
    {
        $this->pdo = Db::getConnection();
    }

    public function getTest($testId)
    {
        $head_arr = $this->pdo->prepare("SELECT id, name, description FROM tests WHERE id = :testId");
        $head_arr->execute(array(
            ':testId' => $testId,
        ));
        $head_arr = $head_arr->fetch();

        $question_arr = $this->pdo->prepare("SELECT question, answer1, answer2, answer3, answer4 FROM questions WHERE test_id = :testId");
        $question_arr->execute(array(
            ':testId' => $testId,
        ));
        $question_arr = $question_arr->fetchAll();

        $result = array_merge($head_arr, $question_arr);
        $newtest = new NewTest($result);
        return $newtest;
    }

    public function getRightAnswer($test_id)
    {
        $answerArr = $this->pdo->prepare("SELECT checkbox1, checkbox2, checkbox3, checkbox4 FROM questions WHERE test_id = :testId");
        $answerArr->execute(array(
            ':testId' => $test_id,
        ));

        $answerArr = $answerArr->fetchAll();

        //delete all checkbox with  val = 0
        for ($i = 0; $i < count($answerArr); $i++) {
            foreach ($answerArr[$i] as $key => $value) {
                if ($value == 0) {
                    unset($answerArr[$i][$key]);
                }
            }
        }
        return $answerArr;
    }

    public function saveTestResult($test_id, $user_id, $percent)
    {
        $test_result = $this->pdo->prepare("INSERT INTO answer (test_id, user_id, percent) VALUES (:test_id, :user_id, :percent)");

        $test_result->execute(array(
            ':test_id' => $test_id,
            ':user_id' => $user_id,
            ':percent' => $percent,
        ));
    }


}