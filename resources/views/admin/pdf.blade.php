<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Pdf</title>
</head>
<body>
    <h1>Order Details</h1>
    Customer Name:-<h3>{{ $order->name }}</h3>
    Customer Email:-<h3>{{ $order->email }}</h3>
    Customer Phone:-<h3>{{ $order->phone }}</h3>
    Customer Address:-<h3>{{ $order->address }}</h3>
    Customer Id:-<h3>{{ $order->user_id }}</h3>
    Product Name:-<h3>{{ $order->product_title }}</h3>
    Product Quantity:-<h3>{{ $order->quantity }}</h3>
    Product Price:-<h3>{{ $order->price }}</h3>
    {{--  Product Image:-<td><img src="storage/productimage/{{ $order->image }}" width="100" class="img"></td>  --}}
    Product Payment_status:-<h3>{{ $order->payment_status }}</h3>
    Product Delivery_status:-<h3>{{ $order->delivery_status }}</h3>
    <br><br>
    <img src="storage/productimage/{{ $order->image }}" width="450" height="250">
</body>
</html>
