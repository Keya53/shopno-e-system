<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class buyProduct extends Model
{
    protected $table = 'product';
    public $timestamps = false;

    protected $primaryKey = 'product_id';
    protected $fillable = [
        'product_name','product_category','price','image'
    ];
    public function productQuantity()
    {
       return $this->hasOne(ProductStockModel::class,'product_id','product_id');
    }
}
