<?php


namespace App\components;

use App\components\AbstractArrayShell;
use App\models\LoginModel;

class LoginUser extends AbstractArrayShell
{
    private $login_arr = array();
    private $user_error = array();

    public function __construct($login_arr)
    {
        $this->login_arr = $login_arr;
    }

    public function validate()
    {

        //validate Email
        if (!filter_var($this->login_arr['email'], FILTER_VALIDATE_EMAIL)) {
            $this->user_error['email'] = 'Invalid Email!';
            $this->user_error['valid'] = false;
            return $this->user_error;
        } else {
            $this->user_error['email'] = '';
            $this->user_error['valid'] = true;
            return $this->user_error;
        }
    }

    public function filter() // to process the input login data
    {
        foreach ($this->login_arr as $key => $value) {
            $this->login_arr[$key] = trim($value);
            $this->login_arr[$key] = htmlspecialchars($value);
        }
    }

//    public function checkEmail() //check email into db
//    {deprecate
//        $loginModel = new LoginModel();
//        $result = $loginModel->checkExistUser($this->login_arr['email']);
//        if($result == false){
//            return false;
//        }else{
//            $this->login_arr['hash'] = $result;
//        }
//    }

//compare pass with his hash
    public function decodePass()
    {
        $result = password_verify($this->login_arr['password'], $this->login_arr['hash']);
        return $result;
    }

//GETTERS

    public function getId()
    {
        return $this->login_arr['id'];
    }

    public function getNick()
    {
        return $this->login_arr['nick'];
    }

    public function getEmail()
    {
        return $this->login_arr['email'];
    }

    public function getPassword()
    {
        return $this->login_arr['password'];
    }

//SETTERS

    public function setHash($hash)
    {
        $this->login_arr['hash'] = $hash;
    }

    public function setId($id)
    {
        $this->login_arr['id'] = $id;
    }

    public function setNick($nick)
    {
        $this->login_arr['nick'] = $nick;
    }
}