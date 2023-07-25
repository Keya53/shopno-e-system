<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductStockModel extends Model
{
    protected $table = 'product_stock';
    protected $primaryKey = 'id';

    protected $guarded = [
        'id'
    ];

    public function product()
    {
    
     return $this->belongsTo(ProductModel::class,'product_id','product_id');
    }
}
