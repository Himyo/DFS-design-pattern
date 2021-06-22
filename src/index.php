<?php
require 'autoload.php';

use Core\Database;

echo 'Hello';

$pdo = Database::getInstance();
// var_dump($pdo->all());