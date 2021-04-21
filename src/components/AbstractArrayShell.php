<?php

namespace App\components;

abstract class AbstractArrayShell
{
    protected $not_array_elem = 0;

    public function countArray()
    {
        return (count($this->test_array) - $this -> not_array_elem);
    }

    abstract public function validate();
    abstract public function filter();

}
