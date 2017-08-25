<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/


/*Website Part*/

Route::get('/', [
	'uses' => 'productController@getIndex',
	'as' => 'item.index'
]);

Route::get('/home','productController@getIndex');



/*Product*/

Route::get('/category/{id}','productController@itemlistfunction');
Route::get('product/add-to-cart/{id}','productController@getAddToCart');


Route::get('/reduce/{id}', [
	'uses' => 'productController@getReduceByOne',
	'as' => 'product.reduceByOne'
]);

Route::get('/remove/{id}', [
	'uses' => 'productController@getRemoveItem',
	'as' => 'product.remove'
]);

Route::get('product/shopping-cart','productController@getCart');


Route::get('checkout', [
	'uses' => 'productController@getCheckout',
	'middleware' => 'secondauth'
]);

Route::post('checkout', [
	'uses' => 'productController@postCheckout',
	'middleware' => 'secondauth'
]);




/*User*/

Route::group(['prefix' => 'user'], function (){

	Route::group(['middleware' => 'guest'], function (){

		Route::get('/signup','userController@getSignup');
		Route::post('/signup','userController@postSignup');

		Route::get('/signin','userController@getSignin');
		Route::post('/signin','userController@postSignin');

	});
	
	Route::group(['middleware' => 'secondauth'], function (){

		Route::get('/profile','userController@getProfile');

		Route::get('/logout','userController@getLogout');

	
	});
	
});



/*Admin Part*/

/*Admin Login*/
Route::get('/admin','categoryController@getSignin');
Route::post('/admin','categoryController@postSignin');
Route::get('/admin/logout','categoryController@getLogout');



/*Report*/

Route::get('/admin/report','productController@getViewReport');
Route::post('/admin/report','productController@postViewReport');


/*ManageOrder*/
Route::get('/admin/manageorder','productController@manageOrder');
Route::get('/admin/delivered/{id}','productController@delivered');
Route::get('/admin/notDelivered/{id}','productController@notDelivered');


/*Category*/
Route::get('/category_setup','categoryController@init_setup');
Route::post('/category_setup','categoryController@setup');
Route::get('category/delete/{id}','categoryController@delete');
Route::post('category/update/{id}','categoryController@update');



/*Brand*/
Route::get('/brand_setup','brandController@init_setup');
Route::post('/brand_setup','brandController@setup');
Route::get('brand/delete/{id}','brandController@delete');
Route::post('brand/update/{id}','brandController@update');



/*Item*/
Route::get('/item_setup','itemController@init_setup');
Route::post('/item_setup','itemController@setup');
Route::get('item/delete/{id}','itemController@delete');
Route::get('item/edit/{id}','itemController@edit');
Route::post('item/update/{id}','itemController@update');