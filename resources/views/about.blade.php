@extends("layouts.main")
@section("title","Halaman About")

@section("container")
<div class="container mt-5">
    <div class="row">
            <div class="col-lg-12">
                <h1>About Me</h1>
                <ul>
                    <li>Name:{{ $name;}}</li>
                    <li>Email:{{ $email;}}</li>
                    <li><img src="img/{{$image}}" alt=""></li>
                </ul>
            </div>
        </div>
</div>
@endsection