<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="eng">

<head>
<title>House Booking</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
<link
	href="${pageContext.request.contextPath}/view/web/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/web/css/shop.css"
	type="text/css" media="screen" property="" />
<link href="${pageContext.request.contextPath}/view/web/css/style7.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/web/css/flexslider.css"
	type="text/css" media="screen" />
<link
	href="${pageContext.request.contextPath}/view/web/css/easy-responsive-tabs.css"
	rel='stylesheet' type='text/css' />
<!-- Owl-carousel-CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/view/web/css/jquery-ui1.css">
<link href="${pageContext.request.contextPath}/view/web/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link
	href="${pageContext.request.contextPath}/view/web/css/font-awesome.css"
	rel="stylesheet">
<!-- //font-awesome-icons -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">

<!-- Linked datepicker -->
<link
	href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
	rel='stylesheet'>
<style>
.cpn1 {
	border: 0px solid #38374c;
	border-radius: 12px;
	padding: 15px;
	box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px,
		rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
}

.lbDiadiem {
	color: #4A5568;
	font-size: 12px;
	text-align: left;
	font-weight: 400;
	line-height: 14px;
}

.center {
	margin: auto;
	width: 80%;
	padding: 10px;
}

.ui-datepicker {
	margin-top: 0px;
	margin-bottom: 0px;
	width: 20em;
}

.h1 {
	color: #6bc4ac;
	font-size: 52px;
	font-weight: 800;
	line-height: 72px;
	margin: 30px 0 15px;
	text-align: center;
	text-transform: uppercase;
}

h2 {
	color: #6bc4ac;
	font-size: 32px;
	font-weight: 800;
	line-height: 72px;
	margin: 30px 0 15px;
	text-align: center;
	text-transform: uppercase;
}

.ui-state-default, .ui-widget-content .ui-state-default {
	border-radius: 0px;
	height: fit-content;
	width: 29.33px;
}

select {
	/* for Firefox */
	-moz-appearance: none;
	/* for Chrome */
	-webkit-appearance: none;
}

/* For IE10 */
select::-ms-expand {
	display: none;
}
</style>
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
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //banner -->


	<div class="fluid-container">
		<p class="h1">Nhanh chóng - Tiện lợi - An toàn</p>
		<div class="center">
			<form action="booking" method="post">
				<div class="row cpn1">
					<div class="col-md-3" style="margin-left: 6%;">
						<label class="lbDiadiem">Địa điểm</label>
						<div style="font-weight: normal; line-height: 17px;">
							<c:set var="listCity" value="${requestScope.listCity }"></c:set>
							<select class="form-control">
								<option value="" disabled selected>Bạn sắp đi đâu?</option>
								<c:set var="listCity" value="${requestScope.listCity }"></c:set>
								<c:forEach var="city" items="${listCity }">
									<option value="${city.cityId }">${city.cityName }</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="col-md-3">
						<label class="lbDiadiem">Ngày đến</label> <input type="text"
							id="my_date_picker1" class="form-control"
							placeholder="__/__/____">
					</div>

					<div class="col-md-3">
						<label class="lbDiadiem">Ngày về</label> <input type="text"
							id="my_date_picker2" class="form-control"
							placeholder="__/__/____">
					</div>

					<div class="col-md-2" style="text-align: center; margin-top: 5px;">
						<button type="submit" 9class="btn btn-danger btn-lg"
							style="text-align: center; height: 50px; width: 100px;">
							<i class="fa fa-search-plus"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
		<hr style="width: 50%; text-align: center;">
		<div class="text-center" style="margin: 30px auto;">
			<h2>Những địa điểm du lịch nổi tiếng</h2>

			<div class="row center">
				<div class="col-md-2">
					<img class="img-responsive" style="border-radius: 50%;" alt=""
						src="https://hoangviettravel.vn/wp-content/uploads/2020/05/tour-phu-quoc-3-ngay-2-dem-1-min.jpg">
					<br>
					<h4>Phú Quốc</h4>
				</div>

				<div class="col-md-2">
					<img class="img-responsive" style="border-radius: 50%;" alt=""
						src="https://dulich9.com/wp-content/uploads/2019/05/Diem-du-lich-Nha-Trang.jpg">
					<br>
					<h4>Nha Trang</h4>
				</div>

				<div class="col-md-2">
					<img class="img-responsive" style="border-radius: 50%;" alt=""
						src="https://images.foody.vn/res/g10/97019/s800/foody-buu-dien-thanh-pho-ho-chi-minh-748-636527632924027650.jpg">
					<br>
					<h4>TP Hồ Chí Minh</h4>
				</div>

				<div class="col-md-2">
					<img class="img-responsive" style="border-radius: 50%;" alt=""
						src="https://hoianit.com/wp-content/uploads/2021/07/hoa-giay-hoi-an-800x800.jpg">
					<br>
					<h4>Hội An</h4>
				</div>

				<div class="col-md-2">
					<img class="img-responsive" style="border-radius: 50%;" alt=""
						src="http://reviewvilla.vn/wp-content/uploads/2022/03/art-homestay-vung-tau-8.jpg">
					<br>
					<h4>BR - VT</h4>
				</div>

				<div class="col-md-2">
					<img class="img-responsive" style="border-radius: 50%;" alt=""
						src="https://motogo.vn/wp-content/uploads/2020/02/O1HMsGK3ini3tjjM2jYmL00tRdfjrry8.jpeg">
					<br>
					<h4>Đà Lạt</h4>
				</div>
			</div>
		</div>

	</div>


	<div class="clearfix"></div>

	<!-- //grids_bottom-->

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- //footer -->
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- /nav -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
	<script
		src="${pageContext.request.contextPath}/view/web/js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : true,
				speed : 1000,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- js for portfolio lightbox -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/bootstrap-3.1.1.min.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">
		
	</script>
	<script>
		$(document).ready(
				function() {

					$(function() {
						$("#my_date_picker1").datepicker({});
					});

					$(function() {
						$("#my_date_picker2").datepicker({});
					});

					$('#my_date_picker1').change(
							function() {

								startDate = $(this).datepicker('getDate');
								$("#my_date_picker2").datepicker("option",
										"minDate", startDate);
							})

					$('#my_date_picker2').change(
							function() {
								endDate = $(this).datepicker('getDate');
								$("#my_date_picker1").datepicker("option",
										"maxDate", endDate);
							})
				})
	</script>
</body>

</html>