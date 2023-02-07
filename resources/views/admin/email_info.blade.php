<!DOCTYPE html>
<html lang="en">
  <head>

    @include('admin.css')

    <style>
        label{
            display: inline-block;
            width: 300px;
            font-size: 15px;
            font-weight: bold;
        }
    </style>
  </head>
  <body>
    <div class="container-scroller">

      <!-- partial:partials/_sidebar.html -->
      @include('admin.sidebar')
      <!-- partial -->

        <!-- partial:partials/_navbar.html -->
        @include('admin.navbar')
        <!-- partial -->


        <div class="main-panel">
            {{--  <div class="content-wrapper">  --}}
            <div class="container-fluid">

                <h1 style="text-align:center; font-size: 25px;">Send Email to :- {{ $order->email }}</h1>
            <form action="{{  url('send_user_email',$order->id) }}" method="POST">
                @csrf
                <div style="padding-left: 35%; padding-top: 30px;">
                    <label>Email Greeting :</label>
                    <input type="text" name="greeting" id="greeting">
                </div>
                <div style="padding-left: 35%; padding-top: 30px;">
                    <label>Email First Line :</label>
                    <input type="text" name="firstline" id="firstline">
                </div>
                <div style="padding-left: 35%; padding-top: 30px;">
                    <label>Email Body :</label>
                    <input type="text" name="body" id="body">
                </div>
                <div style="padding-left: 35%; padding-top: 30px;">
                    <label>Email Button name :</label>
                    <input type="text" name="button" id="button">
                </div>
                <div style="padding-left: 35%; padding-top: 30px;">
                    <label>Email Url :</label>
                    <input type="text" name="url" id="url">
                </div>
                <div style="padding-left: 35%; padding-top: 30px;">
                    <label>Email Last Line :</label>
                    <input type="text" name="lastline" id="lastline">
                </div>
                <div style="padding-left: 45%; padding-top: 20px;">
                    <input type="submit" name="Send Email" id="send" class="btn btn-primary btn-sm" style="color: black ">
                </div>

            </form>
        <!-- main-panel ends -->
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->

    <!-- plugins:js -->
    @include('admin.script')

    <!-- End custom js for this page -->

</body>
</html>
