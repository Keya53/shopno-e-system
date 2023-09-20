<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/login','ProductList@viewProduct');


// search
Route::get('/search','SearchController@search');


//detailsProduct
Route::get('/detailsProduct/{id}','ProductController@detailsProduct');
Route::get('/backProductList','ProductList@viewProduct');

// footer

Route::get('/footer','ProductController@footer');


