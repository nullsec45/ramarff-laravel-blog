@extends("layouts.main")
@section("title","Halaman Blog")

@section("container")
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10 text-justify">
            <h1>{{ $post->title }}</h1>
            <p class="text-muted"><a href="/posts?author={{$post->author->username}}" >{{$post->author->name}}</a> - <a href="/posts?category={{$post->category->slug}}" >{{$post->category->name}}</a></p>
            @if ($post->image)
                <div style="max-height:350px;overflow:hidden;">
                    <img src="{{asset("storage/".$post->image)}}" class="card-img-top" alt="Gambar">
                </div>
            @else 
                <img src="https://source.unsplash.com/1200x400/?{{$post->category->name}}" class="card-img-top" alt="Gambar">
            @endif
             {{-- Jika menggunakan tag di bawah , maka character html yang ada di dalam teks akan dijalankan --}}
             {!! $post->body !!}
            </article>
            <a href="/posts" class="pb-5 d-block">Back to blogs</a>
        </div>
    </div>
</div>
@endsection