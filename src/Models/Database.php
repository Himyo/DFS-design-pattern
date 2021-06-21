<?php
namespace Models;

class Database {
    private static $instance;
    private function __constructor(){}
    public static function getInstance()
    {
        if (!Database::$instance) {
            try {
                $user = 'root';
                $pass = 'root';
                return Database::$instance = new \PDO('mysql:host=localhost;dbname=db', $user, $pass);

            }catch (\Exception $e){
                var_dump($e->getMessage());
            }
        }
        return null;
    }
}