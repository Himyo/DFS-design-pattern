<?php
require 'autoload.php';

use Core\Database;

echo 'Hello';

$pdo = Database::getInstance();
// $pdo->all("Users");