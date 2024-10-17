<?php
use function Symfony\Component\Clock\now;
use App\orders;

require_once __DIR__ . "/includes/connection.php";

//$or =  Orders::sum('amount');
// $or=orders::avg('amount');
$or=orders::insert([['customer_id'=>18,'order_date'=>'2024-010-21','amount'=>366.54,'status'=>'pending'],['customer_id'=>19,'order_date'=>'2024-010-21','amount'=>162.54,'status'=>'pending']]);


echo '<pre>';
print_r(round($or));
echo '</pre>';

?>