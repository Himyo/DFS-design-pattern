<?php

namespace Model;

class User {
    public $id = null;
	public $firstname;
	public $lastname;
	public $email;
	public $password;
	public $role=1;
	public $status=0;
    public $token = "-1";

    private function __construct(){}
}