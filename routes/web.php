<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('auth')->as('auth.')->group(function () {
    Route::get('redirect', [AuthController::class, 'redirect'])->name('redirect');
    Route::get('callback', [AuthController::class, 'login'])->name('callback');
});
