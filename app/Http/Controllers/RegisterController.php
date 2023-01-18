<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'register',
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255', // cara 1 menggunakan pipeline
            'username' => ['required', 'min:3', 'max:128', 'unique:users'], //cara 2 pakai array
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:7|max:255'
        ]);

        //encripsi password
        //$validatedData['password'] = bcrypt($validatedData['password']); // cara 1
        $validatedData['password'] = Hash::make($validatedData['password']); //cara 2 (harus manggil class nya hash dulu)

        User::create($validatedData);

        //$request->session()->flash('success', 'Registration successfull, Please login!');

        return redirect('/login')->with('success', 'Registration successfull, Please login!');
    }
}
