<?php
//加载公共命名空间
use \View;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of IndexCtroller
 *
 * @author mermalR
 */
class IndexController extends AdminController {
    public function __construct() {
        parent::__construct();
    }
    
    public function main(){
        return View::make('admin.index');
    }
    
    public function login(){
        return View::make('admin.login');
    }
}
 