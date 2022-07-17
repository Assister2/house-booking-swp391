<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="eng">

<head>
<title>Booking | SinglePost</title>
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

.roomInfor p {
	margin-top: 5px;
	margin-bottom: 5px;
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

	<!-- //banner -->

	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf"
			style="width: 85%; margin-left: auto; margin-right: auto;">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">
							<li
								data-thumb="${pageContext.request.contextPath}${building.buildingImage }">
								<div class="thumb-image">
									<img style="height: auto; width: auto;"
										src="${pageContext.request.contextPath}${building.buildingImage }"
										data-imagezoom="true" class="img-responsive">
								</div>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h2 style="color: black;">${building.buildingName }</h2>
				<div class="rating" style="margin-top: 10px;">
					<span class="fa fa-star checked"></span> <span
						class="fa fa-star checked"></span> <span
						class="fa fa-star checked"></span> <span
						class="fa fa-star checked"></span> <span
						class="fa fa-star-half-full"></span> <span
						style="margin-left: 5px;">rất tốt<a href="#comment"
						class="scroll"> (Xem đánh giá)</a></span>
				</div>
				<p>
					<span class="item_price">Giá trung bình: 999k per day</span>
				</p>
				<div>
					<p style="font-size: 16px;">Loại: ${building.buildingType }</p>

					<p style="font-size: 16px;">Địa chỉ: ${building.buildingAddress }</p>
					<p style="font-size: 16px;">Mô tả: ${building.buildingDesc }</p>
				</div>

				<!-- Booking -->

				<div>
					<a type="button" href="#chonphong" class="btn btn-primary scroll">Chọn
						phòng</a>
				</div>

				<!-- ENd Booking -->



			</div>
			<div class="clearfix"></div>
			<!--/tabs-->

			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>Nơi này có gì?</li>
						<li>Chính sách</li>
						<li>Thông tin hữu ích</li>
						<li>Chủ sở hữu</li>
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									<c:set var="count" value="${1 }"></c:set>
									<c:if test="${listConvenient[0] == null}">
										<td>Không có thông tin</td>
									</c:if>
									<c:forEach var="item" items="${listConvenient }">

										<c:if test="${count%4 == 1 }">
											<tr>
										</c:if>
										<td>${item.conveName}</td>
										<c:if test="${count%4 == 0}">
											</tr>
										</c:if>

										<c:set var="count" value="${count + 1 }"></c:set>
									</c:forEach>
									<c:if test="${count%4 == 3}">
										<td></td>
										<td></td>
										<td></td>
										</tr>
									</c:if>
									<c:if test="${count%4 == 2}">
										<td></td>
										<td></td>
										</tr>
									</c:if>
									<c:if test="${count%4 == 1}">
										<td></td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>

						<!--//tab_one-->

						<div class="tab3">
							<p>${building.buildingRule }</p>
						</div>

						<!-- tab 3 -->
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

						<!--//tab_one-->

						<div class="tab4">
							<p>Chỗ này để chủ sở hữu</p>
						</div>

					</div>
				</div>
			</div>
		</div>

		<div class="chonphong" id="chonphong"
			style="background-color: #F7FAFC; padding-top: 20px; padding-bottom: 20px; margin-top: 30px;">
			<div style="width: 85%; margin-left: auto; margin-right: auto;">
				<h4 style="font-weight: bold;">Chọn phòng</h4>

				<div class="MuiBox-root jss2320 jss2311"
					style="margin-bottom: 20px;">
					<div class="MuiBox-root jss2330 jss2321">
						<div class="row" style="width: 100%;">
							<div class="col-md-3">
								<label>Ngày đến</label> <input type="text"
									class="form-control col-md-7" placeholder="__/__/____"
									name="startDate" required>
							</div>
							<div class="col-md-3">
								<label>Ngày về</label> <input type="text"
									class="form-control col-md-7" placeholder="__/__/____"
									name="endDate" required>
							</div>
							<div class="col-md-3">
								<label>Sức chứa</label> <input type="number"
									class="form-control col-md-7" placeholder="Enter number"
									name="person" min="0">
							</div>
							<div class="col-md-3" style="text-align: right;">
								<button style="margin-top: 21px;" type="submit"
									class="btn btn-primary">Kiểm tra tình trạng phòng</button>
							</div>
						</div>
					</div>
				</div>

				<c:set var="listRoom" value="${listRoom }"></c:set>
				<c:forEach var="room" items="${listRoom }">
					<!-- <div id="flip">Click to slide the panel down or up</div> -->
					<div id="panel" class="main" style="margin-top: 30px;">
						<div class="b row">
							<div class="col-md-3">
								<div class="grid images_3_of_2">
									<div class="flexslider">

										<ul class="slides">
											<li
												data-thumb="${pageContext.request.contextPath}${room.roomImages[0] }">
												<div class="thumb-image">
													<img
														src="${pageContext.request.contextPath}${room.roomImages[0] }"
														data-imagezoom="true" class="img-responsive">
												</div>
											</li>
											<li
												data-thumb="${pageContext.request.contextPath}${room.roomImages[1] }">
												<div class="thumb-image">
													<img
														src="${pageContext.request.contextPath}${room.roomImages[1] }"
														data-imagezoom="true" class="img-responsive">
												</div>
											</li>
											<li
												data-thumb="${pageContext.request.contextPath}${room.roomImages[2] }">
												<div class="thumb-image">
													<img
														src="${pageContext.request.contextPath}${room.roomImages[2] }"
														data-imagezoom="true" class="img-responsive">
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>

							<div class="col-md-9">
								<form action="check-out" method="get" style="height: 100%;">
									<div class="c">${room.roomName }</div>
									<div class="d"
										style="display: flex; z-index: 1; position: sticky; transition: all .4s; align-items: center; border-bottom: 1px solid #E2E8F0;">
										<span style="width: 16px; height: 16px; margin-right: 6px;"><svg
												width="16" height="16" fill="none">
									<path
													d="M2 14v-1.333A2.667 2.667 0 014.667 10h2.666A2.667 2.667 0 0110 12.667V14m.667-11.913a2.667 2.667 0 010 5.166M14 14v-1.333a2.667 2.667 0 00-2-2.567M8.667 4.667a2.667 2.667 0 11-5.334 0 2.667 2.667 0 015.334 0z"
													stroke="#4A5568" stroke-linecap="round"
													stroke-linejoin="round"></path></svg></span> <span
											style="margin-right: 40px;" class="MuiBox-root jss1071">Sức
											chứa tối đa 2 người</span>
										<fmt:parseNumber var="area" value="${room.area }"
											type="number" />
										<span class="MuiBox-root jss1074"
											style="margin-left: 20px; width: 16px; height: 16px; margin-right: 6px;"><svg
												width="16" height="16" fill="none">
									<path
													d="M12 2H4a2 2 0 00-2 2v8a2 2 0 002 2h8a2 2 0 002-2V4a2 2 0 00-2-2z"
													stroke="#4A5568" stroke-miterlimit="10"
													stroke-linecap="square"></path>
									<path d="M11.333 11.333L5 5M11.334 8.333v3h-3M4.667 7.667v-3h3"
													stroke="#4A5568" stroke-miterlimit="10"
													stroke-linecap="round" stroke-linejoin="round"></path></svg></span><span
											class="MuiBox-root jss1075">${area}m2</span>
									</div>
									<div class="row" style="height: 75%;">
										<div class="col-md-7 discript">
											<div class="roomInfor">
												<p style="font-size: 16px;">
													<span style="font-weight: bold;">Concept của phòng:</span>
													${room.typeName }
												</p>
												<p style="font-size: 16px;">
													<span style="font-weight: bold;">Mô tả:</span>
													${room.roomDesc }
												</p>
											</div>
											<div class="MuiBox-root jss5475 jss5455">
												<div class="MuiBox-root jss5476 jss5456">Khăn tắm</div>
												<div class="MuiBox-root jss5477 jss5456">Cửa sổ</div>
												<div class="MuiBox-root jss5478 jss5456">Không hút
													thuốc</div>
												<div class="MuiBox-root jss5479 jss5456">Đồ vệ sinh cá
													nhân miễn phí</div>
												<div class="MuiBox-root jss5480 jss5456">Dép đi trong
													nhà</div>
												<div class="MuiBox-root jss5481 jss5456">Phòng tắm
													riêng</div>
											</div>

										</div>
										<div class="col-md-2"
											style="height: 100%; z-index: 1; position: sticky; transition: all .4s; align-items: center; border-right: 1px solid #E2E8F0; border-left: 1px solid #E2E8F0;">
											<div class="discript MuiBox-root jss1065 jss760">
												<span class="MuiBox-root jss1066 jss761"><svg
														width="24" height="24" fill="none"
														class="svgFillAll jss763">
												<g clip-path="url(#icon_bed_double_svg__clip0)"
															fill="#718096">
												<path
															d="M22.5 11.75h-21a1.5 1.5 0 00-1.5 1.5v4a1.5 1.5 0 001.125 1.45.5.5 0 01.375.483v1.067a1 1 0 102 0v-1a.5.5 0 01.5-.5h16a.5.5 0 01.5.5v1a1 1 0 002 0v-1.064a.5.5 0 01.375-.483A1.5 1.5 0 0024 17.25v-4a1.5 1.5 0 00-1.5-1.5zM2.5 10.25a.5.5 0 00.5.5h18a.5.5 0 00.5-.5v-5a2.5 2.5 0 00-2.5-2.5H5a2.5 2.5 0 00-2.5 2.5v5zm4-3h2a2.5 2.5 0 012.166 1.25.5.5 0 01-.433.75H4.767a.5.5 0 01-.433-.75A2.5 2.5 0 016.5 7.25zm9 0h2a2.5 2.5 0 012.166 1.25.5.5 0 01-.433.75h-5.466a.5.5 0 01-.433-.75A2.5 2.5 0 0115.5 7.25z"></path></g>
												<defs>
												<clipPath id="icon_bed_double_svg__clip0">
												<path fill="#fff" d="M0 0h24v24H0z"></path></clipPath></defs></svg></span><span
													class="MuiBox-root jss1067">${room.bed } giường nằm</span>
											</div>
										</div>
										<div class="col-md-3 discript" style="text-align: right;">
											<fmt:formatNumber var="gia" value="${room.price }"
												type="currency" minFractionDigits="0" currencySymbol="" />

											<p>Giá: ${gia } VNĐ</p>
											<button type="submit" class="btn btn-primary">Đặt
												phòng</button>
										</div>
								</form>
							</div>
						</div>

					</div>
			</div>
			</c:forEach>
		</div>
	</div>

	<div class="ads-grid_shop" style="padding-top: 40px;">
		<!-- /new_arrivals -->
		<div style="width: 100%;" id="comment">
			<div class="blog-single-post-thumb" style="width: 80%; margin: auto;">
				<div class="blog-comment">

					<h3 style="margin-bottom: 20px;">Bình luận và đánh giá:</h3>
					<c:if test="${listFeedback[0] == null }">
						<div class="media-body">
							<br> Chưa có bình luận nào
						</div>
					</c:if>
					<c:forEach var="item" items="${listFeedback }">
						<div class="row">
							<div class="media col-md-9" style="margin-top: 20px;">
								<div class="media-object pull-left">
									<img style="width: 5.5em;"
										src="${pageContext.request.contextPath }${item.user.avatar }"
										class="img-responsive img-circle" width="40" height="40"
										alt="Blog Image 11">
								</div>
								<div class="media-body">
									<h3 class="media-heading">${item.user.name }</h3>
									<span style="font-size: 12px;"> ${item.feedbackDate }</span>
									<p>${item.comment }</p>
									<form action="single-post">
										<input type="hidden" name="roomId" value="${param.roomId }">
										<input type="hidden" name="feedbackId"
											value="${item.feedbackId }">
									</form>
								</div>
							</div>
							<div class="col-md-2" style="margin-top: 20px;">
								<div class="dropdown" style="float: right;">
									<button
										style="height: 5px; padding-top: 0px; border-radius: 5px;"
										class="dropbtn">
										<i data-visualcompletion="css-img" class="hu5pjgll m6k467ps"
											style="background-image: url(&quot;https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/6_b0I_TpqUX.png&quot;); background-position: -90px -114px; background-size: 190px 160px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
									</button>
									<div class="dropdown-content">
										<a href="#">Report</a> <a href="#">Reply</a>
									</div>
								</div>
							</div>
						</div>
						<hr>
					</c:forEach>

					<div class="text-center">
						<form action="single-post">
							<input type="hidden" name="action" value="ReadAllComment">
							<input type="hidden" name="buildingId"
								value="${param.buildingId }">
							<c:if test="${listFeedback[0] != null }">
								<button type="submit"
									style="background: unset; border: unset; color: blue;">Xem
									tất cả bình luận</button>
							</c:if>
						</form>

					</div>
				</div>

				<div class="blog-comment-form">
					<h3>Leave a Comment</h3>
					<c:if test="${mess != null}">
						<c:if test="${mess != 'Comment thành công!'}">
							<p style="color: red;">${mess }</p>
						</c:if>
						<c:if test="${mess == 'Comment thành công!'}">
							<p style="color: green;">${mess }</p>
						</c:if>
					</c:if>

					<form action="single-post" method="post">
						<input type="hidden" name="action" value="comment"> <input
							type="hidden" name="buildingId" value="${param.buildingId }">
						<span class="star-rating"> <input type="radio"
							name="rating" value="1"><i></i> <input type="radio"
							name="rating" value="2"><i></i> <input type="radio"
							name="rating" value="3"><i></i> <input type="radio"
							name="rating" value="4" checked><i></i> <input
							type="radio" name="rating" value="5"><i></i>
						</span>
						<c:if test="${usersession != null}">
							<input type="text" class="form-control" placeholder="Name"
								name="name" value="${usersession.user.name}" required
								disabled="disabled">
							<input type="email" class="form-control"
								value="${usersession.user.email}" placeholder="Email"
								name="email" required disabled="disabled">
						</c:if>
						<c:if test="${usersession == null}">
							<input type="text" class="form-control" placeholder="Name"
								name="name" required="required">
							<input type="email" class="form-control" placeholder="Email"
								name="email" required="required">
						</c:if>

						<textarea name="message" rows="5" class="form-control"
							id="message" placeholder="Message" message="message"
							required="required"></textarea>
						<div class="col-md-3 col-sm-4">
							<c:if test="${usersession != null}">
								<input name="submit" type="submit" class="form-control"
									id="submit" value="Post Your Comment">
							</c:if>

							<c:if test="${usersession == null}">
								<button type="button" class="recommend btn btn-info btn-lg"
									data-toggle="modal" data-target="#myModal">Post Your
									Comment</button>
							</c:if>

						</div>
					</form>
				</div>
			</div>
		</div>

		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body">
						<p>Bạn cần đăng nhập để có thể bình luận.</p>
					</div>
					<div class="modal-footer">
						<div class="row">
							<div class="col-md-9" style="padding-right: 0px;">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Đóng</button>
							</div>
							<div class="col-md-3">
								<form action="login" method="post">
									<input type="hidden" name="log" value="single-post"> <input
										type="hidden" name="roomId" value="${roomId }">
									<button type="submit" class="btn btn-primary">Đăng
										nhập ngay</button>
								</form>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>

		<!-- //womens -->
		<div class="clearfix"></div>
		<!--//comment zone-->
		<!--//tabs-->
		<hr>

		<c:set var="listNear" value="${listNearRoom }"></c:set>
		<!-- /new_arrivals -->
		<%-- <div class="new_arrivals">
			<h3>Near this place</h3>
			<!-- /womens -->
			<c:forEach var="room" items="${listNear }">
				<c:if test="${listNearRoom.size() == 2 or listNearRoom.size() == 1}">
					<div class="col-md-6">
						<div class="col-md-4 product-men women_two">
							<div class="product-shoe-info shoe">
								<div class="men-pro-item">
									<div class="men-thumb-item">
										<c:set var="image"
											value="${pageContext.request.contextPath}${room.roomImages[0]}"></c:set>
										<c:set var="defaultImage"
											value="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"></c:set>
										<img width="240" height="190"
											src="${room.roomImages[0]==null?defaultImage:image }" alt="">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a
													href="${pageContext.request.contextPath}/single-post?roomId=${room.roomId}"
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
									<a
										href="${pageContext.request.contextPath}/single-post?roomId=${room.roomId}">${room.roomName }</a>
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
				</c:if>

				<c:if test="${listNearRoom.size() == 3}">
					<div class="col-md-4 product-men women_two">
						<div class="product-shoe-info shoe">
							<div class="men-pro-item">
								<c:set var="image"
									value="${pageContext.request.contextPath}${room.roomImages[0]}"></c:set>
								<c:set var="defaultImage"
									value="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"></c:set>
								<div class="men-thumb-item">
									<img width="269" height="221"
										src="${room.roomImages[0]==null?defaultImage:image }" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.request.contextPath}/single-post?roomId=${room.roomId}"
												class="link-product-add-cart">Xem chi tiết</a>
										</div>
									</div>
									<span class="product-new-top">Active</span>
								</div>
								<div class="item-info-product">
									<h4>
										<a
											href="${pageContext.request.contextPath}/single-post?roomId=${room.roomId}">${room.roomName }</a>
									</h4>
									<div class="info-product-price">
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
											<div>Đánh giá: ${room.rating != 0?room.rating:'Chưa có đánh giá' }</div>
											<div>Loại phòng: ${room.typeName }</div>
											<div>${room.roomDesc }</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</c:if>

				<c:if test="${listNearRoom.size() == 4}">
					<div class="col-md-3 product-men women_two">
						<div class="product-shoe-info shoe">
							<div class="men-pro-item">
								<c:set var="image"
									value="${pageContext.request.contextPath}${room.roomImages[0]}"></c:set>
								<c:set var="defaultImage"
									value="https://vinhomesland.vn/wp-content/uploads/2019/10/homestay.jpg"></c:set>
								<div class="men-thumb-item">
									<img width="269" height="221"
										src="${room.roomImages[0]==null?defaultImage:image }" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a
												href="${pageContext.request.contextPath}/single-post?roomId=${room.roomId}"
												class="link-product-add-cart">Xem chi tiết</a>
										</div>
									</div>
									<span class="product-new-top">Active</span>
								</div>
								<div class="item-info-product">
									<h4>
										<a
											href="${pageContext.request.contextPath}/single-post?roomId=${room.roomId}">${room.roomName }</a>
									</h4>
									<div class="info-product-price">
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
											<div>Đánh giá: ${room.rating != 0?room.rating:'Chưa có đánh giá' }</div>
											<div>Loại phòng: ${room.typeName }</div>
											<div>${room.roomDesc }</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>

				</c:if>

			</c:forEach>

			<div class="clearfix"></div>
		</div> --%>
	</div>
	</div>

	<!-- //womens -->
	<div class="clearfix"></div>
	<!--//new_arrivals-->

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