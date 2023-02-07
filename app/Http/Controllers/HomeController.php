<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Models\Cart;
use App\Models\Order;
use Session;
use Stripe;
use App\Models\Comment;
use App\Models\Reply;


class HomeController extends Controller
{

    public function index()
    {

        $products = Product::paginate(9);
        $comments = Comment::orderby('id','desc')->get();
        $replies = Reply::all();
        return view('home.userpage', compact('products','comments','replies'));

    }

    public function redirect()
    {

        $usertype = Auth::user()->usertype;
        if ($usertype == '1') {

            $total_product = Product::all()->count();
            $total_order = Order::all()->count();
            $total_customer = User::all()->count();

            $order = Order::all();

            $total_revenue =0;
            foreach($order as $order)
            {
                $total_revenue = $total_revenue + $order->price;
            }

            $total_delivered = Order::where('delivery_status', '=', 'Delivered')->get()->count();

            $total_processing = Order::where('delivery_status', '=', 'processing')->get()->count();

            return view('admin.home',compact('total_product','total_order','total_customer','total_revenue','total_delivered','total_processing'));
        } else {
            $products = Product::paginate(9);
            $comments = Comment::orderby('id','desc')->get();
            $replies = Reply::all();
            return view('home.userpage', compact('products','comments','replies'));
        }
    }

    public function product_details($id)
    {

        $product = Product::find($id);
        return view('home.product_details', compact('product'));
    }

    public function add_cart(Request $request, $id)
    {

        if (Auth::id()) {
            $user = Auth::user();
            $user_id=$user->id;
            // dd($user);
            $product = Product::find($id);
            // dd($product);

            $product_exist_id = Cart::where('product_id', '=', $id)->where('user_id', '=', $user_id)->get('id')->first();

            if($product_exist_id)
            {
                $cart = cart::find($product_exist_id)->first();
                $quantity = $cart->quantity;
                $cart->quantity=$quantity + $request->quantity;
                if ($product->discount_price != null) {
                    $cart->price = $product->discount_price * $request->quantity;
                } else {
                    $cart->price = $product->price * $request->quantity;
                }
                $cart->save();
                return redirect()->back()->with('message', 'Product Added to Cart Successfully.');

            }else{
                $cart = new cart;

                $cart->name = $user->name;
                $cart->email = $user->email;
                $cart->phone = $user->phone;
                $cart->address = $user->address;
                $cart->product_title = $product->title;
                // $cart->price = $product->price;
                if ($product->discount_price != null) {
                    $cart->price = $product->discount_price * $request->quantity;
                } else {
                    $cart->price = $product->price * $request->quantity;
                }
                $cart->quantity = $request->quantity;
                $cart->image = $product->image;
                $cart->product_id = $product->id;
                $cart->user_id = $user->id;

                $cart->save();

                // session()->flash('message', 'Post successfully updated.');

                // return redirect()->to('show_cart');
                return redirect()->route('show_cart', [], 301)->with('success', 'Product Added to Cart Successfully.');

                // echo "<script>alert('Added to cart Successfully')</script>";

                // header( "refresh:5;");
                // return redirect()->back();
                // return redirect('show_cart');
            }

        } else {
            return redirect('login');
        }
    }

    public function show_cart()
    {

        if (Auth::id()) {

            $id = Auth::user()->id;
            // dd($id);
            $cart = Cart::where('user_id', '=', $id)->get();
            return view('home.show_cart', compact('cart'));
        } else {
            return redirect('login');
        }
    }


    // handle fetch all Cart ajax request
    public function cartfetchAll()
    {
        // $carts = Cart::all();
        $id = Auth::user()->id;
        $carts = Cart::where('user_id', '=', $id)->get();
        $output = '';
        $totalprice = 0;
        if ($carts->count() > 0) {
            $output .= '<table class="table table-sm text-center align-middle">
        <thead>
          <tr>
            <th style="color:black"><b>ID</b></th>
            <th style="color:black"><b>Image</b></th>
            <th style="color:black"><b>Title</b></th>
            <th style="color:black"><b>Quantity</b></th>
            <th style="color:black"><b>Price</b></th>
            <th style="color:black"><b>Action</b></th>
          </tr>
        </thead>
        <tbody>';
            foreach ($carts as $cart) {
                $output .= '<tr>
            <td>' . $cart->id . '</td>
            <td><img src="storage/productimage/' . $cart->image . '" width="50" class="img-thumbnail rounded-circle mx-auto d-block" ></td>
            <td>' . $cart->product_title . '</td>
            <td>' . $cart->quantity . '</td>
            <td>' . $cart->price . '</td>
            <td >
            <a href="#" id="' . $cart->id . '" class="text-danger  mx-1 px-2 deleteIcon"><i class="bi bi-trash"></i></a>
            </td>
          </tr>';
                $totalprice = $totalprice + $cart->price;
            }
            $output .= '</tbody></table>';
            // echo $output;
            // echo $output;
            echo $totalprice,$output;

        } else {
            echo '<h1 class="text-center text-secondary my-5">No record present in the database!</h1>';
        }

        echo '<style>
        h2{text-align: right; padding-right:60px; font-weight: bold;}
    </style><h2>Total Price:&emsp;' . $totalprice . '</h2>';
            // exit;
    }

     // handle insert a new Cart ajax request
    //  public function cartstore(Request $request, $id)
    //  {
    //     if (Auth::id()) {
    //         $user = Auth::user();
    //         // dd($user);
    //         $product = Product::find($id);
    //         // dd($product);

    //         // // $cart->price = $product->price;
    //         // if ($product->discount_price != null) {
    //         //     $cart->price = $product->discount_price * $request->quantity;
    //         // } else {
    //         //     $cart->price = $product->price * $request->quantity;
    //         // }


    //      $cartData = [
    //          'name' => $user->name,
    //          'email' => $user->email,
    //          'phone' => $user->phone,
    //          'address' => $user->address,
    //          'product_title' => $user->title,
    //          'price' => $user->price,
    //          'quantity' => $request->quantity,
    //          'image' => $product->image,
    //          'product_id' => $product->id,

    //      ];
    //      Cart::create($cartData);
    //      return response()->json([
    //          'status' => 200,
    //      ]);
    //  }
    //  }
    // handle delete an Product ajax request
    public function cartdelete(Request $request)
    {
        $id = $request->id;
        $product = Cart::find($id);
            Cart::destroy($id);

    }

    // public function cash_order(){
    //     $user=Auth::user();

    //     $user_id = $user->id;
    //     dd($user_id);

    //     $data = Cart::where('user_id','=', $user_id)->get();
    //     dd($data);

    //     foreach($data as $data){

    //         $order = new Order;

    //         $order->name = $data->name;
    //         $order->email = $data->email;
    //         $order->phone = $data->phone;
    //         $order->address = $data->address;
    //         $order->user_id = $data->user_id;

    //         $order->product_title = $data->product_title;
    //         $order->price = $data->price;
    //         $order->quantity = $data->quantity;
    //         $order->image = $data->image;
    //         $order->product_id = $data->product_id;
    //         $order->payment_status = 'cash on delivery';
    //         $order->delivery_status = 'processing';

    //         $order->save();


    //         // $cart_id=$data->id;
    //         // $cart=Cart::find($cart_id);
    //         // $cart->delete();

    //     }

    //     return redirect()->back();
    //     // return redirect()->route('show_cart', [], 301)->with('success', 'Order Placed Successfully with payment method (Cash on Delivery).');
    // }

    public function stripe($totalprice){

        return view('home.stripe',compact('totalprice'));
    }

    public function remove_cart($id){
        $cart = Cart::find($id);
        $cart->delete();
        return redirect()->back();

    }

    public function cash_order_place(){
        $user=Auth::user();
        $user_id = $user->id;
        // dd($user_id);
        $data=Cart::where('user_id',"=",$user_id)->get();
        // dd($data);
        foreach ($data as $data) {

            $order = new Order;

            $order->name = $data->name;
            $order->email = $data->email;
            $order->phone = $data->phone;
            $order->address = $data->address;
            $order->user_id = $data->user_id;

            $order->product_title = $data->product_title;
            $order->price = $data->price;
            $order->quantity = $data->quantity;
            $order->image = $data->image;
            $order->product_id = $data->product_id;
            $order->payment_status = 'cash on delivery';
            $order->delivery_status = 'processing';

            $order->save();

            $cart_id=$data->id;
            $cart=Cart::find($cart_id);
            $cart->delete();

        }
        return redirect()->back()->with('message', 'We have Recieved your Order. We will connect with you soon...');
    }


        public function stripePost(Request $request)
        {
            Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

            Stripe\Charge::create ([
                    "amount" => 100 * 100,
                    "currency" => "usd",
                    "source" => $request->stripeToken,
                    "description" => "Payment Success to ViPrak Web Solutions",
            ]);

            $user=Auth::user();
        $user_id = $user->id;
        // dd($user_id);
        $data=Cart::where('user_id',"=",$user_id)->get();
        // dd($data);
        foreach ($data as $data) {

            $order = new Order;

            $order->name = $data->name;
            $order->email = $data->email;
            $order->phone = $data->phone;
            $order->address = $data->address;
            $order->user_id = $data->user_id;

            $order->product_title = $data->product_title;
            $order->price = $data->price;
            $order->quantity = $data->quantity;
            $order->image = $data->image;
            $order->product_id = $data->product_id;
            $order->payment_status = 'Paid';
            $order->delivery_status = 'processing';

            $order->save();

            $cart_id=$data->id;
            $cart=Cart::find($cart_id);
            $cart->delete();

        }
            Session::flash('success', 'Payment successful!');

            return back();
        }

        public function show_order(){
            if(Auth::id()){
            $user = Auth::user();
            $user_id = $user->id;

            $order = Order::where('user_id',$user_id)->get();
            return view('home.order',compact('order'));
            }
            else{
            return redirect('login');
            }
        }

        public function cancel_order($id){
            $order=Order::find($id);
            $order->delivery_status='You Canceled the Order';

        $order->save();

        return redirect()->back();

        }

        public function add_comment(Request $request){
            if(Auth::id()){
            $comment = new comment;
            $comment->name=Auth::user()->name;
            $comment->user_id=Auth::user()->id;
            $comment->comment=$request->comment;
            $comment->save();
            return redirect()->back();
            }else{
                return redirect('login');
            }
        }

        public function add_reply(Request $request){
            if(Auth::id()){
            $reply = new Reply;
            $reply->name=Auth::user()->name;
            $reply->user_id=Auth::user()->id;
            $reply->comment_id=$request->commentId;
            $reply->reply=$request->reply;
            $reply->save();
            return redirect()->back();
            }else{
                return redirect('login');
            }
        }

        public function product_search(Request $request){

            $comments = Comment::orderby('id','desc')->get();
            $replies = Reply::all();

        $search_text = $request->search;

        $products=Product::where('title', 'LIKE', "%$search_text%")->orwhere('catagory', 'LIKE', "$search_text")->paginate(9);
        return view('home.userpage', compact('products','comments','replies'));
        }

        public function product(){
            $products = Product::paginate(9);
            $comments = Comment::orderby('id','desc')->get();
        $replies = Reply::all();
        return view('home.all_product', compact('products','comments','replies'));

        }
        public function search_product(Request $request){

            $comments = Comment::orderby('id','desc')->get();
            $replies = Reply::all();

        $search_text = $request->search;

        $products=Product::where('title', 'LIKE', "%$search_text%")->orwhere('catagory', 'LIKE', "$search_text")->paginate(9);
        return view('home.all_product', compact('products','comments','replies'));
        }

}
