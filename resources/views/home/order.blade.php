<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="/home/images/favicon.png" type="">
    <title>Famms - Fashion HTML Template</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="/home/css/bootstrap.css" />
    <!-- font awesome style -->
    <link href="/home/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="/home/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="/home/css/responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">

</head>

<body>
    <div class="hero_area">

        <!-- header section -->
        @include('home.header')
        <!-- end header section -->

        <div class="container">
            <table class="table table-striped table-bordered table-hover" id="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Product Title</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Payment Status</th>
                        <th>Delivery Status</th>
                        <th>Image</th>
                        <th>Cancel Order</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($order as $orderItem)
                    <tr>

                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $orderItem->product_title }}</td>
                        <td>{{ $orderItem->quantity }}</td>
                        <td>{{ $orderItem->price }}</td>
                        <td>{{ $orderItem->payment_status }}</td>
                        <td>{{ $orderItem->delivery_status }}</td>
                        <td><img src="/storage/productimage/{{$orderItem->image}}" height="100" width="100"></td>
                        <td>
                            @if($orderItem->delivery_status=='processing')
                            <a href="{{ url('cancel_order',$orderItem->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to Cancel the order !!!')">Cancel Order</a></td>
                            @else

                            <p style="color:blue">Not Allowed</p>

                            @endif
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

</body>
@include('home.script')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>

<script>
    $(document)
        .ready(function() {

            $('#table')
                .DataTable();
        });
</script>
</html>
