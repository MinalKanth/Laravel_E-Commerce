<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
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

route::get('/', [HomeController::class, 'index']);

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::middleware([
//     'auth:sanctum',
//     config('jetstream.auth_session'),
//     'verified'
// ])->group(function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     })->name('dashboard');
// });

Route::middleware(['auth:sanctum','verified'])->get('/dashboard' , function () {
        return view('dashboard');
    })->name('dashboard');


Route::get('/redirect', [HomeController::class, 'redirect'])->middleware('auth','verified');

//Catagory
route::get('/view_catagory', [AdminController::class, 'view_catagory']);
Route::post('/catstore', [AdminController::class, 'catstore'])->name('catstore');
Route::get('/catfetchall', [AdminController::class, 'catfetchall'])->name('catfetchall');
Route::delete('/catdelete', [AdminController::class, 'catdelete'])->name('catdelete');
Route::get('/catedit', [AdminController::class, 'catedit'])->name('catedit');
Route::post('/catupdate', [AdminController::class, 'catupdate'])->name('catupdate');


//Product
route::get('/view_product', [AdminController::class, 'view_product']);
Route::post('/productstore', [AdminController::class, 'productstore'])->name('productstore');
Route::get('/productfetchall', [AdminController::class, 'productfetchall'])->name('productfetchall');
Route::delete('/productdelete', [AdminController::class, 'productdelete'])->name('productdelete');
Route::get('/productedit', [AdminController::class, 'productedit'])->name('productedit');
Route::post('/productupdate', [AdminController::class, 'productupdate'])->name('productupdate');

Route::get('/product_details/{id}', [HomeController::class, 'product_details']);

Route::post('/add_cart/{id}', [HomeController::class, 'add_cart']);
Route::get('/remove_cart/{id}', [HomeController::class, 'remove_cart']);

//Cart
Route::get('/show_cart', [HomeController::class, 'show_cart'])->name('show_cart');
// Route::post('/cartstore', [HomeController::class, 'cartstore'])->name('cartstore');
// Route::get('/cartfetchall', [HomeController::class, 'cartfetchall'])->name('cartfetchall');
// Route::delete('/cartdelete', [HomeController::class, 'cartdelete'])->name('cartdelete');

// Route::get('/cash_order', [HomeController::class, 'cash_order'])->name('cash_order');
Route::get('/cash_order_place', [HomeController::class, 'cash_order_place']);

Route::get('/stripe/{totalprice}', [HomeController::class, 'stripe']);
Route::post('/stripe/', [HomeController::class, 'stripePost'])->name('stripe.post');


//order
route::get('/view_order', [AdminController::class, 'view_order']);
Route::get('/orderfetchall', [AdminController::class, 'orderfetchall'])->name('orderfetchall');
Route::delete('/orderdelete', [AdminController::class, 'orderdelete'])->name('orderdelete');


Route::get('/delivered/{id}', [AdminController::class, 'delivered']);
Route::get('/remove_order/{id}', [AdminController::class, 'remove_order']);
Route::get('/print_pdf/{id}', [AdminController::class, 'print_pdf']);
Route::get('/send_email/{id}', [AdminController::class, 'send_email']);
Route::post('/send_user_email/{id}', [AdminController::class, 'send_user_email']);


Route::get('/show_order', [HomeController::class, 'show_order']);
Route::get('/cancel_order/{id}', [HomeController::class, 'cancel_order']);

Route::post('/add_comment/', [HomeController::class, 'add_comment']);
Route::post('/add_reply/', [HomeController::class, 'add_reply']);

Route::post('/product_search/', [HomeController::class, 'product_search']);

Route::get('/product/', [HomeController::class, 'product']);

Route::post('/search_product/', [HomeController::class, 'search_product']);

