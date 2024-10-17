<?php

use function Symfony\Component\Clock\now;
use Illuminate\Support\Facades\Schema;

use App\Customers;

require_once __DIR__ . "/includes/connection.php";


// Get Data
//$customer = Customers::findMany(['1','4']);
//$customer = Customers::first();
//$customer = Customers::find(15);
//$customer = Customers::findMany(1,5);
// $customer = Customers::where('name','Jane Smith')->value('phone');
//$customer = Customers::where('id', '<', 15)->get();
//$customer = Customers::where('id', '>', 15)->orwhere('id', '<', 5)->get();
//$customer = Customers::whereIn('id',[10,20,65])->get();
//$customer=Customers::whereBetween('id',[10,17]);
//$customer=Customers::whereDate('created_at', now())->get();
// $customer = Customers::whereBetween('id',[5,10])->get();
// $customer = Customers::where('id','>',20)->where('id', '<', 30)->get();
// $customer = Customers::pluck('name');
// $customer = Customers::orderBy('name','desc')->get();
// $customer=Customers::limit(3)->get();


// Create
//$customer=Customers::create(['name'=>'yuvraj tamatta','email'=>'uv@gmail.com','phone'=>'123456987','address'=>'123 main street']);
//$customer = Customers::firstOrCreate(['name'=>'salman'], ['name'=>'Ratan tata','email'=>'sa@gmail.com','phone'=>456789,'address'=>'abcd']);
//$customer=Customers::firstOrCreate(['name'=>'salman'],[]);

//update
//$customer = Customers::where('name','Gail Ross')->update(['email'=>'ironman@gmail.com']);	
// $customer = Customers::where('name','Mona Gray')->update(['name'=>'spiderman']);
//$customer = Customers::find(10)->update(['name'=>'Tom Holland']);


//Delete
//$customer = Customers::where('name','John Doe')->delete();
//Multiple delete 
//$customer=Customers::destroy(10,20);
// $customer=Customers::find(3)->delete();


//  $customer = Customers::with('orders')->get();
// $customer = Customers::where('name','spiderman')->count();
// $customer=Customers::chunk(3,function($customer){foreach($customer as $cus){
// 	echo '<pre>';
// 	print_r($cus->toArray());
// 	echo '</pre>';
// }});


