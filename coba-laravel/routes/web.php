<?php

use App\Models\Post;
use App\Models\Category;
use App\Models\Budget;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\AdminBudgetController;
use App\Http\Controllers\AdminDonateController;
use App\Http\Controllers\SetStaticPage02Controller;
use App\Http\Controllers\SetStaticPage05Controller;
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

Route::get('/posts', [PostController::class, 'index']);
Route::get('/donates', [AdminDonateController::class, 'index']);

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
Route::get('/panduan-wakaf-pembangunan', [WakafPembangunanController::class, 'wakafGuide']);
Route::get('/status-rab', [WakafPembangunanController::class, 'budgetStatus']);
Route::get('/daftar-wakaf', [WakafPembangunanController::class, 'wakafList']);
Route::get('/daftar-wakaf/{budget:slug}', function (Budget $budget) {
    return view('wakaf-list', [
        'title' => 'Daftar Wakaf',
        'active' => 'wakaf',
        // 'wakaf' => $budgeting->donates //harus sesuai dengan relasi pada model budgeting function donates
        'wakaf' => $budget->donates->load('budget'),
        'paginate' => 0
    ]);
});

Route::get('/kontak', function () {
    return view('contact', [
        'title' => 'Kontak',
        'active' => 'kontak'
    ]);
});

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

Route::get('/dashboard/categories/checkSlug', [AdminCategoryController::class, 'checkSlug'])->middleware('admin');
Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');

Route::get('/dashboard/budgets/checkSlug', [AdminBudgetController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/budgets', AdminBudgetController::class)->middleware('admin');

Route::get('/dashboard/donates/{id}/edit', [AdminDonateController::class, 'edit'])->middleware('auth');
Route::delete('/dashboard/donates/{id}', [AdminDonateController::class, 'destroy'])->middleware('auth');
Route::put('/dashboard/donates/{id}', [AdminDonateController::class, 'update'])->middleware('admin');
Route::resource('/dashboard/donates', AdminDonateController::class)->middleware('admin');

Route::get('/dashboard/settings/static-pages', function () {
    return view('dashboard.settings.index');
})->middleware('admin');

Route::get('/dashboard/settings/static-page/pembangunan-gedung/edit', [SetStaticPage05Controller::class, 'edit'])->middleware('auth');
Route::get('/dashboard/settings/static-page/pembangunan-gedung/show', [SetStaticPage05Controller::class, 'show'])->middleware('auth');
Route::put('/dashboard/settings/static-page/pembangunan-gedung/update', [SetStaticPage05Controller::class, 'update'])->middleware('admin');

Route::get('/dashboard/settings/static-page/galeri/show', [SetStaticPage02Controller::class, 'show'])->middleware('auth');
