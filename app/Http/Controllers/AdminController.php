<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Catagory;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\Storage;
use PDF;
use Notification;
use App\Notifications\SendEmailNotification;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{

    // 1 Catagory view
    public function view_catagory()
    {
        if(Auth::id()){
            $data=catagory::all();
            return view('admin.catagory',compact('data'));
        }
        else{
            return redirect('login');
        }
    }


    // handle fetch all Catagory ajax request
    public function catfetchAll()
    {
        $Catagories = Catagory::all();
        $output = '';
        if ($Catagories->count() > 0) {
            $output .= '<table class="table  table-sm text-center align-middle">
         <thead>
           <tr>
             <th>ID</th>
             <th>Catagory Name</th>
             <th>Action</th>
           </tr>
         </thead>
         <tbody>';
            foreach ($Catagories as $catagory) {
                $output .= '<tr>
             <td>' . $catagory->id . '</td>
             <td>' . $catagory->catagory_name . '</td>
             <td>
               <a href="#" id="' . $catagory->id . '" class="text-success mx-1 editIcon" data-bs-toggle="modal" data-bs-target="#editCatagoryModal"><i class="bi-pencil-square h4"></i></a>

               <a href="#" id="' . $catagory->id . '" class="text-danger mx-1 deleteIcon"><i class="bi-trash h4"></i></a>
             </td>
           </tr>';
            }
            $output .= '</tbody></table>';
            echo $output;
        } else {
            echo '<h1 class="text-center text-secondary my-5">No record present in the database!</h1>';
        }
    }

    // handle insert a new Catagory ajax request
    public function catstore(Request $request)
    {

        $catagoryData = [
            'catagory_name' => $request->catagory_name,

        ];
        Catagory::create($catagoryData);
        return response()->json([
            'status' => 200,
        ]);
    }

    // handle edit an Catagory ajax request
    public function catedit(Request $request)
    {
        $id = $request->id;
        $catagory = Catagory::find($id);
        return response()->json($catagory);
    }

    // handle update an Catagory ajax request
    public function catupdate(Request $request)
    {

        $catagory = Catagory::find($request->catagory_id);


        $catagoryData = ['catagory_name' => $request->catagory_name];

        $catagory->update($catagoryData);
        return response()->json([
            'status' => 200,
        ]);
    }

    // handle delete an Catagory ajax request
    public function catdelete(Request $request)
    {
        $id = $request->id;
        $catagory = Catagory::find($id);

        Catagory::destroy($id);
    }









    // Product view

    public function view_product()
    {
        if (Auth::id()) {
            $catagories = Catagory::all();

            return view('admin.product', compact('catagories'));
        }
        else{
            return redirect('login');
        }
    }

    // handle fetch all products ajax request
    public function productfetchAll()
    {
        $products = Product::all();

        //    $products = Product::with('Permissons')->where(DB::raw('LENGTH(name)'),'>','50')->get();
        $output = '';
        if ($products->count() > 0) {
            $output .= '<table class="table table-sm text-center align-middle">
        <thead>
          <tr>
            <th style="color:black"><b>ID</b></th>
            <th style="color:black"><b>Image</b></th>
            <th style="color:black"><b>Title</b></th>
            <th style="color:black"><b>Description</b></th>
            <th style="color:black"><b>Price</b></th>
            <th style="color:black"><b>Quantity</b></th>
            <th style="color:black"><b>Catagory</b></th>
            <th style="color:black"><b>Discount Price</b></th>
            <th style="color:black"><b>Action</b></th>
          </tr>
        </thead>
        <tbody>';
            foreach ($products as $product) {
                $output .= '<tr>
            <td>' . $product->id . '</td>
            <td><img src="storage/productimage/' . $product->image . '" width="100" class="img-thumbnail rounded-circle"></td>
            <td>' . $product->title = Str::limit($product->title, 15) . '</td>
            <td>' . $product->description = Str::limit($product->description, 25) .  '</td>
            <td>' . $product->price . '</td>
            <td>' . $product->quantity . '</td>
            <td>' . $product->catagory . '</td>
            <td>' . $product->discount_price . '</td>
            <td>
              <a href="#" id="' . $product->id . '" class="text-success mx-1 editIcon" data-bs-toggle="modal" data-bs-target="#editProductModal"><i class="bi-pencil-square h4"></i></a>

              <a href="#" id="' . $product->id . '" class="text-danger mx-1 deleteIcon"><i class="bi-trash h4"></i></a>
            </td>
          </tr>';
            }
            $output .= '</tbody></table>';
            echo $output;
        } else {
            echo '<h1 class="text-center text-secondary my-5">No record present in the database!</h1>';
        }
    }

    // handle insert a new Product ajax request
    public function productstore(Request $request)
    {
        $file = $request->file('image');
        $fileName = time() . '.' . $file->getClientOriginalExtension();
        $file->storeAs('public/productimage', $fileName);

        $productData = [
            'title' => $request->title,
            'description' => $request->description,
            'image' => $fileName,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'catagory' => $request->catagory,
            'discount_price' => $request->discount_price,
        ];
        Product::create($productData);
        return response()->json([
            'status' => 200,
        ]);
    }

    // handle edit an Product ajax request
    public function productedit(Request $request)
    {
        $id = $request->id;
        $product = Product::find($id);
        return response()->json($product);
    }

    // handle update an Product ajax request
    public function productupdate(Request $request)
    {
        $fileName = '';
        $product = Product::find($request->product_id);
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $fileName = time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs('/public/productimage/', $fileName);
            if ($product->image) {
                Storage::delete('/public/productimage/' . $product->image);
            }
        } else {
            $fileName = $request->image;
        }

        $productData = ['title' => $request->title, 'description' => $request->description, 'image' => $fileName, 'price' => $request->price, 'quantity' => $request->quantity, 'catagory' => $request->catagory, 'discount_price' => $request->discount_price];

        $product->update($productData);
        return response()->json([
            'status' => 200,
        ]);
    }

    // handle delete an Product ajax request
    public function productdelete(Request $request)
    {
        $id = $request->id;
        $product = Product::find($id);
        if (Storage::delete('storage/productimage/' . $product->image)) {
            Product::destroy($id);
        }
    }





    // Order view

    public function view_order()
    {
        if (Auth::id()) {

            $catagories = Catagory::all();
            $orders = Order::all();

            return view('admin.order', compact('catagories', 'orders'));
        }else{
            return redirect('login');
        }
    }

    // // handle fetch all orders ajax request
    // public function orderfetchAll()
    // {
    //     $orders = Order::all();
    //     $output = '';
    //     if ($orders->count() > 0) {
    //         $output .= '<table class="table table-sm text-center align-middle">
    //     <thead>
    //       <tr>
    //         <th style="color:black"><b>ID</b></th>
    //         <th style="color:black"><b>Image</b></th>
    //         <th style="color:black"><b>Name</b></th>
    //         <th style="color:black"><b>Email</b></th>
    //         <th style="color:black"><b>Address</b></th>
    //         <th style="color:black"><b>Phone</b></th>
    //         <th style="color:black"><b>Product Title</b></th>
    //         <th style="color:black"><b>Quantity</b></th>
    //         <th style="color:black"><b>Price</b></th>
    //         <th style="color:black"><b>Payment Status</b></th>
    //         <th style="color:black"><b>Delivery Status</b></th>
    //         <th style="color:black"><b>Delete</b></th>
    //         <th style="color:black"><b>Action</b></th>
    //       </tr>
    //     </thead>
    //     <tbody>';
    //         foreach ($orders as $order) {
    //             $output .= '<tr>
    //         <td>' . $order->id . '</td>
    //         <td><img src="storage/productimage/' . $order->image . '" width="100" class="img-thumbnail rounded-circle"></td>
    //         <td>' . $order->name . '</td>
    //         <td>' . $order->email . '</td>
    //         <td>' . $order->address . '</td>
    //         <td>' . $order->phone . '</td>
    //         <td>' . $order->product_title . '</td>
    //         <td>' . $order->quantity . '</td>
    //         <td>' . $order->price . '</td>
    //         <td>' . $order->payment_status . '</td>
    //         <td>' . $order->delivery_status . '</td>
    //         <td><a href="#" id="' . $order->id . '"  class="text-danger mx-1 deleteIcon"><i class="bi-trash h4"></i></a></td>

    //         <td>';
    //             if ($order->delivery_status == 'processing') {
    //                 echo '<a href="delivered/' . $order->id . '" class="btn btn-success" onclick="return confirm("Are you Sure this product is Delivered !!! ")">Delivered</a>';
    //             } else {
    //                 echo 'Delivered !';
    //             }
    //             echo '</td></tr>';
    //         }
    //         $output .= '</tbody></table>';
    //         echo $output;
    //     } else {
    //         echo '<h1 class="text-center text-secondary my-5">No record present in the database!</h1>';
    //     }
    // }

    // //<a href="#" id="' . $order->id . '" class="text-success mx-1 editIcon" data-bs-toggle="modal" data-bs-target="#editOrderModal"><i class="bi bi-truck"></i>Delivered</a>
    // // <a href="#" id="' . $order->id . '" class="text-danger mx-1 deleteIcon"><i class="bi-trash h4"></i></a>
    // // handle edit an Order ajax request
    public function orderedit(Request $request)
    {
        $id = $request->id;
        $order = Order::find($id);
        return response()->json($order);
    }

    // handle update an Order ajax request
    public function orderupdate(Request $request)
    {

        $order = Order::find($request->order_id);


        $orderData = ['title' => $request->title, 'description' => $request->description, 'price' => $request->price, 'quantity' => $request->quantity, 'catagory' => $request->catagory, 'discount_price' => $request->discount_price];

        $order->update($orderData);
        return response()->json([
            'status' => 200,
        ]);
    }

    // handle delete an Order ajax request
    public function orderdelete(Request $request)
    {
        $id = $request->id;
        $order = Order::find($id);

        Order::destroy($id);
    }



    //Delivered
    public function delivered($id)
    {
        $order = Order::find($id);
        $order->delivery_status = "Delivered";
        $order->payment_status = "Paid";
        $order->save();

        return redirect()->back();
    }

    // handle delete an Order ajax request
    public function remove_order($id)
    {

        $order = Order::find($id);

        Order::destroy($id);
    }

    public function print_pdf($id)
    {
        $order = Order::find($id);
        $pdf = PDF::loadview('admin.pdf', compact('order'));
        return $pdf->download('order_details.pdf');
    }

    public function send_email($id)
    {
        $order = Order::find($id);
        return view('admin.email_info', compact('order'));
    }

    public function send_user_email(Request $request, $id)
    {
        $order = Order::find($id);

        $details = [
            'greeting' => $request->greeting,
            'firstline' => $request->firstline,
            'body' => $request->body,
            'button' => $request->button,
            'url' => $request->url,
            'lastline' => $request->lastline,
        ];

        Notification::send($order, new SendEmailNotification($details));

        return redirect()->back();
    }
}
