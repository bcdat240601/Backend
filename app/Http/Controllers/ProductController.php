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
    public function showproductbycate(Request $req){
        // cach 1
        // $product1 = DB::table('catesex')->select('catesex_id')->where('category_id',$req->id)->get();
        // $product2 = DB::table('category_detail');
        // foreach ($product1 as $values) {
        //     foreach ($values as $value) {
        //         $product2->orwhere('catesex_id' ,$value);
        //     }
        // }
        // $result1 = $product2->select('cateagesex_id')->get();
        // $product3 = DB::table('product');
        // foreach ($result1 as $values) {
        //     foreach ($values as $value) {
        //         $product3->orwhere('cateagesex_id' ,$value);
        //     }
        // }
        // $resul2 = $product3->paginate(1);
        // return response()->json([
        //     'status'=> 200,
        //     'productcate'=> $resul2,
        // ]);
        //cach 2
        $query1 = DB::table('catesex')->select('cateagesex_id')->join('category_detail','catesex.catesex_id','=','category_detail.catesex_id')->where('catesex.category_id',$req->id)->get();        
        $query2 = DB::table('product');
        foreach ($query1 as $values) {
            foreach ($values as $value) {
                $query2->orwhere('cateagesex_id' ,$value);
            }
        }
        $result = $query2->paginate(1);
        return response()->json([
            'status'=> 200,
            'productcate'=> $result,
        ]);
    } 
    public function productdetail(Request $req){
        $product = DB::table('product')->where("product_id",$req->idpro)->get();
        return response()->json([
            'status'=> 200,
            'productdetail'=> $product,
        ]);
    }
}
