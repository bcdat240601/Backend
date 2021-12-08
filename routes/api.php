<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ProductController;
use App\Http\Controllers\CustomerController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('shop', [ProductController::class, 'index']);

Route::post('category', [ProductController::class, 'category']);

Route::post('shop/category', [ProductController::class, 'showproductbycate']);

Route::post('shop/detail', [ProductController::class, 'productdetail']);

Route::post('register', [CustomerController::class, 'register']);

Route::post('login', [CustomerController::class, 'login']);
