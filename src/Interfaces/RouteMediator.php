<?php

namespace  Interfaces;
use Routes\Request;
interface RouteMediator {
    public function handle (Request $request);
}