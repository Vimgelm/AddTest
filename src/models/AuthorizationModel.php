<?php


namespace App\models;

use App\components\Db;

class AuthorizationModel
{
    private $user_obj;
    private $pdo;

    public function __construct($user_obj)
    {
        $this->pdo = Db::getConnection();
        $this->user_obj = $user_obj;
    }

    public function registerUser()
    {
        $stm = $this->pdo->prepare("INSERT INTO users (email,nick,hash) VALUES (:email, :nick, :hash)");
        $stm->execute(array(
            ':email' => $this->user_obj->getEmail(),
            ':nick' => $this->user_obj->getNick(),
            ':hash' => $this->user_obj->getHash(),
        ));
    }
// this method only for registerController
    public function checkUser()
    {
        $stm = $this->pdo->prepare('SELECT EXISTS(SELECT * FROM users WHERE email = :email OR nick = :nick)');
        $stm->execute(
            array(
                ':email' => $this->user_obj->getEmail(),
                ':nick' => $this->user_obj->getNick(),
            )
        );
        $return_row = $stm->fetch(\PDO::FETCH_NUM);
        if($return_row[0] == 0){
            return true;
        } else{
            return false;
        }

    }


    //save info about user login
    public function loginUserLog()
    {
    }


}