<?php

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
    return view('welcome');
});
Route::get('/invoice', "AddInvoiceController@invoice");
Route::get('/getProduct', "AddInvoiceController@getProduct");
Route::post('/saveInvoice', "AddInvoiceController@addInvoice");
Route::get('/getproductdetails/{id}', "AdminInvoicesController@get_product_details");
Route::get('/getinvoicedetails/{id}', "AdminInvoicesController@get_invoice_details");