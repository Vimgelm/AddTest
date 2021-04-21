<?php

namespace App\components\Answer;

use App\components\AbstractArrayShell;

abstract class AnswerBaseClass extends AbstractArrayShell
{
    protected $not_array_elem = 0;
    protected $user_answer = array();
    protected $right_answer = array();
    protected $user_answer_count;
    protected $right_answer_count;

    public function __construct($user_answer, $right_answer)
    {
        $this->user_answer = $user_answer;
        $this->right_answer = $right_answer;
        $this->user_answer_count = (count($user_answer) - 1);
        $this->right_answer_count = count($right_answer);
    }

    public function validate()
    {
        $num_answer_valid = 0;                                                // counting valid row

        //validate data from form
        $answer_errors = array();
        if ($this->user_answer_count < $this->right_answer_count) {             //if some checkbox empty
            $answer_errors['title'] = 'Please, answer all questions';
        } else {

            for ($i = 0; $i < $this->user_answer_count; $i++) {
                $num_user_answer = count($this->user_answer[$i]);
                if ($num_user_answer == 1) {
                    $answer_errors[$i] = '';
                    $num_answer_valid++;
                } else {
                    $answer_errors[$i] = 'Please, insert only one answer';
                }

            }

        }

        if ($num_answer_valid == $this->right_answer_count) {
            $answer_errors['valid'] = true;
        } else {
            $answer_errors['valid'] = false;
        }

        return $answer_errors;
    }

    public function filter()
    {
    } // TODO do this

    public function CompareAnswer() // where all the answer must be correct
    {
        $num_right_answer = 0;

        for ($i = 0; $i < $this->user_answer_count; $i++) {
            if (empty(array_diff_assoc($this->right_answer[$i], $this->user_answer[$i]))) {
                $num_right_answer++;
            }
        }
        return $num_right_answer;

    }

   abstract public function calculateAnswer();


}