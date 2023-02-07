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

{{-- add new Product modal start --}}
<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="exampleModalLabel" data-bs-backdrop="static"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Product </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="POST" id="add_product_form" enctype="multipart/form-data">
                @csrf
                <div class="modal-body p-4 bg-light">
                    <div class="row">
                        <div class="col-lg">
                            <label for="title">Product Title</label>
                            <input type="text" name="title" id="title" class="form-control title"
                                placeholder="Product Title" required>
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
                        <label for="catagory">Product Catagory</label>

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
                        <label for="price">Product Price</label>
                        <input type="number" name="price" class="form-control price" min="0"
                            placeholder="Product Price" required>
                    </div>
                    <div class="my-2">
                        <label for="discount_price">Discount Price</label>
                        <input type="number" name="discount_price" class="form-control discount_price" min="0"
                            placeholder="Discount Price" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary input_color" data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="add_product_btn" class="btn btn-primary" style="color: black;">Add
                        Product </button>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- add new Product modal end --}}

{{-- edit Product modal start --}}
<div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    data-bs-backdrop="static" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Product </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="POST" id="edit_product_form" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="product_id" id="product_id">
                <div class="modal-body p-4 bg-light">
                    <div class="row">
                        <div class="col-lg">
                            <label for="title">Product Title</label>
                            <input type="text" name="title" id="title" class="form-control title"
                                placeholder="Product Title" required>
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
                        <label for="catagory">Product Catagory</label>
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
                        <label for="price">Product Price</label>
                        <input type="number" name="price" class="form-control price" min="0"
                            placeholder="Product Price" required>
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
                    <button type="submit" id="edit_product_btn" class="btn btn-success"
                        style="color: black;">Update
                        Product
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- edit Product modal end --}}

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
                        <div class="card-header bg-danger d-flex justify-content-between align-items-center">
                            <h3 class="text-light">Manage Product </h3>
                            <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#addProductModal"><i
                                    class="bi-plus-circle me-2"></i>Add New
                                Product </button>
                        </div>
                        <div class="card-body responsive-card-table unstriped" id="show_all_product">
                            <h1 class="text-center text-secondary my-5">Loading...</h1>
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
    $(function() {

        // add new Product ajax request
        $("#add_product_form").submit(function(e) {
            e.preventDefault();
            const fd = new FormData(this);
            $("#add_Product_btn").text('Adding...');
            $.ajax({
                url: '{{ route('productstore') }}',
                method: 'post',
                data: fd,
                cache: false,
                contentType: false,
                processData: false,
                dataType: 'json',
                success: function(response) {
                    if (response.status == 200) {
                        Swal.fire(
                            'Added!',
                            'Product Added Successfully!',
                            'success'
                        )
                        fetchAllProducts();
                    }
                    $("#add_product_btn").text('Add Product');
                    $("#add_product_form")[0].reset();
                    $("#addProductModal").modal('hide');
                }
            });
        });

        // edit Product ajax request
        $(document).on('click', '.editIcon', function(e) {
            e.preventDefault();
            let id = $(this).attr('id');
            $.ajax({
                url: '{{ route('productedit') }}',
                method: 'get',
                data: {
                    id: id,
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    $(".title").val(response.title);
                    $(".description").val(response.description);
                    $("#image").html(
                        `<img src="storage/productimage/${response.image}" width="100" class="img-fluid img-thumbnail">`
                    );
                    $("#product_image").val(response.image);
                    $("#product_id").val(response.id);
                    $(".price").val(response.price);
                    $(".quantity").val(response.quantity);
                    $(".catagory").val(response.catagory);
                    $(".discount_price").val(response.discount_price);
                }
            });
        });

        // update Product ajax request
        $("#edit_product_form").submit(function(e) {
            e.preventDefault();
            const fd = new FormData(this);
            $("#edit_product_btn").text('Updating...');
            $.ajax({
                url: '{{ route('productupdate') }}',
                method: 'post',
                data: fd,
                cache: false,
                contentType: false,
                processData: false,
                dataType: 'json',
                success: function(response) {
                    if (response.status == 200) {
                        Swal.fire(
                            'Updated!',
                            'Product Updated Successfully!',
                            'success'
                        )
                        fetchAllProducts();
                    }
                    $("#edit_product_btn").text('Update Product');
                    $("#edit_product_form")[0].reset();
                    $("#editProductModal").modal('hide');
                }
            });
        });

        // delete Product ajax request
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
                        url: '{{ route('productdelete') }}',
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
                            fetchAllProducts();
                        }
                    });
                }
            })
        });

        // fetch all Products ajax request
        fetchAllProducts();

        function fetchAllProducts() {
            $.ajax({
                url: '{{ route('productfetchall') }}',
                method: 'get',
                success: function(response) {
                    $("#show_all_product").html(response);
                    $("table").DataTable({
                        order: [0, 'desc']
                    });
                }
            });
        }
    });
</script>

</html>
