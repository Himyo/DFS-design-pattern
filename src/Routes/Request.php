<?php


namespace Routes;


class Request {
    public $method;
    public $uri;

    public function __construct() {
        $this->method = $_SERVER['REQUEST_METHOD'];
        $this->uri = $_SERVER["REQUEST_URI"];
    }

    /**
     * @return mixed
     */
    public function __get($property)
    {
        return $this->$property;
    }
    public function __set($property, $value) {
        return $this->$property = $value;
    }
}