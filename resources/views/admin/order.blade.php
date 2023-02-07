<!DOCTYPE html>
<html lang="en">

<head>

    @include('admin.css')

    <style>
        .div_center {
            text-align: center;
            padding: 40px;
        }

        .h2_font {
            font-size: 40px;
            padding: 40px;
        }

        .input_color {
            color: black;
        }

        .input_color2 {
            color: white;
        }


        .responsive-card-table {
            border-collapse: collapse;
        }

        .responsive-card-table.unstriped tbody {
            background-color: transparent;
        }

        .responsive-card-table th {
            background-color: #e6e6e6;
        }

        .responsive-card-table tr,
        .responsive-card-table th,
        .responsive-card-table td {
            border: 1px solid #0a0a0a;
        }

        @media screen and (max-width: 640px) {
            .responsive-card-table {}

            .responsive-card-table thead tr {
                position: absolute;
                top: -9999em;
                left: -9999em;
            }

            .responsive-card-table tr {
                border: 1px solid #0a0a0a;
                display: block;
            }

            .responsive-card-table tr+tr {
                margin-top: 1.5rem;
            }

            .responsive-card-table td {
                border: none;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                -webkit-justify-content: flex-start;
                -ms-flex-pack: start;
                justify-content: flex-start;
                -webkit-align-items: center;
                -ms-flex-align: center;
                align-items: center;
                border-bottom: 1px solid #0a0a0a;
                padding-left: 50%;
                position: relative;
            }

            .responsive-card-table td:before {
                content: attr(data-label);
                display: inline-block;
                font-weight: bold;
                line-height: 1.5;
                margin-left: -100%;
                width: 100%;
                position: relative;
                z-index: 1;
            }

            .responsive-card-table td:after {
                content: '';
                position: absolute;
                background: #e6e6e6;
                width: 45%;
                height: 95%;
                left: 1px;
                top: 1px;
                z-index: 0;
            }
        }
    </style>
</head>

{{-- add new Order modal start --}}
<div class="modal fade" id="addOrderModal" tabindex="-1" aria-labelledby="exampleModalLabel" data-bs-backdrop="static"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Order </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="POST" id="add_Order_form" enctype="multipart/form-data">
                @csrf
                <div class="modal-body p-4 bg-light">
                    <div class="row">
                        <div class="col-lg">
                            <label for="title">Order Title</label>
                            <input type="text" name="title" id="title" class="form-control title"
                                placeholder="Order Title" required>
                        </div>
                    </div>
                    <div class="my-2">
                        <label for="description">Speciality</label>
                        <input type="text" name="description" id="description" class="form-control description"
                            placeholder="description" required>
                    </div>
                    <div class="my-2">
                        <label for="image">Select Image</label>
                        <input type="file" name="image" class="form-control image" required>
                    </div>
                    <div class="my-2">
                        <label for="catagory">Order Catagory</label>

                        <select name="catagory" id="catagory" class="form-control catagory">
                            <option value="" selected disabled>Select a Catagory</option>
                            @foreach ($catagories as $catagory)
                                <option value="{{ $catagory->catagory_name }}">{{ $catagory->catagory_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="my-2">
                        <label for="quantity">Quantity</label>
                        <input type="number" name="quantity" class="form-control quantity" min="0"
                            placeholder="Quantity" required>
                    </div>
                    <div class="my-2">
                        <label for="price">Order Price</label>
                        <input type="number" name="price" class="form-control price" min="0"
                            placeholder="Order Price" required>
                    </div>
                    <div class="my-2">
                        <label for="discount_price">Discount Price</label>
                        <input type="number" name="discount_price" class="form-control discount_price" min="0"
                            placeholder="Discount Price" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary input_color" data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="add_Order_btn" class="btn btn-primary" style="color: black;">Add
                        Order </button>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- add new Order modal end --}}

{{-- edit Order modal start --}}
<div class="modal fade" id="editOrderModal" tabindex="-1" aria-labelledby="exampleModalLabel" data-bs-backdrop="static"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Order </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="POST" id="edit_Order_form" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="order_id" id="order_id">
                <div class="modal-body p-4 bg-light">
                    <div class="row">
                        <div class="col-lg">
                            <label for="title">Order Title</label>
                            <input type="text" name="title" id="title" class="form-control title"
                                placeholder="Order Title" required>
                        </div>
                    </div>
                    <div class="my-2">
                        <label for="description">Speciality</label>
                        <input type="text" name="description" id="description" class="form-control description"
                            placeholder="description" required>
                    </div>
                    <div class="my-2">
                        <label for="image">Select Image</label>
                        <input type="file" name="image" class="form-control image" required>
                    </div>
                    <div class="mt-2" id="image">

                    </div>
                    <div class="my-2">
                        <label for="catagory">Order Catagory</label>
                        <select name="catagory" id="catagory" class="form-control catagory">
                            <option value="" selected disabled>Select a Catagory</option>
                            @foreach ($catagories as $catagory)
                                <option value="{{ $catagory->catagory_name }}">{{ $catagory->catagory_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="my-2">
                        <label for="quantity">Quantity</label>
                        <input type="number" name="quantity" class="form-control quantity" min="0"
                            placeholder="Quantity" required>
                    </div>
                    <div class="my-2">
                        <label for="price">Order Price</label>
                        <input type="number" name="price" class="form-control price" min="0"
                            placeholder="Order Price" required>
                    </div>
                    <div class="my-2">
                        <label for="discount_price">Discount Price</label>
                        <input type="number" name="discount_price" class="form-control discount_price"
                            min="0" placeholder="Discount Price" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary input_color"
                        data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="edit_order_btn" class="btn btn-success" style="color: black;">Update
                        Order
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- edit Order modal end --}}

<body>

    <div class="container-scroller">

        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial -->

        <!-- partial:partials/_navbar.html -->
        @include('admin.navbar')
        <!-- partial -->

        <div class="main-panel">
            <div class="container-fluid">

                <div class="col-lg-12">
                    <div class="card shadow">
                        <div class="card-header bg-danger  align-items-center">
                            <h3 class="text-light">Manage Order </h3>
                            <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#addOrderModal"><i
                                    class="bi-plus-circle me-2"></i>Add New
                                Order </button>
                        </div>
                        <div class="card-body responsive-card-table unstriped" id="show_all_order">
                            <table id="table">
                                <thead>
                                    <tr>
                                        <th style="color:black"><b>ID</b></th>
                                        <th style="color:black"><b>Image</b></th>
                                        <th style="color:black"><b>Name</b></th>
                                        <th style="color:black"><b>Email</b></th>
                                        <th style="color:black"><b>Address</b></th>
                                        <th style="color:black"><b>Phone</b></th>
                                        <th style="color:black"><b>Product Title</b></th>
                                        <th style="color:black"><b>Quantity</b></th>
                                        <th style="color:black"><b>Price</b></th>
                                        <th style="color:black"><b>Payment Status</b></th>
                                        <th style="color:black"><b>Delivery Status</b></th>
                                        <th style="color:black"><b>Delete</b></th>
                                        <th style="color:black"><b>Deliver</b></th>
                                        <th style="color:black"><b>Print PDF</b></th>
                                        <th style="color:black"><b>Send Email</b></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders as $order)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td><img src="storage/productimage/{{ $order->image }}" width="100"
                                                    class="img-thumbnail rounded-circle"></td>
                                            <td>{{ $order->name }}</td>
                                            <td>{{ $order->email }}</td>
                                            <td>{{ $order->address = Str::limit($order->address, 25) }}</td>
                                            <td>{{ $order->phone }}</td>
                                            <td>{{ $order->product_title }}</td>
                                            <td>{{ $order->quantity }}</td>
                                            <td>{{ $order->price }}</td>
                                            <td>{{ $order->payment_status }}</td>
                                            <td>{{ $order->delivery_status }}</td>
                                            {{--  <td><a href="{{ url('delete_order',$order->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you Sure You want to Delete this ! ')">Delete</a></td>  --}}
                                            <td><a href="#" id="{{ $order->id }}"
                                                    class="text-danger mx-1 deleteIcon"><i
                                                        class="bi-trash h4"></i></a></td>
                                            <td>
                                                @if ($order->delivery_status == 'processing')
                                                    <a href="{{ url('delivered', $order->id) }}"
                                                        class="btn btn-success btn-sm" class="btn btn-success"
                                                        onclick="return confirm('Are you Sure this product is Delivered !!! ')">Delivered</a>
                                                @else
                                                    <p style="color:green">Delivered</p>
                                                @endif
                                            </td>
                                            <td><a href="{{ url('print_pdf', $order->id) }}"
                                                    class="btn btn-secondary btn-sm">Print PDF</a></td>
                                            <td><a href="{{ url('send_email', $order->id) }}"
                                                    class="btn btn-info btn-sm">Send Email</a></td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        {{--  <div class="card-body responsive-card-table unstriped" id="show_all_order">
                                    <h1 class="text-center text-secondary my-5">Loading...</h1>
                                </div>  --}}
                    </div>
                </div>

            </div>

        </div>
    </div>


    <!-- container-scroller -->

    <!-- plugins:js -->
    @include('admin.script')

    <!-- End custom js for this page -->

</body>
<script>
    $(document)
        .ready(function() {

            $('#table')
                .DataTable();
        });



    // delete Order ajax request
    $(document).on('click', '.deleteIcon', function(e) {
        e.preventDefault();
        let id = $(this).attr('id');
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
                    url: '{{ route('orderdelete') }}',
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
                        location.reload(true);
                    }
                });
            }
        })
    });

    {{--  // fetch all Orders ajax request
        fetchAllOrders();

        function fetchAllOrders() {
            $.ajax({
                url: '{{ route('orderfetchall') }}',
                method: 'get',
                success: function(response) {
                    $("#show_all_order").html(response);
                    $("table").DataTable({
                        order: [0, 'desc']
                    });
                }
            });
        }
    });  --}}
</script>

</html>
