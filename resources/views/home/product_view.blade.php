<!-- product section -->
<section class="product_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">

            <div>
                <form action="{{ url('search_product') }}" method="POST">
                    @csrf
                    <input type="text" name="search" placeholder="Search For Products" style="width: 500px">
                    <input type="submit" value="Search">
                </form>
            </div>
        </div>
        @if (session()->has('message'))
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
            {{ session()->get('message') }}
        </div>
    @endif


        <div class="row">
            @foreach ($products as $product)
            <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="box">
                    <div class="option_container">
                        <div class="options">
                            <a href="{{ url('product_details',$product->id ) }}" class="option1">
                                {{$product->title}}
                            </a>
                            <form action="{{ url('add_cart',$product->id ) }}" method="POST">
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
                    <div class="img-box">
                        <img src="/storage/productimage/{{$product->image}}" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            {{$product->title}}
                        </h5>

                        @if($product->discount_price!=null)
                        <h6 style="color:blue">
                            &#x20B9; {{$product->discount_price}}

                        </h6>
                        <h6 style="color:red">
                            <del>&#x20B9; {{$product->price}} </del>
                        </h6>
                        @else
                        <h6 >
                            &#x20B9; {{$product->price}}
                        </h6>
                        @endif
                    </div>
                </div>
            </div>
            @endforeach
           <span style="padding-top: 20px;">
            {!!$products->appends(Request::all())->links('pagination::bootstrap-5')!!}
        </span>
        </div>
        <div class="btn-box">
            <a href="">
                View All products
            </a>
        </div>
    </div>
</section>
<!-- end product section -->
