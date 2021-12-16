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
    public function editprofile(Request $req){
        $fullname = $req->fullname;
        $password = $req->password;
        $phone = $req->phone;
        $email = $req->email;         
        $checkemail = DB::table("customer")->where([['email',$email],['customer_id','!=',$req->id]])->first();
        if ($checkemail != null) {
            return response()->json([
                'status'=> 200,
                'message'=>'Trùng email'
            ]);
        }        
        $in4 = DB::table("customer")->where('customer_id',$req->id)->first();
        $customer = Customer::Find($in4->customer_id);
        $customer->name = $fullname;
        $customer->password = Hash::make($password);
        $customer->phone = $phone;
        $customer->email = $email;
        $customer->save();
        return response()->json([
            'status'=> 200,
            'message'=>'Thành công',
            'name'=>$fullname
        ]);
    }
}
