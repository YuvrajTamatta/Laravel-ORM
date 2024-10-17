<?php

use function Symfony\Component\Clock\now;

use App\Customers;

require_once __DIR__ . "/includes/connection.php";

class getData
{
    public function getdata()
    {
        $result = Customers::all();
        return $result;
    }

    public function rows_sorted()
    {
        $result = Customers::orderBy('name', 'desc')->get();
        return $result;
    }

    public function rows_like()
    {
        $result = Customers::where('name', 'like', '%ra%')->get();
        return $result;
    }
    // Doubt need to asking
    public function distinct_row()
    {
        $result = Customers::select('id','name','phone','address')->groupBy('name')->get();
        return $result;
    }

    public function single_row()
    {
        $result = Customers::first();
        return $result;
    }

    public function total_count()
    {
        $result = Customers::count('id');
        return $result;
    }

    public function insertdata($data)
    {
        $insert = Customers::create([
            'id'=>$data['id'],
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'address' => $data['address']
        ]);
        return $insert;
    }

    public function updateuser($data)
    {
        $update = Customers::where('id', $data['id'])->update([
            'id'=>$data['id'],
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'address' => $data['address']
        ]);
        return $update;
    }

    public function getdatabyid($para)
    {
        $result = Customers::find($para);
        return $result;
    }

    public function check_avaibility($id)
    {
        $result = Customers::find($id);
        return $result;
    }

    public function deletedata($id)
    {
        $quey = Customers::where('id', $id)->delete();
        return $quey;
    }

    public function where_between($first, $second){
        $result = Customers::whereBetween('id',[$first, $second])->get();
        return $result;
    }
}



$ob = new getData();

if (isset($_GET['action'])) {
    switch ($_GET['action']):
        case "get_rows":
            echo json_encode($ob->getdata()->toArray());
            break;
        case "get_sorted_rows":
            echo json_encode($ob->rows_sorted()->toArray());
            break;
        case "rows_like":
            echo json_encode($ob->rows_like()->toArray());
            break;
        case "distinct_row":
            echo json_encode($ob->distinct_row()->toArray());
            break;
        case "single_row":
            echo json_encode($ob->single_row()->toArray());
            break;
        case "total_count":
            echo json_encode($ob->total_count());
            break;
        case "find_by_id":
            echo json_encode($ob->getdatabyid([11, 15]));
            break;
        case "check_avaibility":
            echo json_encode($ob->check_avaibility($_GET['data']));
            break;
        case "delete":
            echo json_encode($ob->deletedata($_GET['data']) ? "Delete Successfull": "Not found" );
            break;
        case "where_between":
            echo json_encode($ob->where_between($_GET['first'],$_GET['second'])->toArray());
            break; 


    endswitch;
}

if (isset($_POST['action']) && $_POST['action'] == 'insert') {
    $user = [];
    parse_str($_POST['data'], $user); 

    if (empty($user['id'])) {
        $result = $ob->insertdata($user);
    } else {
        $result = $ob->updateuser($user);
    }
    echo json_encode($result);
}

