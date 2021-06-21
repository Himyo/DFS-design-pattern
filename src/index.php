<?php
require 'autoload.php';
use Models\Database;
var_dump(Database::getInstance("localhost","db","root","root"));
echo 'Hello';