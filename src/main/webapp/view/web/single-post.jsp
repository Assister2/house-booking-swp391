<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="eng">

<head>
<title>House Booking</title>
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

	<!-- //banner -->

	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">
							<li
								data-thumb="https://chefjob.vn/wp-content/uploads/2020/04/homestay-duoc-nhieu-du-khach-lua-chon.jpg">
								<div class="thumb-image">
									<img
										src="https://chefjob.vn/wp-content/uploads/2020/04/homestay-duoc-nhieu-du-khach-lua-chon.jpg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
							<li
								data-thumb="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg">
								<div class="thumb-image">
									<img
										src="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
							<li
								data-thumb="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg">
								<div class="thumb-image">
									<img
										src="https://cafefcdn.com/zoom/700_438/203337114487263232/2021/8/15/photo1629000329714-1629000329917385190227.jpeg"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h2 style="color: black;">${room.roomName }</h2>
				<div class="rating" style="margin-top: 10px;">
					<span class="fa fa-star checked"></span> <span
						class="fa fa-star checked"></span> <span
						class="fa fa-star checked"></span> <span
						class="fa fa-star checked"></span> <span
						class="fa fa-star-half-full"></span> <span
						style="margin-left: 5px; margin-right: 3px;">| 240</span> <span
						class="fa fa-user"></span>
				</div>
				<p>
					<span class="item_price">${room.price/1000 }k per day</span>
				</p>
				<div>
					<p style="font-size: 16px;">Concept của phòng: ${room.typeName }
					</p>
					<p style="font-size: 16px;">Mô tả: ${room.roomDesc }</p>
				</div>

				<!-- Booking -->

				<div>
					<a style="background-color: #00BCD4;" href="#addEmployeeModal"
						class="btn btn-success" data-toggle="modal">Đặt phòng</a>
				</div>

				<!-- ENd Booking -->

				<div class="responsive_tabs">
					<div id="horizontalTab">
						<ul class="resp-tabs-list">
							<li>Convenients</li>
							<li>More information</li>
							<li>Rules</li>
						</ul>
						<div class="resp-tabs-container">
							<!--/tab_one-->
							<div class="table-responsive">
								<table class="table table-striped">
									<tbody>
										<c:set var="count" value="${1 }"></c:set>
										<c:if test="${listConvenient[0] == null}">
											<td>Phòng chưa có tiện nghi nào :((</td>
										</c:if>
										<c:forEach var="item" items="${listConvenient }">

											<c:if test="${count%3 == 1 }">
												<tr>
											</c:if>
											<td>${item.conveName}</td>
											<c:if test="${count%3 == 0}">
												</tr>
											</c:if>

											<c:set var="count" value="${count + 1 }"></c:set>
										</c:forEach>
										<c:if test="${count%3 == 2}">
											<td></td>
											<td></td>
											</tr>
										</c:if>
										<c:if test="${count%3 == 0}">
											<td></td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>

							<!--//tab_one-->

							<div class="tab3">
								<div class="table-responsive">
									<table class="table table-striped">
										<tbody>
											<tr>
												<td>Tình trạng: Còn phòng</td>
												<td>Sức chứa (tối đa): 6 người</td>
											</tr>

											<tr>
												<td>Thời hạn cho thuê: Thương lượng</td>
												<td>Tiền Cọc: 50$</td>
											</tr>

											<tr>
												<td>Địa chỉ: Chỗ này ghi địa chỉ cụ thể, thành phố Đà
													Lạt, tỉnh Lâm Đồng</td>
												<td></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>

							<!-- tab 3 -->
							<div class="tab3">
								<div class="table-responsive">
									<table class="table table-striped">
										<tbody>
											<tr>
												<td>${room.rule }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
			<div class="clearfix"></div>
			<!--/tabs-->
			<hr>
			
			<!-- /new_arrivals -->
			<div style="width: 100%;">
				<div class="blog-single-post-thumb"
					style="width: 80%; margin: auto;">
					<div class="blog-comment">
						<h3>Comments</h3>
						<c:forEach var="item" items="${listFeedback }">
							<div class="media" style="margin-top: 20px;">
								<div class="media-object pull-left">
									<img style="width: 5.5em;"
										src="${pageContext.request.contextPath}/view/web/images/avatar.png"
										class="img-responsive img-circle" width="40" height="40"
										alt="Blog Image 11">
								</div>
								<div class="media-body">
									<h3 class="media-heading"> ${item.userName }</h3>
									<span style="font-size: 12px;"> ${item.feedbackDate }</span>
									<p> ${item.comment } </p>
									<form action="single-post">
										<input type="hidden" name="rommId" value="${param.roomId }">
										<input type="hidden" name="feedbackId" value="${item.feedbackId }">
										<button type="submit" class="btn btn-danger btn-sm" style="padding: unset; margin-top: 5px;" >Report!</button>
									</form>
								</div>
							</div>
						</c:forEach>

						<div class="text-center">
							<a type="button" href="#">Xem tất cả bình luận</a>
						</div>
					</div>

					<div class="blog-comment-form">
						<h3>Leave a Comment</h3>
						<form action="#" method="post">
							<span class="star-rating"> <input type="radio"
								name="rating1" value="1"><i></i> <input type="radio"
								name="rating1" value="2"><i></i> <input type="radio"
								name="rating1" value="3"><i></i> <input type="radio"
								name="rating1" value="4"><i></i> <input type="radio"
								name="rating1" value="5"><i></i>
							</span> <input type="text" class="form-control" placeholder="Name"
								name="name" required> <input type="email"
								class="form-control" placeholder="Email" name="email" required>
							<textarea name="message" rows="5" class="form-control"
								id="message" placeholder="Message" message="message"
								required="required"></textarea>
							<div class="col-md-3 col-sm-4">
								<input name="submit" type="submit" class="form-control"
									id="submit" value="Post Your Comment">
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- //womens -->
			<div class="clearfix"></div>
			<!--//comment zone-->
			<!--//tabs-->
			<hr>
			<!-- /new_arrivals -->
			<div class="new_arrivals">
				<h3>Near this place</h3>
				<!-- /womens -->
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
									<!-- <div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Bella Toes">
											<input type="hidden" name="amount" value="675.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img width="269" height="221"
									src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
									alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">View</a>
									</div>
								</div>
								<span class="product-new-top">Còn phòng</span>
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Homestay Đà Lạt</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">$200/day</span>
											</div>
										</div>
										<ul class="stars">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>..., gần chợ Đà Lạt, tiện nghi cực đã, giá mềm, k
											thuê phí cả đời</div>
									</div>
									<!-- <div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Bella Toes">
											<input type="hidden" name="amount" value="675.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div> -->
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- //womens -->
				<div class="clearfix"></div>
			</div>
			<!--//new_arrivals-->


		</div>
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

</body>

</html>