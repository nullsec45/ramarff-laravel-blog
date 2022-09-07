<?php

use App\Http\Controllers\{CategoryController, PostController, LoginController, RegisterController,DashboardController};
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

Route::get('/', fn() => view('index', ["file" => "home"]));
Route::get('/about', fn() => view("about", ["name" => "Rama Fajar Fadhillah","email" => "ramafajar805@gmail.com","image" => "fajar.jpg", "file" => "about"]));
Route::get('/posts', [PostController::class, "index"]);
Route::get("post/{post:slug}", [PostController::class,"show"]);
Route::get("/categories", [PostController::class, "categories"]);
Route::get("/login", [LoginController::class, "index"])->name("login")->middleware("guest"); //<-menambahkan middleware untuk autentikasi hanya user yang belum login bisa akses halaman login
Route::post("/login", [LoginController::class, "authenticate"]);
Route::post("/logout", [LoginController::class, "logout"]);
Route::get("/register", [RegisterController::class, "index"]);
Route::post("/register", [RegisterController::class, "store"]);
Route::get("/dashboard", fn() => view("dashboard.index") )->middleware("auth");
Route::get("/dashboard/posts/checkSlug", [DashboardController::class, "checkSlug"])->middleware("auth");  //<- menambahkan middleware hanya user yang sudah login yang bisa mengakses
Route::resource("/dashboard/posts", DashboardController::class)->middleware("auth");

Route::resource('/dashboard/categories', CategoryController::class)->except("show");

// Route::resource('/dashboard/categories', CategoryController::class)->except("show")->middleware("is_admin"); // <- nonaktif method show dan jalankan middleware buatan kita sendiri


// Route::get("/categories/{category:slug}", [PostController::class, "category"]);
// Route::get("/authors/{author:username}",  [PostController::class, "author"]);



