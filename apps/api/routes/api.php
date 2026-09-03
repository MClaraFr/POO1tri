<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CustomerController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderController;

Route::group([
    'prefix' => 'categories',
], function() {
    Route::get('', [CategoryController::class, 'index']);
    Route::post('', [CategoryController::class, 'store']);

    Route::group([
        'prefix' =>'/{category}',
    ], function() {
        Route::get('', [CategoryController::class, 'show']);
        Route::put('', [CategoryController::class, 'update']);
        Route::delete('', [CategoryController::class, 'destroy']);
    });
});

Route::apiResource('products', ProductController::class);
Route::apiResource('customers', CustomerController::class);
Route::apiResource('orders', OrderController::class);