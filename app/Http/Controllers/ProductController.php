<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use DB;
class ProductController extends Controller
{
    public function ShowAll(){
       $allproduct = DB::table('brand')->get();
       return response()->json([
            'status'=> 200,            
            'allproduct'=> $allproduct,
            'message'=> 'hello'
        ]);
    }
}
