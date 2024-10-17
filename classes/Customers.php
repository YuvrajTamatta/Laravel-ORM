<?php
namespace App;

use Illuminate\Database\Eloquent\Model as Eloquent;


class Customers extends Eloquent{
    
    protected $table = "customers";
    
    protected $fillable = [
        'name', 'email', 'phone','address'
    ];
    
    protected $hidden = [
        'created', 'updated'
    ];
}