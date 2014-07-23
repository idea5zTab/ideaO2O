<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/
Route::get('/', function()
{
	return View::make('hello');
});

/*
 *后台管理设置
 *
 */
Route::group(array('prefix'=>'admin','before'=>'auth'),function(){
    
    
    /*
     *@加载公共菜单
     */
   View::composer(array('admin.p.sidebar','admin.p.top'),function($view){
    	$view->with('menuList',Menu::all());
        $view->with('userInfo','MermalR');
    });

	/*
     * @后台首页
     */
    Route::get('/','IndexController@main');
    Route::get('/login','IndexController@login');
});

/*

 */
