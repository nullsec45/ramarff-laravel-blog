<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
      a{
        text-decoration: none;
        color:inherit;
      }
    </style>
    <title>@yield("title")</title>
  </head>
  <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
         <div class="container">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{url('/')}}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{url('/about')}}">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{url('/posts')}}">blog</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="{{url('/categories')}}">Categories</a>
                    </li>
                </ul>
                <ul class="navbar-nav ms-auto" style="margin-right:20px">
                  @auth
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                     {{auth()->user()->username}}
                    </a>
                    <ul class="dropdown-menu mt-2" aria-labelledby="navbarDropdownMenuLink">
                      <li><a class="dropdown-item" href="{{url('/dashboard')}}"><i class="bi bi-layout-text-sidebar-reverse"></i> Dashboard</a></li>
                      <li class="dropdown-divider"></li>
                      <li>
                        <form action="/logout" method="POST">
                          @csrf
                          <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-right"></i> Logout</button>
                        </form>
                      </li>
                    </ul>
                  </li>
                  @else
                  <li class="nav-item">
                    <a class="nav-link  text-white" href="{{url('/login')}}"><i class="bi bi-box-arrow-in-left"></i> Login</a>
                  </li>
                </ul>
                @endauth
            </div>
          </div>
        </nav>
    @yield("container")

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>