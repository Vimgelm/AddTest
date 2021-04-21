<?php


namespace App\controllers;


abstract class AbstractController
{

    protected $path;
    public function __construct($path)
    {
        $this->path = $path;
    }


}