<?php

spl_autoload_register(function ($classname) {
    $filename = __DIR__ . "/" . str_replace("\\", DIRECTORY_SEPARATOR, $classname) . ".php";

    if (file_exists($filename)) {
        require($filename);
    }
});
