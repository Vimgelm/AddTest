<?php

namespace App\models;

use App\models\InserttestModel;
use App\components\NewTest;

class FillDb
{

    private $count_row = 1;
    private $max_word = 5;
    private $owner_id = 108;
    //strange
    private $data_arr = array("name" => "", "description" => "", "tags" => "",
        "1" => array("question" => "", "checkbox1" => "1", "answer1" => "", "answer2" => "", "answer3" => "", "answer4" => ""),
        "2" => array("question" => "", "checkbox2" => "1", "answer1" => "", "answer2" => "", "answer3" => "", "answer4" => ""),
        "3"=>array("question"=>"","checkbox3"=>"1","answer1"=>"","answer2"=>"","answer3"=>"","answer4"=>""));

    private $rand_arr = array('1' => 'lorem', '2' => 'ipsum', '3' => 'dolor', '5' => 'sit', '6' => 'amet',
        '7' => 'consectetur', '8' => 'adipiscing', '9' => 'elit', '10' => 'sed', '11' => 'do', '12' => 'eiusmod',
        '13' => 'tempor', '14' => 'incididunt', '15' => 'ut', '16' => 'labore', '17' => 'et', '18' => 'dolore',
        '19' => 'magna', '20' => 'aliqua', '21' => 'Ut', '22' => 'enim', '23' => 'minim', '24' => 'veniam',
        '25' => 'quis', '26' => 'ad', '27' => 'nostrud', '28' => 'exercitation', '29' => 'ullamco',
        '30' => 'laboris', '31' => 'nisi', '32' => 'aliquip', '33' => 'ea', '34' => 'commodo',
        '35' => 'consequat', '36' => 'duis', '37' => 'aute', '38' => 'irure', '39' => 'dolor',
        '40' => 'in', '41' => 'reprehenderit', '42' => 'in', '43' => 'voluptate', '44' => 'velit',
        '45' => 'esse', '46' => 'cillum', '47' => 'dolore', '48' => 'eu', '49' => 'fugiat', '50' => 'pariatur',
        '51' => 'Excepteur', '52' => 'sint', '53' => 'occaecat', '54' => 'cupidatat', '55' => 'non',
        '56' => 'proident', '57' => 'sunt', '58' => 'in', '59' => 'culpa', '60' => 'qui', '61' => 'officia',
        '62' => 'deserunt', '63' => 'mollit', '64' => 'anim', '65' => 'id');

    public function fillTest()
    {
        $name = '';
        $count_word = rand(1, $this->max_word);
        for ($k = 0; $k < $count_word; $k++) { //string 1-5 word
            $word_key = rand(0, count($this->rand_arr));
            $word = $this->rand_arr[$word_key];
            $name = $name ." ". $word;
        }
        $this->data_arr['name'] = $name;

        $description = '';
        $count_word = rand(10, 20);
        for ($k = 0; $k < $count_word; $k++) { //string 1-5 word
            $word_key = rand(0, count($this->rand_arr));
            $word = $this->rand_arr[$word_key];
            $description = $description ." ". $word;
        }
        $this->data_arr['description'] = $description;

        for ($i = 1; $i <= 3; $i++) {
            foreach ($this->data_arr[$i] as $key=> $value){
                $count_word = rand(1, $this->max_word);
                $str = '';
                $k = substr($key, 0,8);
                if($k == 'checkbox'){

                }elseif($key == "question"){
                    for ($k = 0; $k < $count_word; $k++) { //string 1-5 word
                        $word_key = rand(0, count($this->rand_arr));
                        $word = $this->rand_arr[$word_key];
                        $str = $str . ' ' . $word;
                    }
                    $this->data_arr[$i][$key] = $str . "?";
                }else{
                    for ($k = 0; $k < $count_word; $k++) { //string 1-5 word
                        $word_key = rand(0, count($this->rand_arr));
                        $word = $this->rand_arr[$word_key];
                        $str = $str . ' ' . $word;
                    }
                    $this->data_arr[$i][$key] = $str;
                }

            }
        }

        $data_queston = new NewTest($this->data_arr);
        $insert_model = new InserttestModel($data_queston);
        $insert_model->saveNewTest($this->owner_id);
    }
}