<?php

namespace App\Http\Controllers;
use App\buyProduct;

use Illuminate\Http\Request;

class ProductList extends Controller
{
    function viewProduct(){
        $Products =  buyProduct::with('productQuantity')->get();
        //    echo '<pre>',print_r($Products);die();
        //    echo '<pre>',print_r($Products->toArray());die();
        return view('viewProduct',compact('Products'));
      

    }
}
