<!DOCTYPE html>
<html lang="en">

<head>

    @include('admin.css')

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
        <div class="container-fluid">
            <div class="col-lg-12">
                    @include('admin.body')

        @include('admin.script')


</body>

</html>
