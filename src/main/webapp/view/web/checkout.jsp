<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="eng">

<head>
<title>Booking | CheckOut</title>
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
<link href="${pageContext.request.contextPath}/view/web/css/blog.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/view/web/css/rating.css"
	rel="stylesheet" type="text/css" media="all" />
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

<!-- Plugin CKEDITOR -->
<script
	src="${pageContext.request.contextPath}/view/common/ckeditor/ckeditor.js"></script>

<style>
.recommend {
	background-color: #bfba55;
	border-radius: 100px;
	border: none;
	transition: all 0.4s ease-in-out;
	margin-top: 10px;
	margin-bottom: 10px;
	font-weight: bold;
	font-size: 20px;
}

#panel {
	border: 1px solid #EDF2F7;
	font-size: 14px;
	box-shadow: 0px 1px 1px rgb(0 0 0/ 5%);
	font-weight: normal;
	line-height: 17px;
	border-radius: 8px;
	margin-bottom: 16px;
	background-color: #ffffff;
	padding-top: 20px;
	padding-bottom: 20px;
}
/*
.a {
	color: #ffffff;
	height: 32px;
	margin: -1px -1px 0;
	display: flex;
	padding: 8px 12px;
	font-size: 16px;
	background: linear-gradient(90deg, #00B6F3 0%, #007FF3 100%);
	align-items: center;
	font-weight: 600;
	line-height: 19px;
	border-radius: 8px 8px 0px 0px;
}*/
.b {
	width: 100%;
	display: flex;
	padding: 0 24px;
	width: 100%;
	display: flex;
	padding: 0 24px;
}

.c {
	display: flex;
	flex-wrap: wrap;
	font-size: 18px;
	max-width: 643px;
	align-items: center;
	font-weight: 600;
	line-height: 21px;
	padding-bottom: 10px;
}

.d {
	display: flex;
	align-items: center;
	padding-right: 24px;
}

.jss2311 {
	border: 1px solid #EDF2F7;
	padding: 24px 24px 16px 24px;
	font-size: 14px;
	box-shadow: 0px 1px 1px rgb(0 0 0/ 5%);
	margin-top: 16px;
	line-height: 17px;
	border-radius: 8px;
	background-color: #fff;
}

.jss2321 {
	display: flex;
	font-size: 14px;
	align-items: center;
	line-height: 17px;
}

.jss2312 {
	padding: 12px 0 8px;
	font-weight: 600;
}

.jss2313 {
	display: flex;
	align-items: center;
	margin-left: -9px;
}

.jss760 {
	display: flex;
	text-align: center;
	align-items: center;
	flex-direction: column;
}

.jss5455 {
	margin: -3px;
	display: flex;
	flex-wrap: wrap;
}

.jss5456 {
	margin: 3px;
	padding: 5px 8px;
	font-size: 12px;
	font-weight: 400;
	line-height: 14px;
	border-radius: 100px;
	background-color: #EDF2F7;
}

.jss5457 {
	color: #00B6F3;
	width: fit-content;
	cursor: pointer;
	margin-top: 6px;
	background-color: rgba(0, 182, 243, 0.1);
}

.dropbtn {
	background-color: #fff;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	right: 0;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #c8cbc8;
}

.discript span:nth-child(1), p:nth-child(1) {
	margin-top: 20px;
}

.tooltip {
	position: relative;
	display: inline-block;
	border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: black;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute;
	z-index: 1;
	bottom: 100%;
	left: 50%;
	margin-left: -60px;
	/* Fade in tooltip - takes 1 second to go from 0% to 100% opac: */
	opacity: 0;
	transition: opacity 1s;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
	opacity: 1;
}

body {
	background-color: #EDF2F7;
}

.form-field {
	margin-bottom: 10px;
}
</style>

</head>

<body>
	<!-- banner -->
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<jsp:include page="header.jsp"></jsp:include>
			</div>
		</div>

		<jsp:include page="commontool.jsp"></jsp:include>

	</div>

	<div style="width: 80%; margin-left: auto; margin-right: auto;">
		<div class="col-md-7">
			<div id="panel" class="main col-md-12" style="margin-top: 20px;">
				<div class="b row">
					<div class="col-md-3">
						<div class="grid images_3_of_2">
							<div class="flexslider">
								<div class="thumb-image">
									<img style="border-radius: 5px;"
										src="https://kienviet.net/wp-content/uploads/2021/02/13-1.jpg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-9">
						<div class="c">${building.buildingName }</div>
						<div class="d"
							style="display: flex; z-index: 1; position: sticky; transition: all .4s; align-items: center; border-bottom: 1px solid #E2E8F0;">
							<span style="width: 16px; height: 16px; margin-right: 6px;"><svg
									width="16" height="16" fill="none">
									<path
										d="M2 14v-1.333A2.667 2.667 0 014.667 10h2.666A2.667 2.667 0 0110 12.667V14m.667-11.913a2.667 2.667 0 010 5.166M14 14v-1.333a2.667 2.667 0 00-2-2.567M8.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0z"
										stroke="#4A5568" stroke-linecap="round"
										stroke-linejoin="round"></path></svg></span> <span
								class="MuiBox-root jss1071">Sức chứa tối đa 2 người</span> <span
								class="MuiBox-root jss1074"
								style="margin-left: 30%; width: 16px; height: 16px; margin-right: 6px;"><svg
									width="16" height="16" fill="none">
									<path
										d="M12 2H4a2 2 0 00-2 2v8a2 2 0 002 2h8a2 2 0 002-2V4a2 2 0 00-2-2z"
										stroke="#4A5568" stroke-miterlimit="10"
										stroke-linecap="square"></path>
									<path d="M11.333 11.333L5 5M11.334 8.333v3h-3M4.667 7.667v-3h3"
										stroke="#4A5568" stroke-miterlimit="10" stroke-linecap="round"
										stroke-linejoin="round"></path></svg></span><span
								class="MuiBox-root jss1075">${building.buildingArea } m2</span>
						</div>
						<div class="row" style="height: 75%;">
							<div class="col-md-12 discript">
								<div
									style="display: flex; font-size: 14px; font-weight: normal; line-height: 17px; padding-top: 8px;">
									<svg width="16" height="16" fill="none">
									<path d="M8 9.333a2 2 0 100-4 2 2 0 000 4z" stroke="#1A202C"
											stroke-linecap="round" stroke-linejoin="round"></path>
									<path
											d="M11.771 11.105l-2.828 2.828a1.333 1.333 0 01-1.885 0l-2.83-2.828a5.333 5.333 0 117.543 0v0z"
											stroke="#1A202C" stroke-linecap="round"
											stroke-linejoin="round"></path></svg>
									<p> Địa chỉ: ${building.buildingAddress }</p>
								</div>
								<div class="row" style="margin-top: 10px;">
									<div class="col-md-6">Ngày đến: ${startDate }</div>
									<div class="col-md-6">Ngày về: ${endDate }</div>
								</div>

							</div>

						</div>
					</div>

				</div>
			</div>

			<div id="panel" class="main col-md-12">
				<form action="check-out" method="get">
					<h2 class="form-field">Xác nhận thông tin</h2>
					<label for="name">Khách hàng</label> <input
						class="form-control form-field" type="text"
						placeholder="tên khách hàng" name="name" id="name"
						value="${usersession.user.name }" disabled="disabled"> <label
						for="phone">Số điện thoại</label> <input
						class="form-control form-field" type="text"
						placeholder="tên khách hàng" name="phone" id="phone"
						value="${usersession.user.phoneNumber }" disabled="disabled">

					<label for="email">Email</label> <input
						class="form-control form-field" type="Email"
						placeholder="tên khách hàng" name="email" id="email"
						value="${usersession.user.email }" disabled="disabled"> <input
						type="checkbox" required="required" class="form-field">
					Tôi đã đọc kỹ thông tin <br>
					<div style="text-align: right;">
						<button type="submit" class="btn btn-primary">Xác nhận</button>
					</div>

				</form>
			</div>
		</div>


		<div id="panel" class="main2 col-md-4"
			style="margin-top: 20px; margin-left: 20px;">
			<img alt="" class="img-responsive"
				style="width: 432px; height: 114px; border-radius: 5px;"
				src="https://q-xx.bstatic.com/xdata/images/hotel/840x460/205684046.jpg?k=edd4b442376ac9cf1784cb06c8de0dc8a6037a871e50f060ba8bbcdc297cb74a&o=">
			<div>
				<b>${room.roomName } </b>
			</div>
			<div>
			<fmt:formatNumber var="roomPrice" value="${room.price }"
												type="currency" minFractionDigits="0" currencySymbol="" />
				<p >Giá: ${roomPrice } VNĐ/ 1 ngày</p>
			</div>
			<div>
				<p>${room.roomDesc }</p>
			</div>
			<div>
			
				<p>Số ngày ở: ${dateRange } ngày</p>
			</div>
			<div>
			<fmt:formatNumber var="total" value="${dateRange*room.price }"
												type="currency" minFractionDigits="0" currencySymbol="" />
				<p>Tổng tiền: ${total  } VNĐ</p>
			</div>
			
			<div>
				<p>Note: Chưa bao gồm các chi phí dịch vụ</p>
			</div>
			
		</div>
	</div>


	<div class="clearfix"></div>

	</div>
	<!-- //top products -->

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

	<!-- CKEDITOR -->
	<script>
		CKEDITOR.replace('message');
	</script>

	<!-- /nav -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!-- single -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>

	<!-- FlexSlider -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
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



	<!-- Rating js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/rating.js"></script>

	<!-- Fade -->
	<script>
		$(document).ready(function() {
			$("#flip").click(function() {
				$("#panel").slideToggle("slow");
			});
		});
	</script>


</body>

</html>