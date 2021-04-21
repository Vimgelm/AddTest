<?php

namespace App\components\Answer;

use App\components\Answer\AnswerBaseClass;

class PercentageAnswer extends AnswerBaseClass
{

    public function calculateAnswer()
    {
        $count_user_right_answer = self::CompareAnswer();
        $result = $count_user_right_answer /($this->right_answer_count / 100);
        return $result;

    }
}