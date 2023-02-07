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
    </style>
</head>

{{-- add new Catagory modal start --}}
<div class="modal fade" id="addCatagoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" data-bs-backdrop="static"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Catagory </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="POST" id="add_catagory_form" enctype="multipart/form-data">
                @csrf
                <div class="modal-body p-4 bg-light">
                    <div class="row">
                        <div class="col-lg">
                            <label for="title">Name</label>
                            <input type="text" name="catagory_name" id="catagory_name" class="form-control"
                                placeholder="Catagory Name" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary input_color" data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="add_catagory_btn" class="btn btn-primary" style="color: black;">Add
                        Catagory </button>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- add new Catagory modal end --}}

{{-- edit Catagory modal start --}}
<div class="modal fade" id="editCatagoryModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    data-bs-backdrop="static" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Catagory </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="POST" id="edit_catagory_form" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="catagory_id" id="catagory_id">
                <div class="modal-body p-4 bg-light">
                    <div class="row">
                        <div class="col-lg">
                            <label for="name">Catagory Name</label>
                            <input type="text" name="catagory_name" id="catagory_name"
                                class="form-control catagory_name" placeholder="Catagory Name" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary input_color" data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="edit_catagory_btn" class="btn btn-success" style="color: black;">Update
                        Catagory
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- edit Catagory modal end --}}

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
                            <h3 class="text-light">Manage Catagory </h3>
                            <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#addCatagoryModal"><i
                                    class="bi-plus-circle me-2"></i>Add New
                                Catagory </button>
                        </div>
                        <div class="card-body" id="show_all_catagory">
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

        // add new Catagory ajax request
        $("#add_catagory_form").submit(function(e) {
            e.preventDefault();
            const fd = new FormData(this);
            $("#add_Catagory_btn").text('Adding...');
            $.ajax({
                url: '{{ route('catstore') }}',
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
                            'Catagory Added Successfully!',
                            'success'
                        )
                        fetchAllcatagory();
                    }
                    $("#add_catagory_btn").text('Add Catagory');
                    $("#add_catagory_form")[0].reset();
                    $("#addCatagoryModal").modal('hide');
                }
            });
        });

        // edit Catagory ajax request
        $(document).on('click', '.editIcon', function(e) {
            e.preventDefault();
            let id = $(this).attr('id');
            $.ajax({
                url: '{{ route('catedit') }}',
                method: 'get',
                data: {
                    id: id,
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    $(".catagory_name").val(response.catagory_name);
                    $("#catagory_id").val(response.id);
                }
            });
        });

        // update Catagory ajax request
        $("#edit_catagory_form").submit(function(e) {
            e.preventDefault();
            const fd = new FormData(this);
            $("#edit_catagory_btn").text('Updating...');
            $.ajax({
                url: '{{ route('catupdate') }}',
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
                            'Catagory Updated Successfully!',
                            'success'
                        )
                        fetchAllcatagory();
                    }
                    $("#edit_catagory_btn").text('Update Catagory');
                    $("#edit_catagory_form")[0].reset();
                    $("#editCatagoryModal").modal('hide');
                }
            });
        });

        // delete Catagory ajax request
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
                        url: '{{ route('catdelete') }}',
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

                            fetchAllcatagory();
                        }


                    });
                }
            })
        });

        // fetch all Catagory ajax request
        fetchAllcatagory();

        function fetchAllcatagory() {
            $.ajax({
                url: '{{ route('catfetchall') }}',
                method: 'get',
                success: function(response) {
                    console.log(response);
                    $("#show_all_catagory").html(response);
                    $("table").DataTable({
                        order: [0, 'desc']
                    });
                }
            });
        }
    });
</script>

</html>
