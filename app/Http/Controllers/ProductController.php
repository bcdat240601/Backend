<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use DB;
class ProductController extends Controller
{
    public function index(){
       $allproduct = DB::table('product')->paginate(1);
    //    return $this->pagination($allproduct);
       return response()->json([
            'status'=> 200,            
            'allproduct'=> $allproduct,            
        ]);
    }
    // public function pagination($truyvan,$page){
    //     $quantity = $truyvan->count();
    //     $number_page = ceil($quantity/$item_per_page);
    //     $offset = ($page - 1)*$item_per_page;
    //     $showitems = $truyvan->limit($item_per_page)->offset($offset)->get();
    // }
}
