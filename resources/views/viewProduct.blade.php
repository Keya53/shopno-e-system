@extends('layouts.master');
@section('content')

<h3>Our Products</h3>
<div class="row">
    @foreach ($Products as $item)
        {{-- <?php echo '<pre>', print_r($item);
        die(); ?> --}}
        <div class="col-xs-6 col-md-3">

            <div class="thumbnail">
                {{-- <img src='"+base_url+"/image/product/"+{{$item->image}}+"' alt="image"> --}}
                <a href="" class="">

                    <img src="{{ asset('images/product/' . $item->image) }}" alt="image"
                        style="width:auto;height:100px">
                </a>
                <div class="caption">
                    <h3>{{ $item->product_name }}</h3>
                    <p>Price: {{ $item->price }}</p>
                    <p>Available : {{ $item->productQuantity->quantity ?? 0 }}</p>

                    <p><a href="{{ url('detailsProduct') }}" class="btn btn-primary" role="button">Details</a> <a
                            href="#" class="btn btn-default" role="button">Add To Cart</a></p>


                </div>
            </div>
        </div>
    @endforeach
</div>
@endsection
