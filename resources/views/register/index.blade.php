@extends("layouts.main")
@section("title","Register")
@section("container")
      <div class="row justify-content-center mt-5">  
        <div class="col-lg-5"> 
            <main class="form-signin">
              <form action="/register" method="POST">
                @csrf
                <h1 class="h3 mb-5 fw-normal text-center">Register</h1>
                <div class="form-floating">
                    <input type="text" class="form-control @error("name") is-invalid @enderror" id="name" name="name"  placeholder="Nama" value="{{old('name')}}">
                    <label for="name">Nama</label>
                    @error("name")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
                    @enderror
                </div>
                <div class="form-floating mt-3">
                    <input type="text" class="form-control @error("username") is-invalid @enderror" id="username" name="username"  placeholder="Username" value="{{old('username')}}">
                    <label for="username">Username</label>
                    @error("username")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
                    @enderror
                </div>
                <div class="form-floating mt-3">
                    <input type="email" class="form-control @error("email") is-invalid @enderror" id="email" placeholder="name@example.com" name="email" value="{{old('email')}}">
                    <label for="email">Email</label>
                    @error("email")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
                    @enderror
                </div>
                <div class="form-floating mt-3">
                    <input type="password" class="form-control @error("password") is-invalid @enderror" id="password" placeholder="Password" name="password" value="{{old('password')}}">
                    <label for="password">Password</label>
                    @error("password")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
                    @enderror
                </div>
                <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button>
              </form>
              <small class="mt-3 d-block text-center">Already registered?  <a href="{{url('/login')}}" class="text-primary">Login</a></small>
            </main>
        </div> 
     </div>
   
@endsection