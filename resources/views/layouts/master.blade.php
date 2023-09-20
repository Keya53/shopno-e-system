<body>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #13761D">
        <a class="navbar-brand" href="#" style="color:bisque">Shawpno</a>

        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto" >
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                </li>
                <form class="form-inline my-2 my-lg-0" action="{{url('search')}}" method="get">
                    @csrf
                    <input class="form-control mr-sm-2" type="search"  name="query" aria-label="Search" >
                    <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
                </form>


                

            </ul>


        </div>
        <i class="fa-solid fa-cart-shopping" style="font-size: 25px;color:bisque"></i>
    </nav>

    @yield('content')
 
</body>

</html>
