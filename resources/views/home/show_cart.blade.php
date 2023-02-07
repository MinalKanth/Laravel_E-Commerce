<!DOCTYPE html>
<html>
@include('home.css')

<body>
    <div class="hero_area">

        <!-- header section -->
        @include('home.header')



        <!-- end header section -->

        <div class="main-panel">
            <div class="content-wrapper">
                <div class="container">
                    <div class="row my-5">
                        <div class="col-lg-12">

                            @include('home.flash_data')


                            @if(session()->has('message'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{ session()->get('message') }}
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                        </div>
                        @endif

                            <div class="card shadow">
                                <div class="card-header bg-danger d-flex justify-content-between align-items-center">
                                    <h3 class="text-light">Manage Cart </h3>
                                    {{--  <button class="btn btn-light" data-bs-toggle="modal"
                                    data-bs-target="#addCartModal"><i class="bi-plus-circle me-2"></i>Add New
                                    Cart </button>  --}}
                                </div>
                                <style>
                                    .center { margin:auto; width: 50%; text-align:center; padding: 30px; }
                                </style>
                                <div class="center">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Product Title</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th>Image</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $totalprice =0; ?>
                                            @foreach ($cart as $cartItem)
                                            <tr>
                                                <td>{{ $cartItem->product_title }}</td>
                                                <td>{{ $cartItem->quantity }}</td>
                                                <td>{{ $cartItem->price }}</td>
                                                <td><img src="storage/productimage/{{ $cartItem->image }}" style="height: 20px; width: 20px;"></td>
                                                <td><a class="btn btn-danger btn-sm" href="{{ url('remove_cart',$cartItem->id) }}" onclick="return confirm('Are you sure You want to delete this Product ?')">Remove</a></td>

                                            </tr>
                                            <?php $totalprice = $totalprice + $cartItem->price ?>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <h1 style="text-align: center; padding-right:50px; font-weight: bold;">Total Price: {{ $totalprice }} </h1>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            {{--  <div>Lets check if its working {{ $totalprice }}</div>  --}}
            <div class="container ">
                <div class="col-md-12 text-center">
                    <h1 style="font-size: 25px; padding-bottom:15px;">Proceed to Order</h1>
                    <style>
                        .btn {
                            font-size: 20px;
                            color: black;
                        }
                    </style>
                    <a href="{{ url('cash_order_place') }}"><button type="button" class="btn btn-primary"> Cash on
                            Delivery</button></a>
                    <a href="{{ url('stripe',$totalprice) }}"><button type="button" class="btn btn-warning">Pay using Card</button></a>
                </div>
            </div>
        </div>



        <!-- footer start -->
        @include('home.footer')
        <!-- footer end -->
        <div class="cpy_">
            <p class="mx-auto">© 2023 All Rights Reserved By <a href="http://www.viprak.com/">ViPrak Web Solutions</a><br>

            </p>
        </div>

</body>
@include('home.script')
{{--  <script>
    $(function() {

        // delete Cart ajax request
        $(document).on('click', '.deleteIcon', function(e) {
            e.preventDefault();
            let id = $(this).attr('id');
            console.log(id);
            let csrf = '{{ csrf_token() }}';
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '{{ route('cartdelete') }}',
                        method: 'delete',
                        data: {
                            id: id,
                            _token: csrf
                        },
                        success: function(response) {
                            console.log(response);
                            Swal.fire(
                                'Deleted!',
                                'Your file has been deleted.',
                                'success'
                            )
                            fetchAllCarts();
                        }
                    });
                }
            })
        });

        // fetch all Carts ajax request
        fetchAllCarts();

        function fetchAllCarts() {
            $.ajax({
                url: '{{ route('cartfetchall') }}',
                method: 'get',
                success: function(response) {
                    $("#show_all_cart").html(response);
                    $("table").DataTable({
                        order: [0, 'desc']
                    });
                }
            });
        }
    });
</script>  --}}

</html>
