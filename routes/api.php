<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\BookController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::prefix('user')->group(function () {
    Route::get('/users', function(Request $request) {
        return $request->user();
    });

    Route::post('/register', [AuthController::class, 'register']);
    Route::get('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:api');
});

Route::apiResource('book', BookController::class, [
    'only' => [
        'index',
        'show'
    ]
]);

Route::resource('book', BookController::class, [
    'except' => [
        'index',
        'show'
    ]
])->middleware(['auth:api']);