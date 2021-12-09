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
    public function sex(){
        $gioitinh = DB::table('gioitinh')->get();
        return response()->json([
            'status'=> 200,
            'gioitinh'=> $gioitinh,
        ]);
    }
    public function age(){
        $age = DB::table('age')->get();
        return response()->json([
            'status'=> 200,
            'age'=> $age,
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
        $query1 = DB::table('catesex')->select('cateagesex_id')->join('category_detail','catesex.catesex_id','=','category_detail.catesex_id')->where('catesex.category_id',$req->id);
        if ($req->sex != null) {
            $query1->where('catesex.sex_id',$req->sex);
        }
        if ($req->age != null) {
            $query1->where('category_detail.age_id',$req->age);
        }
        $result = $query1->get();
        $query2 = DB::table('product');
        foreach ($result as $values) {
            foreach ($values as $value) {
                $query2->orwhere('cateagesex_id' ,$value);
            }
        }
        $result2 = $query2->paginate(1);
        return response()->json([
            'status'=> 200,
            'productcate'=> $result2,
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
