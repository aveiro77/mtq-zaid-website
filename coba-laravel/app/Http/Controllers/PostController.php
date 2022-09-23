<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }

        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        //$posts = Post::latest();

        return view('posts', [
            'title' => 'All Posts' . $title,
            //'posts' => Post::all() //untuk menampilkan semua data
            //'posts' => Post::latest()->get(), //untuk menampilkan semua data berdasarkan post terakhir
            //'posts' => $posts->get(), //untuk menampilkan semua data berdasarkan post terakhir
            //'posts' => Post::latest()->filter(request(['search', 'category', 'author']))->get(), //telah dikombinasikan dengan scope filter pada model posts
            //'posts' => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7), //buat pagination
            'posts' => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString(), //agar paginationnya jalan ketika searching
            'active' => 'posts'
        ]);
    }

    public function show(Post $post)
    {
        return view('post', [
            'title' => 'Single Post',
            //'post' => Post::find($post)
            'post' => $post,
            'active' => 'posts'
        ]);
    }
}
