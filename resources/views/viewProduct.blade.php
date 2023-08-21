@extends('layouts.master')

@section('content')
    <div class="container">

        <h3>Our Products</h3>
        <div class="row">
            @foreach ($Products as $item)
                {{-- <?php echo '<pre>', print_r($item);
                die(); ?> --}}
                <div class="card-deck mr-1 p-1">
                    <div class="card ">
                       

                            <img src="{{ asset('images/product/' . $item->image) }}" alt="image"
                                style="width:229px;height:200px" class="img-thumbnail">
                     
                        <div class="card-body">
                            <h3>{{ $item->product_name }}</h3>
                            <p>Price: {{ $item->price }}</p>
                            <p>Available : {{ $item->productQuantity->quantity ?? 0 }}</p>

                            <p><a href="{{ url('detailsProduct') }}" class="btn btn-primary" role="button">Details</a> <a
                                    href="#" class="btn btn-warning" role="button">Add To Cart</a></p>
                        </div>

                    </div>

                </div>

         
            @endforeach
        </div>

    </div>
@endsection
