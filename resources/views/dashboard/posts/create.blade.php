@extends("dashboard.layouts.main")
@section("container")
<div class="row">
    <div class="pt-3 pb-2 mb-3 border-bottom">
        <h1>Create New Article</h1>
    </div>
</div>
<form action="/dashboard/posts" method="post" enctype="multipart/form-data">
    @csrf
    <div class="my-3 row">
        <label for="title" class="col-sm-1 col-form-label">Title</label>
        <div class="col-sm-8">
            <input type="text" class="form-control @error('title') is-invalid @enderror" 
            id="title" name="title" value="{{old("title")}}">
            @error("title")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
            @enderror
        </div>
    </div>
    <div class="my-3 row">
        <label for="slug" class="col-sm-1 col-form-label">Slug</label>
        <div class="col-sm-8">
            <input type="text" class="form-control @error('title') is-invalid @enderror" 
            id="slug" name="slug" value="{{old("slug")}}" readonly>
            @error("slug")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
            @enderror
        </div>
    </div>
    <div class="my-3 row">
        <label for="category" class="col-sm-1 col-form-label">Category</label>
        <div class="col-sm-8">
            <select  name="category_id" id="category"  class="form-select">
                @foreach($categories as $category)
                    <option value="{{$category->id}}" {{old("category_id") == $category->id ? "selected" : "" }}>
                        {{$category->name}}  
                    </option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="my-3 row">
        <label for="image" class="col-sm-1 col-form-label">Image</label>
        <div class="col-sm-8">
            <input type="file" class="form-control @error('image') is-invalid @enderror" id="image" name="image" onchange="previewImage()">
            <img src="" alt="img-preview" class="img-preview img-fluid mt-3">
            @error("image")
                <div  class="invalid-feedback">
                {{$message}}
                </div>
            @enderror
        </div>
    </div>
    <div class="my-3 row">
        <label for="body" class="col-sm-1 col-form-label">body</label>
        <div class="col-sm-8">
            @error("body")
             <p class="text-danger">{{$message}}</p>
            @enderror
            <input id="x" type="hidden" name="body">
            <trix-editor input="x"></trix-editor>
        </div>
    </div>
    <button type="submit" class="btn btn-primary offset-1">Create</button>
</form>


<script>
    const title=document.querySelector("#title");
    const slug=document.querySelector("#slug"); 
  
    title.addEventListener("change",function(){
        fetch("/dashboard/posts/checkSlug?title="+title.value)
        .then(response => response.json())
        .then(data => slug.value=data.slug);
    });

    function previewImage(){
        const image=document.querySelector("#image");
        const imgPreview=document.querySelector(".img-preview");

        imgPreview.style.display="block";

        const oFReader=new FileReader();
        oFReader.readAsDataURL(image.files[0]);
        oFReader.onload=function(oFREvent){
            imgPreview.src=oFREvent.target.result;
        }
    }
   
</script>
@endsection