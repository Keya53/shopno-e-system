@extends('layouts.header')
@extends('layouts.master')
@section('content')
<div class="container">

    <h3>Our Products</h3>
    <div class="row ">
        @foreach ($Products as $item)
            {{-- <?php echo '<pre>', print_r($item)
            die(); ?> --}}
           <div class="col-md-3 mb-3">
            <div class="card" style="">
                <img src="{{ asset('images/product/' . $item->image) }}" alt="image" style=""
                    class="img-thumbnail">
                <div class="card-body">
                    <h5 class="card-title">{{ $item->product_name }}</h5>
                    <p class="amount">Price: {{ $item->price }}</p>
                    <p class="available">Available : {{ $item->productQuantity->quantity ?? 0 }}</p>

                    <p><a href="{{ url('/detailsProduct/' . $item->product_id) }}" class="btn btn-primary"
                            role="button">Details</a> <a href="#" class="btn btn-warning" role="button">Add
                            To Cart</a></p>
                </div>
            </div>
        </div>

     
        @endforeach
    </div>    
</div>
<footer class="text-white text-center text-lg-start" style="background-color: #23242a;">
    <!-- Grid container -->
    <div class="container p-4">
        <!--Grid row-->
        <div class="row mt-4">
            <!--Grid column-->
            <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4">About company</h5>

                <p>
                    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
                    voluptatum deleniti atque corrupti.
                </p>

                <p>
                    Blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas
                    molestias.
                </p>

                <div class="mt-4">
                    <!-- Facebook -->
                    <a type="button" class="btn btn-floating btn-warning btn-lg"><i
                            class="fab fa-facebook-f"></i></a>
                    <!-- Dribbble -->
                    <a type="button" class="btn btn-floating btn-warning btn-lg"><i
                            class="fab fa-dribbble"></i></a>
                    <!-- Twitter -->
                    <a type="button" class="btn btn-floating btn-warning btn-lg"><i
                            class="fab fa-twitter"></i></a>
                    <!-- Google + -->
                    <a type="button" class="btn btn-floating btn-warning btn-lg"><i
                            class="fab fa-google-plus-g"></i></a>
                    <!-- Linkedin -->
                </div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
               

                <ul class="fa-ul" style="margin-left: 1.65em;">
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-home"></i></span><span class="ms-2">New York, NY
                            10012, US</span>
                    </li>
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-envelope"></i></span><span
                            class="ms-2">info@example.com</span>
                    </li>
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-phone"></i></span><span class="ms-2">+ 01 234
                            567 88</span>
                    </li>
                    <li class="mb-3">
                        <span class="fa-li"><i class="fas fa-print"></i></span><span class="ms-2">+ 01 234
                            567 89</span>
                    </li>
                </ul>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4">Opening hours</h5>

                <table class="table text-center text-white">
                    <tbody class="font-weight-normal">
                        <tr>
                            <td>Mon - Thu:</td>
                            <td>8am - 9pm</td>
                        </tr>
                        <tr>
                            <td>Fri - Sat:</td>
                            <td>8am - 1am</td>
                        </tr>
                        <tr>
                            <td>Sunday:</td>
                            <td>9am - 10pm</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2023 Copyright:
        <a class="text-white" href="https://Shopno Ecommerce.com/">Shopno Ecommerce.com</a>
    </div>
    <!-- Copyright -->
</footer>
@endsection