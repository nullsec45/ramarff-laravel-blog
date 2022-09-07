<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Post,User, Category};


class PostController extends Controller
{
    public function index()
    {
        $title="";
        if(request("category")){
            $category=Category::firstWhere("slug", request("category"));
            $title=" in ".$category->name;
        }
        if(request("author")){
            $author=User::firstWhere("username", request("author"));
            $title=" in ".$author->name;
        }
        return view("posts", 
                    ["title" => "All Post $title",
                     "posts" => Post::latest()->filter(request(["search","category","author"]))
                      ->paginate(7)->withQueryString()
                    ]);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

 
    public function show(Post $post)
    {
        //
        return view("post", 
            ["title" => "Single Post","post" => $post]
        );
    }

  
    public function edit($id)
    {
        //
    }

  
    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
    public function category(Category $category){
        return view("posts",[
            "title" => "Post By Category : $category->name",
            "posts" => $category->posts->load("category","author"),
        ]);
    }
    public function categories(Category $category){
        return view("categories", 
        [
            "categories" => Category::all(),
        ]);
    }
    public function author(User $author){
        return view("posts",[
            "title" => "Post By Author : $author->name",
            "posts" => $author->posts->load("category","author"),
        ]);
    }
}
