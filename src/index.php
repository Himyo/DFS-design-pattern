<?php
require 'autoload.php';

use Core\Database;

echo 'Hello';

$pdo = Database::getInstance();
// How to fix this i wonder? geez
// var_dump($pdo->all());