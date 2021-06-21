<?php
namespace Core;

class Database
{
    private static $instance = null;

    public static function getInstance() {
        if (self::$instance === null) {
            // '<db_driver>:host=<db_host>;dbname=<db_name>', 'user', 'mot de passe'
            try {
               return self::$instance = new \PDO('mysql:host=db;dbname=design', 'root', 'S3CR3T');
            } catch (\Exception $err) {
                var_dump($err->getMessage());
            }
        }
    }
    
    public function all(string $table) {
        return $this->instance->query('SELECT * FROM '.$table );
    }
}