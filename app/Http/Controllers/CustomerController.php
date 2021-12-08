<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Support\Facades\Hash;
use DB;

class CustomerController extends Controller
{
    public function register(Request $req){
        $checkemail = DB::table('customer')->select('email')->where('email',$req->email)->first();
        if ($checkemail == null) {
            $customer = new Customer();
            $customer->name = $req->name;
            $customer->email = $req->email;
            $customer->password = Hash::make($req->password);
            $customer->save();
            $message = "Đăng kí thành công";
        }else{
            $message = "Trùng email";
        }
        
        return response()->json([
            'status'=> 200,
            'message'=> $message,
        ]);

    }
    public function login(Request $req){
        $checkemail = DB::table('customer')->where('email',$req->email)->first();
        if ($checkemail != null && Hash::check($req->password, $checkemail->password)) {
            $message = "Thành công";
        }else{
            $message = "Thất Bại";
        }
        return response()->json([
            'status'=> 200,
            'message'=> $message,
            'account'=>$checkemail,
        ]);
    }
}
