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

<!-- Linked datepicker -->
<link
	href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
	rel='stylesheet'>

<style>
.main-filter {
	background: #b0a7a7;
}

.ui-datepicker {
	margin-top: 0px;
	margin-bottom: 0px;
	width: 20em;
}

.ui-state-default, .ui-widget-content .ui-state-default {
	border-radius: 0px;
	height: fit-content;
	width: 29.33px;
}

.ui-slider-handle {
	display: none;
}
</style>
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
				<div class="search-hotel main-filter" style="padding: 10px 10px;">
					<h3 class="agileits-sear-head">Điểm đến:</h3>
					<form action="booking" method="get">
						<input type="search" style="color: black;"
							placeholder="${param.city!=null?param.city:'Chọn điểm đến' }"
							value="${param.city!=null?param.city:null }" name="city" required>
						<input type="submit">

						<div style="margin-top: 15px;" class="form-group">
							<label for="pwd">Ngày đến:</label> <input autocomplete="false"
								type="text" name="startDate" id="my_date_picker1"
								class="form-control"
								placeholder="${param.startDate!=null?param.startDate:'MM/dd/yyyy' }"
								value="${param.startDate!=null?param.startDate:null }" required>
						</div>

						<div style="margin-top: 15px;" class="form-group">
							<label for="pwd">Ngày về:</label> <input type="text"
								name="endDate" id="my_date_picker2" class="form-control"
								placeholder="${param.endDate!=null?param.endDate:'MM/dd/yyyy' }"
								value="${param.endDate!=null?param.endDate:null }" required>
						</div>

						<div style="text-align: right;">
							<button type="submit" class="btn btn-primary"
								style="width: 100px;">Lưu</button>
						</div>
					</form>
				</div>

				<hr>
				<!-- price range -->
				<form action="" method="post">
					<div class="range">
						<h3 class="agileits-sear-head">Price range</h3>

						<ul class="dropdown-menu6">
							<li>
								<div id="slider-range"></div> <input type="text" id="amount"
								style="border: 0; color: #ffffff; font-weight: normal;" />
							</li>
						</ul>
					</div>

				</form>
				<!-- //price range -->

				<form action="booking" method="get">
					<input type="hidden" name="city" value="${param.city }"> <input
						type="hidden" name="startDate" value="${param.startDate }">
					<input type="hidden" name="endDate" value="${param.endDate }">
					<input type="hidden" name="filter" value="true">
					<!-- Loai cho o -->
					<hr>
					<!-- Type -->
					<c:set var="listBuildingType"
						value="${requestScope.listBuildingType }"></c:set>
					<div class="left-side">
						<h3 class="agileits-sear-head">Loại chỗ ở</h3>
						<ul>
							<c:forEach var="type" items="${listBuildingType }">
								<li><input id="${type.buildingType}" type="checkbox"
									value="${type.buildingType}" class="checked"
									name="buildingType"
									<c:forEach var="item" items="${buildingType}">
										<c:if test="${item eq type.buildingType}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"> <label for="${type.buildingType}"
										style="font-weight: unset;">${type.buildingType}</label></span></li>
							</c:forEach>
						</ul>
					</div>

					<!-- Concept -->
					<hr>
					<!-- Type -->
					<c:set var="listType" value="${requestScope.listType }"></c:set>
					<div class="left-side">
						<h3 class="agileits-sear-head">Concept</h3>
						<ul>
							<c:forEach var="type" items="${listType }">
								<li><input id="${type.typeId}" type="checkbox"
									value="${type.typeId}" class="checked" name="concept"
									<c:forEach var="item" items="${conceptChoose}">
										<c:if test="${item eq type.typeId}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"><label for="${type.typeId}"
										style="font-weight: unset;">${type.typeName}</label></span></li>
							</c:forEach>
						</ul>
					</div>
					<!-- //discounts -->
					<hr>
					<!--preference -->
					<div class="left-side">
						<h3 class="agileits-sear-head">Tiện nghi</h3>
						<ul>
							<c:set var="listConvenient"
								value="${requestScope.listConvenient }"></c:set>
							<c:forEach var="convenient" items="${listConvenient }">
								<li><input id="${convenient.conveId }" type="checkbox"
									value="${convenient.conveId }" class="checked"
									name="convenientOption"
									<c:forEach var="item" items="${convenientChoose}">
										<c:if test="${item eq convenient.conveId}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"><label for="${convenient.conveId }"
										style="font-weight: unset;">${convenient.conveName }</label></span></li>
							</c:forEach>
						</ul>
					</div>
					<!-- // preference -->
					<hr>
					<!-- rating -->
					<div class="left-side">
						<h3 class="agileits-sear-head">Xếp hạng đánh giá</h3>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn1" value="4.5"
								<c:if test="${requestScope.ratingScale >=4 }">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn1"> Tuyệt vời (Từ 4 đến 5 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn2" value="3.5"
								<c:if test="${requestScope.ratingScale >=3 and  requestScope.ratingScale <4}">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn2"> Tốt (Từ 3 đến 4 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn3" value="2.5"
								<c:if test="${requestScope.ratingScale >=2 and  requestScope.ratingScale <3}">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn3"> Bình Thường (Từ 2 đến 3 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rating"
								id="ratingbtn4" value="1.5"
								<c:if test="${requestScope.ratingScale <2 and requestScope.ratingScale != 0}">
									checked
								</c:if>>
							<label style="font-weight: unset;" class="form-check-label"
								for="ratingbtn4"> Tệ (Dưới 2 <i
								style="color: rgb(223, 223, 47);" class="fa fa-star"
								aria-hidden="true"></i>)
							</label>
						</div>
					</div>
					<!-- End rating -->

					<hr>
					<div class="left-side">
						<h3 class="agileits-sear-head">Thành Phố/ Quận/ Huyện</h3>
						<ul>
							<c:set var="listDistrict" value="${requestScope.listDistrict }"></c:set>
							<c:forEach var="district" items="${listDistrict }">
								<li><input id="${district.districtId }" type="checkbox"
									value="${district.districtId }" class="checked"
									name="districtOption"
									<c:forEach var="item" items="${districtChoose}">
										<c:if test="${item eq district.districtId}">
									    	checked
									  	</c:if>
									</c:forEach>>
									<span class="span"><label for="${district.districtId }"
										style="font-weight: unset;">${district.districtName }</label></span></li>
							</c:forEach>
						</ul>
					</div>
					<div class="clearfix"></div>
					<br>
					<div style="text-align: right;">
						<a type="button"
							href="${pageContext.request.contextPath}/booking?city=${param.city}&startDate=${param.startDate}&endDate=${param.endDate}"
							class="btn btn-primary">Xóa bộ lọc</a>
						<button type="submit" class="btn btn-primary"
							style="width: 100px;">Lọc</button>
					</div>
				</form>
			</div>
			<!-- //product left -->

			<c:url var="SortUrl" value="booking">
				<c:param name="city" value="${param.city}" />
				
				<c:param name="startDate" value="${param.startDate}" />
				
				<c:param name="endDate" value="${param.endDate}" />
				
				<c:forEach var="item" items="${buildingType}">
					<c:param name="buildingType" value="${item}" />
				</c:forEach>
				
				<c:forEach var="item" items="${conceptChoose}">
					<c:param name="concept" value="${item}" />
				</c:forEach>
				
				<c:forEach var="item" items="${convenientChoose}">
					<c:param name="convenientOption" value="${item}" />
				</c:forEach>
				
				<c:if test="${ratingScale != 0 }">
					<c:param name="rating" value="${ratingScale}" />
				</c:if>
				
				<c:forEach var="item" items="${districtChoose}">
					<c:param name="districtOption" value="${item}" />
				</c:forEach>
			</c:url>
			
			<!-- product right -->
			<div class="left-ads-display col-md-9">
				<div class="wrapper_top_shop">
					<div class="col-md-8 shop_left" style="margin-top: 6px;">
						<!-- <img src="images/banner3.jpg" alt="">
						<h6>40% off</h6> -->
						There are <span style="color: red;">${requestScope.totalRecords }</span>
						results
					</div>
					<div class="col-md-4">
						<div class="dropdown">
							<button style="width: 100%; background-color: gray;"
								class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								${param.sort=='down'?'Sắp xếp giá giảm dần':'Sắp xếp giá tăng dần' } <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" style="width: 100%;">
								<li><a href="${SortUrl}&sort=up">Sắp xếp giá tăng dần</a></li>
								<li><a href="${SortUrl}&sort=down">Sắp xếp giá giảm dần </a></li>
							</ul>
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
															class="link-product-add-cart">Xem chi tiết</a>
													</div>
												</div>
												<!--  <span class="product-new-top">Active</span>-->
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
											<li><a href="#"><i class="fa fa-star	"
													aria-hidden="true"></i></a></li>
										</ul>
										<div>Đánh giá: ${room.rating != 0?room.rating:'Chưa có đánh giá' }</div>
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
													<li class="page-item"><a class="page-link active">${i}</a></li>
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