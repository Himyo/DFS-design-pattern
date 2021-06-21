<?php

namespace Entity;
// MV-VM with dependency injection

// use Core\Database;
// class User {
    // public $id = null;
    // public $firstname;
    // public $lastname;
    // public $email;
    // public $password;
    // public $role = 1;
    // public $status = 0;
    // public $token = "-1";
    // private $database = null;

// private function __construct(Database $database){
//     $this->database = $database;
// }
class Users
{
    public $id = null;
    public $firstname;
    public $lastname;
    public $email;
    public $password;
    public $role = 1;
    public $status = 0;
    public $token = "-1";
}
