<!DOCTYPE html>
<html>

<head>
    @include('home.css')
</head>

<body>
    <div class="hero_area">

        <!-- header section -->
        @include('home.header')
        <!-- end header section -->


        <!-- product section -->
        @include('home.product_view')
        <!-- end product section -->

        <!-- Start of Comment System -->

        <div style="text-align: center; padding-bottom: 30px;">
            <h1 style="text-align: center; font-size: 30px; padding-top: 20px;">Comments</h1>
            <form action="{{ url('add_comment') }}" method="POST">
                @csrf
                <textarea style="height: 150px; width: 600px;" placeholder="Write your Comment here" name="comment">

            </textarea>
                <br>
                <input href="" class="btn btn-success btn-sm" type="submit" value="Submit"></input>
            </form>
        </div>
        @foreach ($comments as $comment)
            <div style="padding-left: 20px">
                <b>{{ $comment->name }}</b>
                <p>{{ $comment->comment }}</p>
                <a href="javascript::void(0);" onclick="reply(this)" style="color:blue;"
                    data-Commentid="{{ $comment->id }}">Reply</a>

                @foreach ($replies as $reply)
                    @if ($reply->comment_id == $comment->id)
                        <div style="padding-left: 3%; padding-bottom:10px;">
                            <b>{{ $reply->name }}</b>
                            <p>{{ $reply->reply }}</p>
                            <a href="javascript::void(0);" onclick="reply(this)" style="color:green;"
                                data-Commentid="{{ $comment->id }}">Reply</a>
                        </div>
                    @endif
                @endforeach
            </div>
        @endforeach
        <!-- Reply text box-->
        <div style="display: none;" class="replyDiv">
            <form action="{{ url('add_reply') }}" method="POST">
                @csrf
                <input type="text" id="commentId" name="commentId" hidden="">
                <textarea style="height: 100px; width: 500px;" name="reply" placeholder="Reply to Comments"></textarea>
                <br>
                <button type="submit" class="btn btn-primary btn-sm" style="color:black">Reply</button>
                <a href="javascript::void(0);" class="btn btn-warning btn-sm" onClick="reply_close(this)">Close</a>
            </form>
        </div>
        <!-- End of Reply text box-->
        <!-- End of Comment System -->


        <div class="cpy_">
            <p class="mx-auto">© 2021 All Rights Reserved By <a href="https://html.design/">Free Html Templates</a><br>

                Distributed By <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>

            </p>
        </div>
        @include('home.script')

        <script type="text/javascript">
            function reply(caller) {
                document.getElementById('commentId').value = $(caller).attr('data-Commentid');
                $('.replyDiv').insertAfter($(caller));
                $('.replyDiv').show()
            }

            function reply_close(caller) {

                $('.replyDiv').hide()
            }



            document.addEventListener("DOMContentLoaded", function(event) {
                var scrollpos = localStorage.getItem('scrollpos');
                if (scrollpos) window.scrollTo(0, scrollpos);
            });

            window.onbeforeunload = function(e) {
                localStorage.setItem('scrollpos', window.scrollY);
            };
        </script>
</body>

</html>
