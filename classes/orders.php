<?php

namespace App;

use Illuminate\Database\Eloquent\Model as Eloquent;


class Orders extends Eloquent{
    
    protected $table = "orders";
    
    protected $fillable = [
        'customer_id', 'order_date', 'amount','status'
    ];
    
    protected $hidden = [
        'created', 'updated'
    ];
}
?>