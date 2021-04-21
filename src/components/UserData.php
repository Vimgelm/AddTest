<?php

namespace App\components;

use App\components\AbstractArrayShell;

class UserData extends AbstractArrayShell
{
    protected $user_arr = array();
    protected $user_error = array();

    public function __construct($user_arr)
    {
        $this->user_arr = $user_arr;
        $this->user_error = $user_arr;
    }

    public function validate() //!!use this function only after encrypt function (all passwords will be erase)
    {
        $valid_form_row = 0; // count authenticated block
        $number_of_check = 3; //change this var if you add new check block

        //validate Nick
        if (!(strlen($this->user_arr['nick']) <= 100)) {
            $this->user_error['nick'] = 'nick to long!';
        } else if ((strlen($this->user_arr['nick']) < 3)) {
            $this->user_error['nick'] = 'nick to short!';
        } else {
            $this->user_error['nick'] = '';
            $valid_form_row++;
        }

        //validate Email
        if (!filter_var($this->user_arr['email'], FILTER_VALIDATE_EMAIL)) {
            $this->user_error['email'] = 'Invalid Email!';
        } else {
            $this->user_error['email'] = '';
            $valid_form_row++;
        }

        //validate password
        if (!($this->user_arr['password'] == $this->user_arr['repeat_password'])) {
            $this->user_error['password'] = 'Passwords dont match';
        } elseif (strlen($this->user_arr['password']) > 40) {
            $this->user_error['password'] = 'Passwords to long';
        } elseif (strlen($this->user_arr['password']) < 8) {
            $this->user_error['password'] = 'Passwords to short';
        } else {
            $this->user_error['password'] = '';
            $valid_form_row++;
        }

        //reset repeat_password value
        $this->user_error['repeat_password'] = '';

        //
        if ($valid_form_row == $number_of_check) {
            $this->user_error['valid'] = true;
        } else {
            $this->user_error['valid'] = false;
        }
        return $this->user_error;
    }

    public function filter() // to process the input login data
    {
        foreach ($this->login_arr as $key => $value) {
            $this->login_arr[$key] = trim($value);
            $this->login_arr[$key] = htmlspecialchars($value);
        }
    }

    //encrypt password
    public function encrypt_password()
    {
        $opt = ['cost' => 10]; // config for hash function

        $hash = password_hash($this->user_arr['password'], PASSWORD_BCRYPT, $opt);

        if ($hash == false) {
            return false;
        } else {
            $this->user_arr['password'] = '';//erase user password
            $this->user_arr['repeat_password'] = '';

            $this->user_arr['hash'] = $hash;
            return true;
        }
    }

    public function getNick()
    {
        return $this->user_arr['nick'];
    }

    public function getEmail()
    {
        return $this->user_arr['email'];
    }

    public function getHash()
    {
        return $this->user_arr['hash'];
    }


}