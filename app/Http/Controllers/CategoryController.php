<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
   
    public function index()
    {
        $this->authorize("admin");
        return view("dashboard.categories.index", ["categories" => Category::all()]);
    }
 
  
    public function create()
    {
    }

    public function store(Request $request)
    {
    }

    public function show(Category $category)
    {
    }

    public function edit(Category $category)
    {
        return "Ini halaman edit";
    }

    public function update(Request $request, Category $category)
    {
    }

  
    public function destroy(Category $category)
    {
    }
}
