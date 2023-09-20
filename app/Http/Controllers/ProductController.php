<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use PhpParser\Node\Stmt\Return_;

class ProductController extends Controller
{
    public function detailsProduct(Request $request,$id){
        $data['Products'] = Product::where('product_id',$id)->get();
        return view('detailsProduct',$data);
        
    }
    public function backProductList() {
        return view('detailsProduct');
        
    }

    public function footer() {
        return view('layouts.footer');
    }
}
