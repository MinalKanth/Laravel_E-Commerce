<!DOCTYPE html>
<html>
@include('home.css')

<body>
    <div class="hero_area">

        <!-- header section -->
        @include('home.header')
        <!-- end header section -->

        <div class="col-sm-6 col-md-4 col-lg-4" style="margin: auto; padding: 30px">
            <div class="box">
                <div class="img-box">
                    <img src="/storage/productimage/{{ $product->image }}" alt="">
                </div>
                <div class="detail-box">
                    <h5>
                        {{ $product->title }}
                    </h5>

                    @if ($product->discount_price != null)
                        <h6 style="color:blue">
                            &#x20B9; {{ $product->discount_price }}

                        </h6>
                        <h6 style="color:red">
                            <del>&#x20B9; {{ $product->price }} </del>
                        </h6>
                    @else
                        <h6>
                            &#x20B9; {{ $product->price }}
                        </h6>
                    @endif
                    <h6>Product Catagory: {{ $product->catagory }}</h6>
                    <h6>Product Details: {{ $product->description }}</h6>
                    <h6>Availabe Quantity: {{ $product->quantity }}</h6>


                    <form action="{{ url('add_cart', $product->id) }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-4">
                                <input type="number" name="quantity" min="1" value="1">
                            </div>
                            <div class="col-md-4">
                                <input type="submit" value="Add to Cart" class="btn btn-success">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <!-- footer start -->
        @include('home.script')
        @include('home.footer')
        <!-- footer end -->
        <div class="cpy_">
            <p class="mx-auto">© 2023 All Rights Reserved By <a href="http://www.viprak.com/">ViPrak Web
                    Solutions</a><br>

            </p>
        </div>

</body>

@include('home.script')

</html>
