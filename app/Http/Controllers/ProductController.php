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
    public function category(){
        $category = DB::table('category_product')->get();
        return response()->json([
            'status'=> 200,
            'category'=> $category,
        ]);
    }    
}
