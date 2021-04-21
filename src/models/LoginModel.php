<?php

namespace App\models;

use App\components\Db;

class LoginModel
{
    private $user_obj;
    private $pdo;

    public function __construct($user_obj)
    {
        $this->pdo = Db::getConnection();
        $this->user_obj = $user_obj;
    }


    public function checkExistUser()
    {
        $stm = $this->pdo->prepare('SELECT hash, id, nick FROM users WHERE email = :email');
        $stm->execute(
            array(
                ':email' => $this->user_obj->getEmail(),
            )
        );
         $return_row = $stm->fetch(\PDO::FETCH_ASSOC);
        if(isset($return_row['hash'])){
            $this->user_obj->setId($return_row['id']); //for user session
            $this->user_obj->setNick($return_row['nick']);
            $this->user_obj->setHash($return_row['hash']);
            return true;
        } else{
            return false;
        }

    }

    //save info about user login
    public function loginUserLog()
    {
        $stm = $this->pdo->prepare("UPDATE users SET last_entry = NOW() WHERE id = :id");
        $stm->execute(array(
            ':id' => $this->user_obj->getId(),
        ));
    }


}