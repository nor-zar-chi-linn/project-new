<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Cart;
use App\Item;
use App\Order;

use Session;
use Auth;

use App\Brand;
use App\Category;
use DB;
use App\Users;

class productController extends Controller
{


    public function getIndex()
    {
        $item=Item::all();
        $category=Category::all();
        $brand=Brand::all();
        
    
            $data=array(
                "category"=>$category,
                "brand"=>$brand,
                "items"=>$item,
                "title"=>"cosmetic myanmar",
               // "error"=>[]
                );
        return view('shop.home')->with($data);

        
    }


    public function itemlistfunction(Request $request,$id)
    {
        $item=Item::where("category_id","=",$id)->get();
         
       



        $category=Category::get();

        $brand=Brand::get();
 
        
        $category_detail=category::where("id","=",$id)->first();

       
        if($category_detail)
        {
              $data=array(
        
        "items"=>$item,
        "category"=>$category,
        "brand"=>$brand,
        "title"=>"Item list : ".$category_detail->name
       
        
        );
        return view("shop.index")->with($data);
        }
    }



    public function getAddToCart(Request $request,$id)
    {
        $item = Item::find($id);
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($item, $item->id);

        $request->session()->put('cart',$cart);
              $category_id=$item->category_id;
        //dd($request->session()->get('cart'));
  
    return redirect("/category/$category_id");
    }

    public function getReduceByOne($id) {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->reduceByOne($id);

        if (count($cart->items) >0) {
           Session::put('cart', $cart); 
        }
        else {
            Session::forget('cart');
        }
        
        return redirect('product/shopping-cart');
    }

    public function getRemoveItem($id){
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);

        if (count($cart->items) >0) {
           Session::put('cart', $cart); 
        }
        else {
            Session::forget('cart');
        }

        
        return redirect('product/shopping-cart');
    }

    public function getCart(){
        if (!Session::has('cart')) {
            return view('shop.shopping-cart', ['items' => null]);
        }

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        return view('shop.shopping-cart', ['items' => $cart->items, 'totalPrice' => $cart->totalPrice]);

    }
    
    public function getCheckout(){
        if (!Session::has('cart')) {
            return view('shop.shopping-cart', ['items' => null]);
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $total = $cart->totalPrice;
        return view('shop.checkout', ['total' => $total]);
    }
    

    public function postCheckout(Request $request){
        if (!Session::has('cart')) {

            return redirect('product/shopping-cart');
        }

         $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

        
    
        $order = new Order();
        $order->cart = serialize($cart);
        //$order->name = $request->input('name');
        $order->phone = $request->input('phone');
        $order->address = $request->input('address');
        
        $order->delivery_address = $request->input('delivery_address');
        $order->date = $request->input('date');
        $order->date = date("Y-m-d",strtotime($order->date));
        $order->status=0;

        Auth::user()->orders()->save($order);

        Session::forget('cart');
        return redirect()->route('item.index')->with('success', 'Successfully ordered products!');

    }


/*For Admin Part*/

    public function manageOrder(Request $request)
    {
        

        $orders = Order :: get();
        $users = Users :: get();
        //return view('setup.categoryedit',compact("editcategory"));
        
       // $orders = Auth::user()->orders;
        $orders->transform(function($order, $key){
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('admin.order', ['orders' => $orders, 'users' => $users]);
    }


    public function delivered(Request $request,$id)
    {
        $orders = Order :: where("id","=",$id)->first();
        $orders -> status = true;
        $orders -> save();
        return $this->manageOrder($request);
    }

    public function notDelivered(Request $request,$id)
    {
        $orders = Order :: where("id","=",$id)->first();
        $orders -> status = false;
        $orders -> save();
        return $this->manageOrder($request);
    }


    

    public function getViewReport(Request $request)
    {
        
        return view('admin.report');
    }

    public function postViewReport(Request $request)
    {
        $items = Item::get();
        $length = count($items); 
        $startdate = $request->get('startdate');
        $enddate = $request->get('enddate');
        //dd($startdate);
        $orders = DB :: table('orders')->whereBetween('date',[$startdate,$enddate])->where('status','=','1')->get();

        $orders->transform(function($order,$key)
        {
            $order->cart = unserialize($order->cart);
            return $order;
        });
        
       
        $previous_date = null;
    
        $itemlists = null;
       
        $totalsum = 0;
        $number = 1;  

        foreach($items as $item)
        {
            $itemlist = array("id"=>$item->id,"name"=>$item->name,"qty"=>0,"price"=>0);
            $itemlists = array_add($itemlists,$number++,$itemlist);
        }
    

        foreach($orders as $order)
        {

            if($previous_date == null || $previous_date != $order->date)
            {
                $previous_date = $order->date;
            }
           
            if($previous_date == $order->date)
            {
                foreach($order->cart->items as $item)
                {

                    for($i=1;$i<=$length; $i++) 
                    {
                        
                        if($itemlists[$i]['id'] == $item['item']['id'])
                        {
                            $itemlists[$i]['price'] += $item['price'];
                            $itemlists[$i]['qty'] += $item['qty'];
                            
                        }
                    }
                }
            }
            $totalsum += $order->cart->totalPrice;
        }
        
        $data =array(
            "itemlists" => $itemlists,
            "length" => $length,
            "totalPrice" => $totalsum,
            "startdate" => $startdate,
            "enddate" => $enddate
            );
        return view ("admin.report")->with($data);
    }

}