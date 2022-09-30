<?php

use App\Http\Controllers\AdminCategoryController;
use App\Models\Category;
use App\Models\Post;
use App\Models\Budgeting;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\WakafPembangunanController;

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

Route::get('/ ', function () {
    return view('home', [
        'title' => 'Home',
        'active' => 'Home',
        'posts' => Post::all()
    ]);
});

// Route::get('/about', function () {
//     return view('about', [
//         'title' => 'About',
//         'nama' => 'Jumhan',
//         'email' => 'jumhan.ict@web.id',
//         'gambar' => 'img/jasa.jpg',
//         'active' => 'about'
//     ]);
// });

//Route::get('/blog', [PostController::class, 'index']);
Route::get('/posts', [PostController::class, 'index']);

//single post
//Route::get('posts/{slug} ', [PostController::class, 'show']);
Route::get('/posts/{post:slug} ', [PostController::class, 'show']);

Route::get('/categories', function () {
    return view('categories', [
        'title' => 'Post categories',
        'active' => 'categories',
        'categories' => Category::all(),
    ]);
});


Route::get('/wakaf-pembangunan', [WakafPembangunanController::class, 'index']);
// Route::get('/wakaf-pembangunan', function () {
//     return view('wakaf-pembangunan', [
//         'title' => 'Wakaf Pembangunan',
//         'active' => 'wakaf'
//     ]);
// });

Route::get('/panduan-wakaf-pembangunan', function () {
    return view('panduan-wakaf-pembangunan', [
        'title' => 'Panduan Wakaf Pembangunan',
        'active' => 'wakaf',
        'budgetings' => Budgeting::all(),
    ]);
});

Route::get('/kontak', function () {
    return view('contact', [
        'title' => 'Kontak',
        'active' => 'kontak'
    ]);
});

/** Ga kepake
Route::get('/categories/{category:slug} ', function (Category $category) {
    return view('posts', [
        'title' => "Post By Category : $category->name",
        'active' => 'categories',
        'posts' => $category->posts->load('category', 'author'),
    ]);
});

Route::get('/authors/{author:username}', function (User $author) {
    return view('posts', [
        'title' => "All Posts By $author->name",
        'posts' => $author->posts->load('category', 'author'),
        'active' => 'posts',
    ]);
});
 */


Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function () {
    return view('dashboard.index');
})->middleware('auth');

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');
