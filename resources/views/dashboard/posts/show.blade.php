@extends("dashboard.layouts.main")

@section("container")
<div class="container my-3">
    <div class="row">
        <div class="col-lg-12 text-justify">
            <h1>{{ $post->title }}</h1>
            <div class="my-2">
                <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span>Back to all my posts</a>
                <a href="/dashboard/posts/{{$post->slug}}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
                <form action="/dashboard/posts/{{$post->slugclear}}" method="post" class="d-inline">
                    @method("delete")
                    @csrf
                    <button class="btn btn-danger border-0" onclick="return confirm('Yakin ingin menghapus?')" type="submit"><span data-feather="x-circle"></span> Delete</button>
                  </form>
            </div>
            @if ($post->image)
                <div style="max-height:350px;overflow:hidden;">
                    <img src="{{asset("storage/".$post->image)}}" class="card-img-top" alt="Gambar">
                </div>
            @else 
                <img src="https://source.unsplash.com/1200x400/?{{$post->category->name}}" class="card-img-top" alt="Gambar">
            @endif
            <article class="my-3 fs-5">
             {!! $post->body !!}
            </article>
        </div>
    </div>
</div>
@endsection