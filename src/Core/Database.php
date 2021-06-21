<?php
namespace Core;

class Database
{
    private static $instance = null;
    private $pdo = null;

    public static function getInstance()
    {
        if (self::$instance === null) {
            // '<db_driver>:host=<db_host>;dbname=<db_name>', 'user', 'mot de passe'
            try {
                $pdo = new \PDO('mysql:host=db;dbname=design', 'root', 'S3CR3T');
                $database = new self($pdo);
                return self::$instance = $database;
                // return self::$instance = new self(new \PDO('mysql:host=db;dbname=design', 'root', 'S3CR3T'));
            } catch (\Exception $err) {
                var_dump($err->getMessage());
            }
        }
    }

    private function __construct(\PDO $pdo)
    {
        $this->pdo = $pdo;
    }
    
    public function all(string $table)
    {
        return $this->pdo->query('SELECT * FROM '.$table);
    }
}