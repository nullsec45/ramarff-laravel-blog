{{-- 
    dd=dump and die, untuk melakukan dump isi dari variable, array, objek. Sama seperti var_dump, 
    namun ini
    dengan stylenya laravel
--}}
{{-- @dd($posts); --}}


@extends("layouts/main")
@section("title","Blog Rama Fajar")

@section("container")
<div class="container mt-5">
    <div class="row">
            <div class="col-lg-12">
                <h1 style="text-transform:uppercase">Post Categories</h1>
            </div>
    </div>
    <div class="row">
        @foreach($categories as $category)
        <div class="col-md-4 pb-3">
            <a href="/posts?category={{$category->slug}}">
              <div class="card  text-white mt-3">
                  <img src="https://source.unsplash.com/500x500/?{{$category->name}}" class="card-img" alt="...">
                <div class="card-img-overlay d-flex align-items-center p-0 ">
                  <h5 class="card-title text-center flex-fill p-4  bg-opacity-50 bg-dark">{{$category->name}}</h5>
                </div>
              </div>
            </a>    

        </div>
        @endforeach
        {{-- <div class="col-lg-12">
            @foreach($categories as $category)
                <ul>
                    <li><a href="/categories/{{$category->slug}}">{{$category->name}}</a></li>
                </ul>
            @endforeach
        </div> --}}
    </div>
</div>
@endsection