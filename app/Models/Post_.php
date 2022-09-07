<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

// class post extends Model
// {
//     use HasFactory;
// }
class Post{
   private static $blog_posts=[
        [
        "title" => "Judul Blog Pertama",
        "slug" => "judul-blog-pertama",
        "author" => "Rama Fajar Fadhillah",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                   speriores fuga perspiciatis ex iusto! Fugit asperiores eos iste ea ab 
                   odio corporis delectus officiis quaerat. 
                   Aperiam repellat temporibus est eligendi impedit?.  
                   fuga perspiciatis ex iusto! Fugit asperiores eos iste ea ab 
                   odio corporis delectus officiis quaerat. Aperiam repellat temporibus est eligendi impedit?"
        ],
        [
            "title" => "Judul Blog Kedua",
            "slug" => "judul-blog-kedua",
            "author" => "Rama Fajar Fadhillah",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                       speriores fuga perspiciatis ex iusto! Fugit asperiores eos iste ea ab 
                       odio corporis delectus officiis quaerat. 
                       Aperiam repellat temporibus est eligendi impedit?.  
                       fuga perspiciatis ex iusto! Fugit asperiores eos iste ea ab 
                       odio corporis delectus officiis quaerat. Aperiam repellat temporibus est eligendi impedit?"
        ]
    ];
    public static function all(){
        // collection type data seperti array, namun ini lebih sakti
        return collect(self::$blog_posts);
    }
    public static function find($slug){
        // Jika self untuk memanggil static property, static untuk memanggil static method.
        $posts=static::all();
        $post=[];
        // foreach($posts as $p){
        //     if($p["slug"] === $slug){
        //         $post=$p;
        //     }
        // }
        // Menggunakan method dari collection mempermudah saat mencari data
        return $posts->firstWhere("slug", $slug);
    }
}
