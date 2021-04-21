<?php

namespace App\components\Answer;

use App\components\AbstractArrayShell;

class AllAnswerCorrect extends AnswerBaseClass
{

    public function calculateAnswer() // where all the answer must be correct
    {
        return 20; // TODO implement 
//        if ($num_right_answer == $this->right_answer_count) {
//            return 1;
//        }

    }



}