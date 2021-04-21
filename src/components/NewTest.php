<?php


namespace App\components;

use App\components\AbstractArrayShell;

class NewTest extends AbstractArrayShell
{
    protected $not_array_elem = 4; //filter elements: name, id, description
    protected $test_array = array();
    private $error_arr = array();
    private $error_count = 0;

    public function __construct($test_array)
    {
        $this->test_array = $test_array;
        $this->error_arr = $test_array;
    }

    public function validate()
    {
        $this->error_arr['name'] = $this->validateElement($this->error_arr['name'], 255);
        $this->error_arr['description'] = $this->validateElement($this->error_arr['description'], 255);
//        if (isset($this->test_array['email'])) {
//            if (!filter_var($this->test_array['email'], FILTER_VALIDATE_EMAIL)) {
//                $this->error_arr['email'] = 'Invalid Email!';
//                $this->error_count++;
//            } else {
//                $this->error_arr['email'] = '';
//            }
//        }

        for ($i = 1; $i <= $this->countArray(); $i++) {
            foreach ($this->error_arr[$i] as $key => $value) {
                $this->error_arr[$i][$key] = $this->validateElement($value, 255);
            }
        }
        //count valid row
        if ($this->error_count == 0) {
            $this->error_arr['valid'] = true;
            return $this->error_arr;
        } else {
            return $this->error_arr;
        }

    }

    public function filter()
    {
        // TODO: Implement filter() method.
    }

    //supporting function for validateForm
    private function validateElement($element, $max_lenght)
    {
        if (empty($element)) {
            $this->error_count++;
            return "add data";
        } elseif (strlen($element) > $max_lenght) {
            $this->error_count++;
            return "to long";
        } else {
            return "";
        }
    }

    public function compareAnswer()
    {

    }

    public function setAnswerArr($answer_arr)
    {
        $this->answer_arr = $answer_arr;
    }

//GETTERS

    public function getTest_array()
    {
        return $this->test_array;
    }

    public function getId()
    {
        return $this->test_array['id'];
    }

    public function getName()
    {
        return $this->test_array['name'];
    }

    public function getDescription()
    {
        return $this->test_array['description'];
    }

    public function getTags()
    {
        return $this->test_array['tags'];
    }

    public function getQuestion($num_quest)
    {
        return $this->test_array[$num_quest]['question'];
    }

    public function getAnswer1($num_quest)
    {
        return $this->test_array[$num_quest]['answer1'];
    }

    public function getAnswer2($num_quest)
    {
        return $this->test_array[$num_quest]['answer2'];
    }

    public function getAnswer3($num_quest)
    {
        return $this->test_array[$num_quest]['answer3'];
    }

    public function getAnswer4($num_quest)
    {
        return $this->test_array[$num_quest]['answer4'];
    }

    public function getCheckbox1($num_quest)
    {
        return $this->test_array[$num_quest]['checkbox1'];
    }

    public function getCheckbox2($num_quest)
    {
        return $this->test_array[$num_quest]['checkbox2'];
    }

    public function getCheckbox3($num_quest)
    {
        return $this->test_array[$num_quest]['checkbox3'];
    }

    public function getCheckbox4($num_quest)
    {
        return $this->test_array[$num_quest]['checkbox4'];
    }

    public function getEmail()
    {
        return $this->test_array['email'];
    }

    //SETESRS

    public function setEmail($email)
    {
        $this->test_array['email'] = $email;
    }

}