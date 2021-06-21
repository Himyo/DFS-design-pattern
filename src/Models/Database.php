<?php
namespace Models;

class Database {
    private static $instance;
    private function __constructor(){}
    public static function getInstance()
    {
        if (!Database::$instance) {
            $user = 'root';
            $pass = 'root';
            return Database::$instance = new \PDO('mysql:host=localhost;dbname=db', $user, $pass);
        } else {
            return null;
        }
    }
    public function query($sql){
        // Par exemple, toutes les requêtes sur la base de
        // données d’une application passent par cette méthode.
        // Par conséquent, vous pouvez définir le code des
        // limitations ou de la mise en cache ici.
        // ...
        $result = self::$instance->query($sql);
         return $result->fetchAll();
    }
}