<?php
use \View;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AdminController
 *
 * @author mermal
 */
class AdminController extends \Controller {

	protected function __construct(){
		
	}

    protected function menuList(){
        return $menuList = Menu::all();
    }


}
