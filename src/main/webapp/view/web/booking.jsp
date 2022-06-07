<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link
	href="${pageContext.request.contextPath}/view/web/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/web/css/shop.css"
	type="text/css" media="screen" property="" />
<link href="${pageContext.request.contextPath}/view/web/css/style7.css"
	rel="stylesheet" type="text/css" media="all" />
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
			<jsp:include page="header.jsp"></jsp:include>
		</div>

		<jsp:include page="commontool.jsp"></jsp:include>
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<!-- tittle heading -->

			<!-- //tittle heading -->
			<!-- product left -->
			<div class="side-bar col-md-3">
				<div class="search-hotel">
					<h3 class="agileits-sear-head">Search Here..</h3>
					<form action="#" method="post">
						<input type="search" placeholder="Where you want to go?"
							name="search" required=""> <input type="submit" value=" ">
					</form>
				</div>
				<hr>
				<!-- price range -->
				<div class="range">
					<h3 class="agileits-sear-head">Price range</h3>
					<ul class="dropdown-menu6">
						<li>

							<div id="slider-range"></div> <input type="text" id="amount"
							style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>
					</ul>
				</div>
				<!-- //price range -->
				<hr>
				<!-- Type -->
				<c:set var="listType" value="${requestScope.listType }"></c:set>
				<div class="left-side">
					<h3 class="agileits-sear-head">Type of room</h3>
					<select class="form-control">
						<c:forEach var="type" items="${listType }">
							<option>${type.typeName}</option>
						</c:forEach>
					</select>
				</div>
				<!-- //discounts -->
				<hr>
				<!--preference -->
				<div class="left-side">
					<h3 class="agileits-sear-head">Convenient</h3>
					<ul>
						<c:set var="listConvenient"
							value="${requestScope.listConvenient }"></c:set>
						<c:forEach var="convenient" items="${listConvenient }">
							<li><input id="${convenient.conveId }" type="checkbox" value="${convenient.conveId }" class="checked">
							<span class="span"><label for="${convenient.conveId }"
								style="font-weight: unset;">${convenient.conveName }</label></span></li>
						</c:forEach>
					</ul>
				</div>
				<!-- // preference -->

				<!-- rating -->
				<div class="left-side">
					<h3 class="agileits-sear-head">Rating</h3>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="ratingbtn"
							id="ratingbtn1" checked> <label
							style="font-weight: unset;" class="form-check-label"
							for="ratingbtn1"> Very Satisfied </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="ratingbtn"
							id="ratingbtn2"> <label style="font-weight: unset;"
							class="form-check-label" for="ratingbtn2"> Satisfied </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="ratingbtn"
							id="ratingbtn3"> <label style="font-weight: unset;"
							class="form-check-label" for="ratingbtn3"> Neutral </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="ratingbtn"
							id="ratingbtn4"> <label style="font-weight: unset;"
							class="form-check-label" for="ratingbtn4"> Dissatisfied </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="ratingbtn"
							id="ratingbtn5"> <label style="font-weight: unset;"
							class="form-check-label" for="ratingbtn5"> Very
							Dissatisfied </label>
					</div>

				</div>
				<!-- End rating -->

				<hr>
				<div class="left-side">
					<h3 class="agileits-sear-head">Location</h3>
					<label style="font-weight: unset;">Province</label> <select
						class="form-control">
						<option>Thành phố HCM</option>
						<option>Lâm Đồng</option>
						<option>Đà Nẵng</option>
						<option>Vũng Tàu</option>
						<option>Huế</option>
						<option>Hà Nội</option>
					</select> <label style="font-weight: unset; margin-top: 10px;">City</label>
					<select class="form-control">
						<option>Thành phố Thủ Đức</option>
						<option>Tân Bình</option>
						<option>Phú Nhuận</option>
						<option>Gò Vấp</option>
						<option>Hốc môn</option>
						<option>Quận 1</option>
						<option>Quận ...</option>
					</select> <label style="font-weight: unset; margin-top: 10px;">District</label>
					<select class="form-control">
						<option>...</option>
						<option>...</option>
						<option>...</option>
						<option>...</option>
						<option>...</option>
						<option>...</option>
						<option>...</option>
					</select>
				</div>
				<div class="clearfix"></div>
				<br>
				<div style="text-align: right;">
					<button type="button" class="btn btn-primary">Filter</button>
				</div>

			</div>
			<!-- //product left -->
			<!-- product right -->
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">
					<div class="col-md-6 shop_left" style="margin-top: 6px;">
						<!-- <img src="images/banner3.jpg" alt="">
						<h6>40% off</h6> -->
						There are <span style="color: red;">${requestScope.totalRecords }</span>
						results
					</div>
					<div class="col-md-6 shop_right">
						<!-- <img src="images/banner2.jpg" alt="">
						<h6>50% off</h6> -->
						<div class="col-md-4" style="margin-top: 6px;">
							<label>Sorted by:</label>
						</div>
						<div class="col-md-8">
							<select class="form-control btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<option value="">Increase in price</option>
								<option value="">Decrease in price</option>
							</select>
						</div>

					</div>
					<div class="clearfix"></div>
					<c:set var="listRoom" value="${requestScope.listRoom}" />
					<c:set var="count" value="${1}" />
					<!-- product-sec1 -->
					<div class="product-sec1">
						<!--/mens-->
						<!--  -->
						<c:forEach var="room" items="${listRoom }">


							<div class="row">
								<div class="col-md-4 product-men women_two">
									<div class="product-shoe-info shoe">
										<div class="men-pro-item">
											<div class="men-thumb-item">
												<img width="240" height="190"
													src="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"
													alt="">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<a href="${pageContext.request.contextPath}/single-post"
															class="link-product-add-cart">View</a>
													</div>
												</div>
												<span class="product-new-top">Active</span>
											</div>

										</div>
									</div>
								</div>
								<div class="col-md-8 info-product-price">
									<div class="item-info-product"
										style="text-align: left; margin-bottom: 15px;">
										<h4>
											<a href="single.html">${room.roomName }</a>
										</h4>
										<div class="clearfix"></div>
									</div>
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">${room.price/1000 }k/day</span>
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
										<div>Loại phòng: ${room.typeName }</div>
										<div>${room.roomDesc }</div>
									</div>
								</div>
								<hr>
							</div>
						</c:forEach>

						<!-- //paging -->
						<c:choose>

							<c:when test="${param.action == 'sort'}">
								<ul class="pagination">

									<c:if test="${currentPage != 1}">
										<li class="page-item"><a
											href="product?action=sort&direction=${param.direction}&by=${param.by}&page=${currentPage - 1}">Previous</a></li>
									</c:if>
									<c:forEach begin="1" end="${noOfPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="page-link">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="product?action=sort&direction=${param.direction}&by=${param.by}&page=${i}"
													class="page-link">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${currentPage lt noOfPages}">
										<li class="page-item"><a
											href="product?action=sort&direction=${param.direction}&by=${param.by}&page=${currentPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</c:when>

							<c:when test="${param.action == 'listBy'}">
								<ul class="pagination">

									<c:if test="${currentPage != 1}">
										<li class="page-item"><a
											href="product?action=listBy&category=${param.category}&page=${currentPage - 1}">Previous</a></li>
									</c:if>
									<c:forEach begin="1" end="${noOfPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="page-link">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="product?action=listBy&category=${param.category}&page=${i}"
													class="page-link">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:if test="${currentPage lt noOfPages}">
										<li class="page-item"><a
											href="product?action=listBy&category=${param.category}&page=${currentPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</c:when>

							<c:when test="${param.action == 'search'}">
								<ul class="pagination">

									<c:if test="${currentPage != 1}">
										<li class="page-item"><a
											href="product?action=search&by=${param.by}&keyword=${param.keyword}&page=${currentPage - 1}">Previous</a></li>
									</c:if>
									<c:forEach begin="1" end="${noOfPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item"><a class="page-link">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a
													href="product?action=search&by=${param.by}&keyword=${param.keyword}&page=${i}"
													class="page-link">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:if test="${currentPage lt noOfPages}">
										<li class="page-item"><a
											href="product?action=search&by=${param.by}&keyword=${param.keyword}&page=${currentPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</c:when>

							<c:otherwise>
								<div class="row text-center">
									<ul class="pagination">
										<c:if test="${currentPage != 1}">
											<li class="page-item"><a
												href="${path}?page=${currentPage - 1}">Previous</a></li>
										</c:if>
										<c:forEach begin="1" end="${noOfPages}" var="i">
											<c:choose>
												<c:when test="${currentPage eq i}">
													<li class="page-item"><a class="page-link">${i}</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item"><a href="${path}?page=${i}"
														class="page-link">${i}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>

										<c:if test="${currentPage lt noOfPages}">
											<li class="page-item"><a
												href="${path}?page=${currentPage + 1}">Next</a></li>

										</c:if>
									</ul>
								</div>
							</c:otherwise>

						</c:choose>

					</div>


					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

	</div>


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
	<!-- cart-js -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(
				function() {
					$("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 9000,
								values : [ 50, 6000 ],
								slide : function(event, ui) {
									$("#amount").val(
											"$" + ui.values[0] + " - $"
													+ ui.values[1]);
								}
							});
					$("#amount").val(
							"$" + $("#slider-range").slider("values", 0)
									+ " - $"
									+ $("#slider-range").slider("values", 1));

				}); //]]>
	</script>
	<!-- //price range (top products) -->

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


</body>

</html>