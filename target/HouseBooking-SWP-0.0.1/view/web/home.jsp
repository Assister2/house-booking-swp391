<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="eng">

    <head>
        <title>House Booking</title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>
        <!-- //custom-theme -->
        <link href="${pageContext.request.contextPath}/view/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/view/web/css/shop.css" type="text/css" media="screen" property="" />
        <link href="${pageContext.request.contextPath}/view/web/css/style7.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${pageContext.request.contextPath}/view/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome-icons -->
        <link href="${pageContext.request.contextPath}/view/web/css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
              rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>

    <body>
        <!-- banner -->
        <div class="banner_top" id="home">
            <div class="wrapper_top_w3layouts">

                <!-- Nav -->
                <jsp:include page="header.jsp"></jsp:include>
                    <!-- End navbar -->

                    <!-- /slider -->
                    <div class="slider">
                        <div class="callbacks_container">
                            <ul class="rslides callbacks callbacks1" id="slider4">

                                <li>
                                    <div class="banner-top2">
                                        <div class="banner-info-wthree">
                                            <h3>Vũng Tàu</h3>
                                            <p>See how good they feel.</p>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="banner-top3">
                                        <div class="banner-info-wthree">
                                            <h3>Đà Nẵng</h3>
                                            <p>See how good they feel.</p>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="banner-top">
                                        <div class="banner-info-wthree">
                                            <h3>Sài Gòn</h3>
                                            <p>See how good they feel.</p>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="banner-top1">
                                        <div class="banner-info-wthree">
                                            <h3>Đà Lạt</h3>
                                            <p>For All Walks of Life.</p>

                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!-- //slider -->
                    <!--
                    <ul class="top_icons">
                            <li><a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a></li>
                            <li><a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a></li>
                            <li><a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a></li>
                            <li><a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a></li>

                    </ul> 
                    -->
                </div>
            </div>  
            <!-- //banner -->
            <!-- /girds_bottom-->
            <div class="grids_bottom">
                <div class="style-grids">
                    <div class="col-md-6 style-grid style-grid-1">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/view/web/images/anh1.jpeg" alt="shoe">
                </div>
            </div>
            <div class="col-md-6 style-grid style-grid-2">
                <a href="${pageContext.request.contextPath}/booking">
                        <div style="background-image: linear-gradient(#48b1bf, #ffdde1); height: 412.5px;" class="style-image-1_info">
                            <div class="style-grid-2-text_info">
                                <h3>CARE YOUR TRIP</h3>
                                <p>Chỗ này thêm description nè, mấy fen thêm dô đi, tui k biết thêm j hết á!</p>
                                <div class="shop-button">
                                    <a href="${pageContext.request.contextPath}/booking">Book now</a>
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="style-image-2">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/view/web/images/anh2.jpg" alt="shoe">
                        <div class="style-grid-2-text">
                            <h3>Have a good time!!</h3>
                        </div>
                    </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //grids_bottom-->

    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
        <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- js -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <!-- /nav -->
    <script src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
    <script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
    <!-- //nav -->
    <!-- cart-js -->
    <script src="${pageContext.request.contextPath}/view/web/js/minicart.js"></script>
    <script>
shoe.render();

shoe.cart.on('shoe_checkout', function (evt) {
    var items, len, i;

    if (this.subtotal() > 0) {
        items = this.items();

        for (i = 0, len = items.length; i < len; i++) {
        }
    }
});
    </script>
    <!-- //cart-js -->
    <!--search-bar-->
    <script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
    <!--//search-bar-->
    <script src="${pageContext.request.contextPath}/view/web/js/responsiveslides.min.js"></script>
    <script>
$(function () {
    $("#slider4").responsiveSlides({
        auto: true,
        pager: true,
        nav: true,
        speed: 1000,
        namespace: "callbacks",
        before: function () {
            $('.events').append("<li>before event fired.</li>");
        },
        after: function () {
            $('.events').append("<li>after event fired.</li>");
        }
    });
});
    </script>
    <!-- js for portfolio lightbox -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/move-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/easing.js"></script>
    <script type="text/javascript">
jQuery(document).ready(function ($) {
    $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({
            scrollTop: $(this.hash).offset().top
        }, 1000);
    });
});
    </script>
    <!-- //end-smoth-scrolling -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/bootstrap-3.1.1.min.js"></script>


</body>

</html>