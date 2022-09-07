<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;



class LoginController extends Controller
{
    public function index()
    {
        return view("login.index");
    }
    public function authenticate(Request $request){
       $credentials=$request->validate([
            "email" => "required|email:dns",
            "password" => "required"
        ]);
        // Kalo suskses redirect ke sebuah halaman, namun jika gagal redirect ke halaman login lagi.
        if(Auth::Attempt($credentials)){
            // menggunnakan regenerate untuk menghindari
            // teknik hacking bernama session fixation -> pura-pura masuk dengan session yang sama, sehingga 
            // bisa masuk tanpa login, tetapi menggunakan session
            $request->session()->regenerate();
            return redirect()->intended("/dashboard");
        }
        return back()->with("loginError","Login gagal!");
    }
    public function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/posts');

    }
}
