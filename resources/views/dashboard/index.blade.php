@extends("dashboard.layouts.main")

@section("container")
<div class="container">
    <div class="row">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1>Welcome cuy, {{auth()->user()->name}}</h1>
        </div>
    </div>
</div>
@endsection