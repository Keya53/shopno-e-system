@extends('layouts.header')
@extends('layouts.master')
@section('content')
<div class="container">

    <h3>Our Products</h3>
    <div class="row">
        @foreach ($Products as $item)
            {{-- <?php echo '<pre>', print_r($item);
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
@endsection