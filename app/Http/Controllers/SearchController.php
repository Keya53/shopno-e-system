<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class SearchController extends Controller
{
    function search(Request $request){
        $search = $request->input('query');
        // return $search;
        $data['Products'] = Product::where('product_name','like','%'.$search.'%')->get();
        // echo '<pre>',print_r($data['Products']);die();
        return view('searchProducts',$data);
        
        
    }
}
