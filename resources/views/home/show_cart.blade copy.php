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
                        <div class="card shadow">
                            <div class="card-header bg-danger d-flex justify-content-between align-items-center">
                                <h3 class="text-light">Manage Cart </h3>
                                {{--  <button class="btn btn-light" data-bs-toggle="modal"
                                    data-bs-target="#addCartModal"><i class="bi-plus-circle me-2"></i>Add New
                                    Cart </button>  --}}
                            </div>
                            <div class="card-body responsive-card-table unstriped" id="show_all_cart">
                                <h1 class="text-center text-secondary my-5">Loading...</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
{{--  <div>Lets check if its working {{ $totalprice }}</div>  --}}
<div class="container ">
    <div class="col-md-12 text-center">
        <h1 style="font-size: 25px; padding-bottom:15px;">Proceed to Order</h1>
        <style>.btn{
            font-size: 20px;
            color:black;
        }</style>
        <a href="{{ url('cash_order') }}"><button type="button" class="btn btn-primary">  Cash on Delivery</button></a>
        <a href=""><button type="button" class="btn btn-warning">Pay using Card</button></a>
        {{--  <a href="{{ url('stripe',$totalprice) }}"><button type="button" class="btn btn-warning">Pay using Card</button></a>  --}}
    </div>
</div>
    </div>



      <!-- footer start -->
      @include('home.footer')
      <!-- footer end -->
      <div class="cpy_">
         <p class="mx-auto">© 2021 All Rights Reserved By <a href="#">ViPrak Web Solutions</a><br>

            Designed Theme By <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>

         </p>
      </div>

    </body>
    @include('home.script')
   <script>
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
                url: "{{ route('cartfetchall') }}",
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
</script>
</html>
