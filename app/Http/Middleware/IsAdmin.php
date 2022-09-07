<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
    
        // Jika belum login dan username bukan mumpuni.wibowo maka forbidden halaman Dashboard Category
        if(auth()->guest() || auth()->user()->username !== "mumpini.wibowo"){
            abort(403);
        }
        return $next($request);
    }
}
