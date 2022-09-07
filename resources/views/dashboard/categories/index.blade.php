@extends("dashboard.layouts.main")

@section("container")
<div>
    <div class="row">
        <div class="pt-3 pb-2 mb-3 border-bottom">
            <h1>My Posts</h1>
        </div>
    </div>
    @if(session()->has("success"))
      <div class="alert alert-success" role="alert">
        {{session("success")}}
      </div>
    @endif
    <div class="row">
        <div class="pt-3 pb-2 mb-3">
          <a href="/dashboard/posts/create" class="btn btn-primary mb-3">Create New Category</a>
            <div class="table-responsive">
                <table class="table table-hover table-striped text-center">
                    <thead>
                      <tr>
                        <th scope="col">No</th>
                        <th scope="col">Category Name</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($categories as $category)
                      <tr>
                        <th scope="row">{{$loop->iteration}}</th>
                        <td>{{$category->name}}</td>
                        <td>
                            <a href="/dashboard/categories/{{$category->slug}}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                            <form action="/dashboard/categories/{{$category->slug}}" method="post" class="d-inline">
                              @method("delete")
                              @csrf
                              <button class="badge bg-danger border-0" onclick="return confirm('Yakin ingin menghapus?')" type="submit"><span data-feather="x-circle"></span></button>
                            </form>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
            </div>
           
        </div>
    </div>
</div>

@endsection