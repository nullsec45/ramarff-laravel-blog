@extends("layouts.main")
@section("title","Login")
@section("container")

      <div class="row justify-content-center mt-5">  
        <div class="col-lg-4"> 
            @if(session()->has("success"))
              <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{session("success")}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
            @elseif(session()->has("loginError"))
              <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{session("loginError")}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
            @endif
            <main class="form-signin">
              <form action="/login" method="POST">
                @csrf
                <h1 class="h3 mb-5 fw-normal text-center">Login</h1>
                <div class="form-floating">
                    <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="email" value="{{old("email")}}" name="email" autofocus >
                    <label for="email">Email</label>
                    @error("email")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
                    @enderror
                </div>
                <div class="form-floating mt-3">
                    <input type="password" class="form-control @error('email') is-invalid @enderror" id="password" name="password" placeholder="Password">
                    <label for="password">Password</label>
                    @error("password")
                    <div  class="invalid-feedback">
                      {{$message}}
                    </div>
                    @enderror
                </div>
                <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Sign in</button>
              </form>
              <small class="mt-3 d-block text-center">Not registered?  <a href="{{url('/register')}}" class="text-primary">Register Now</a></small>
            </main>
        </div> 
     </div>
   
@endsection