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
    <div class="row text-center">
            <div class="col-lg-12">
                <h1 class="text-uppercase">{{$title}}</h1>
            </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-9">
            <form action="/posts">
                @if(request("category"))
                    <input type="hidden" name="category" value="{{request("category")}}">
                @endif
                @if(request("author"))
                    <input type="hidden" name="author" value="{{request("author")}}">
                @endif
                <div class="input-group mb-3">
                    <input type="text" name="search" class="form-control" placeholder="Search article" value="{{request("search")}}">
                    <button class="btn btn-danger" type="submit" id="search">Search</button></div>
            </form>
        </div>
    </div>
    @if($posts->count())
    <div class="row">
        <div class="col-lg-12">
            <div class="card mb-3">
                @if ($posts[0]->image)
                <div style="max-height:350px;overflow:hidden;">
                    <img src="{{asset("storage/".$posts[0]->image)}}" class="card-img-top" alt="Gambar">
                </div>
                @else 
                    <img src="https://source.unsplash.com/1200x400/?{{$posts[0]->category->name}}" class="card-img-top" alt="Gambar">
                @endif
                <div class="card-body">
                    <h3 class="card-title">{{$posts[0]->title}}</h3>
                    <p class="card-text">
                        <small class="text-muted"> 
                            <a href="/posts?author={{$posts[0]->author->username}}" class="text-decoration-none">
                                {{$posts[0]->author->name}}
                            </a> 
                            - 
                            <a class="text-decoration-none" href="/posts?category={{$posts[0]->category->slug}}">
                                {{$posts[0]->category->name}}
                            </a>
                            {{$posts[0]->created_at->diffForHumans()}}
                      </small>
                    </p>
                    <p class="card-text">{{$posts[0]->excerpt}}</p>
                    <a href="/post/{{$posts[0]->slug}}" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
            @foreach($posts->skip(1) as $post)
            <div class="col-md-4">
                <div class="card mb-3">
                    <span class="position-absolute px-3 py-2 bg-dark bg-opacity-50">
                        <a class="text-decoration-none text-white" href="/posts?category={{$post->category->slug}}">
                            {{$post->category->name}}
                        </a>
                    </span>
                    @if ($post->image)
                    <div style="max-height:350px;overflow:hidden;">
                        <img src="{{asset("storage/".$post->image)}}" class="card-img-top" alt="Gambar">
                    </div>
                    @else 
                        <img src="https://source.unsplash.com/1200x400/?{{$post->category->name}}" class="card-img-top" alt="Gambar">
                    @endif
                    <div class="card-body">
                      <h5 class="card-title"><a class="text-decoration-none" href="/post/{{$post->slug}}">{{$post->title}}</a></h5>
                      <p class="card-text">
                        <small class="text-muted"> 
                            <a href="/posts?author={{$post->author->username}}" class="text-decoration-none">
                                {{$post->author->name}}
                            </a> 
                            {{$post->created_at->diffForHumans()}}
                      </small>
                    </p>
                      <p class="card-text">{{$post->excerpt}}</p>
                      <a href="/post/{{$post->slug}}" class="btn btn-primary">Read More</a>
                    </div>
                  </div>
            </div>
            @endforeach
    </div>
    @else
        <p class="text-center fs-4">No post found</p>
    @endif

    <div class="d-flex justify-content-center">
         {{$posts->links()}}
    </div>
</div>
@endsection