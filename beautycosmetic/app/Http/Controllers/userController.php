<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Users;


use App\Http\Requests;

use Auth;

use Session;

use Validator;



class UserController extends Controller
{
    public function getSignup() {
    	return view('user.signup');
    }

    public function postSignup(Request $request) {
    	$this->validate($request, [
            'name' => 'required',
    		'email' => 'email|required|unique:users',
    		'password' => 'required|min:4'
    	]);
    	$user = new Users([
           'name' => $request->input('name'),
    		'email' => $request->input('email'),
    		'password' => bcrypt( $request->input('password'))
    	]);
        
    	$user->save();

        Auth::login($user);

        if (Session::has('oldUrl')) {
                $oldUrl = Session::get('oldUrl');
                Session::forget('oldUrl');
                return redirect()->to($oldUrl);

            }

        return redirect('user/profile');
    	
    }

    public function getSignin() {
        return view('user.signin');
    }

    public function postSignin(Request $request) {
        $this->validate($request, [
            'email' => 'email|required',
            'password' => 'required|min:4'
        ]);
         
        
        if(Auth::attempt(['email'=>$request->input('email'),'password'=>$request->input('password')]))
        {
            if (Session::has('oldUrl')) {
                $oldUrl = Session::get('oldUrl');
                Session::forget('oldUrl');
                return redirect()->to($oldUrl);

            }
            return redirect('user/profile');

        }
        
        return redirect()->back();

        



    }

    public function getProfile() 
    {
        $orders = Auth::user()->orders;
        $orders->transform(function($order, $key){
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('user.profile', ['orders' => $orders]);
    }

    public function getLogout(Request $request){
        Auth::logout();
        
        return redirect('user/signin');

        
    }

    public function viewOrder(Request $request)
    {
        $orders = DB :: table('orders')->where('id','=',$id)->get();
        $users = Users :: get();
        


        $orders->transform(function($order, $key)
        {
            $order->cart = unserialize($order->cart);
            return $order;
        });

        $sum=0;
        foreach($orders as $order)
        {
            $sum+=$order->cart->totalPrice;
        }

        $data = array("orders" => $orders, "users"=>$users, "order_id"=>$id, "totalPrice"=>$sum);
        return view("admin.orders")->with($data);
    }
}