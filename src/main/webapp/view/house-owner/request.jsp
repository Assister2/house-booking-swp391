<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Bill Management</title>

<!-- Fontfaces CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/font-face.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/wow/animate.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/slick/slick.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/theme.css"
	rel="stylesheet" media="all">
<style>
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
</style>
</head>

<body class="">
	<div class="page-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<!-- END HEADER DESKTOP-->

		<!-- modal small -->
		<div class="modal fade" id="smallmodal" tabindex="-1" role="dialog"
			aria-labelledby="smallmodalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="smallmodalLabel">Thông báo</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>${manage_bill_message }</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end modal small -->

		<!-- modal medium -->
		<c:forEach var="item" items="${listBillDefault }">
			<div class="modal fade" id="view${item.billID }" tabindex="-1"
				role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="mediumModalLabel">
								#Invoice${item.billID }
								<c:if test="${item.status == 'Đã xác nhận'}">
									<span class="badge badge-success float-right mt-1"
										style="margin-left: 10px; margin-top: 3px !important;">${item.status }</span>
								</c:if>
								<c:if test="${item.status == 'Đã từ chối'}">
									<span class="badge badge-danger float-right mt-1"
										style="margin-left: 10px; margin-top: 3px !important;">${item.status }</span>
								</c:if>
								<c:if test="${item.status == 'Chờ xác nhận'}">
									<span class="badge badge-primary float-right mt-1"
										style="margin-left: 10px; margin-top: 3px !important;">${item.status }</span>
								</c:if>

							</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body row">
							<div class="col-md-5">
								<img alt="" class="img-responsive" style="max-height: 300px;"
									src="${pageContext.request.contextPath}${item.billDetail[0].room.roomImages[0] }">
							</div>
							<div class="col-md-7">
								<h4 style="color: green;">Thông tin phòng</h4>
								<p>
									<b>Mã phòng: </b> ${item.billDetail[0].room.roomId }
								</p>
								<p>
									<b>Tên phòng: </b> ${item.billDetail[0].room.roomName }
								</p>
								<fmt:formatNumber var="price"
									value="${item.billDetail[0].room.price }" type="currency"
									minFractionDigits="0" currencySymbol="" />
								<p>
									<b>Đơn giá: </b> ${price } VNĐ/ngày
								</p>
								<hr>
								<h4 style="color: green;">Thông tin khách hàng</h4>
								<p>
									<b>Tên khách hàng: </b> ${item.user.name }
								</p>
								<p>
									<b>Số điện thoại: </b> <a href="">${item.user.phoneNumber }</a>
								</p>
								<p>
									<b>Email: </b> ${item.user.email }
								</p>
							</div>
						</div>
						<div class="modal-footer">
							<c:if test="${item.status == 'Chờ xác nhận' }">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Exit</button>
								<a type="button"
									href="${pageContext.request.contextPath}/manage-bill?action=approve&billId=${item.billID }"
									class="btn btn-primary">Deny</a>
								<a type="button"
									href="${pageContext.request.contextPath}/manage-bill?action=approve&billId=${item.billID }"
									class="btn btn-primary">Approve</a>
							</c:if>
							<c:if test="${item.status == 'Đã từ chối' }">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Exit</button>
							</c:if>
							<c:if test="${item.status == 'Đã xác nhận' }">

								<a type="button"
									href="${pageContext.request.contextPath}/manage-BillDetail?billId=${item.billID }"
									class="btn btn-success" style="color: white;">Xem trình
									trạng thanh toán</a>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Exit</button>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- end modal medium -->

		<c:forEach var="item" items="${listBillDefault }">
			<!-- modal small -->
			<form action="manage-bill">
				<input type="hidden" name="action" value="approve"> <input
					type="hidden" name="billId" value="${item.billID }">

				<div class="modal fade" id="approve${item.billID }" tabindex="-1"
					role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="smallmodalLabel">Thông báo</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Xác nhận yêu cầu đặt phòng ${item.billID }.</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancel</button>
								<button type="submit" class="btn btn-primary">Confirm</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>
		<!-- end modal small -->

		<!-- Deny -->
		<c:forEach var="item" items="${listBillDefault }">
			<!-- modal small -->
			<form action="manage-bill">
				<input type="hidden" name="action" value="deny"> <input
					type="hidden" name="billId" value="${item.billID }">

				<div class="modal fade" id="deny${item.billID }" tabindex="-1"
					role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="smallmodalLabel">Thông báo</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>Từ chối yêu cầu đặt phòng ${item.billID }.</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancel</button>
								<button type="submit" class="btn btn-primary">Confirm</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>
		<!-- end modal small -->
		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-12">
							<!-- DATA TABLE -->
							<h3 class="title-5 m-b-35">Yêu cầu đặt phòng</h3>
							<div class="table-data__tool">
								<div class="table-data__tool-left">
									<form action="manage-bill" method="get">
										<input type="hidden" name="action" value="Filter">
										<div class="rs-select2--light rs-select2--md">
											<select name="properties" id="countySel" size="1"
												class="js-select2">
												<c:if test="${properties != null}">
													<option value="" selected="selected">${properties }</option>
												</c:if>
												<c:if test="${properties == null}">
													<option value="" selected="selected">All
														Properties</option>
												</c:if>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
										<div class="rs-select2--light rs-select2--md">
											<select name="detailProperties" id="stateSel" size="1"
												class="js-select2">
												<c:if test="${detailProperties != null}">
													<option value="" selected="selected">${detailProperties }</option>
												</c:if>
												<c:if test="${detailProperties == null}">
													<option value="" selected="selected">All</option>
												</c:if>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
										<button type="submit" class="au-btn-filter">
											<i class="zmdi zmdi-filter-list"></i>Lọc
										</button>
										<a type="button"
											href="${pageContext.request.contextPath}/manage-bill"
											class="au-btn-filter"> <i class="zmdi zmdi-filter-list"></i>Xóa
											lọc
										</a>
									</form>
								</div>
								<div class="table-data__tool-right">
									<button class="au-btn au-btn-icon au-btn--green au-btn--small">
										<i class="zmdi zmdi-plus"></i>add item
									</button>

								</div>
							</div>
							<div class="table-responsive table-responsive-data2">
								<table class="table table-data2">
									<thead>
										<tr>
											<th>ID</th>
											<th>Tòa</th>
											<th>Phòng</th>
											<th>Ngày đặt</th>
											<th>Ngày đến</th>
											<th>Ngày về</th>
											<th>Trạng thái</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${listBillDefault }">
											<tr class="tr-shadow">
												<td style="vertical-align: middle;">${item.billID }</td>
												<td>${item.billDetail[0].room.buildingId }</td>
												<td><span class="block-email">${item.billDetail[0].roomId }</span></td>
												<td class="desc">${item.date }</td>
												<td>${item.billDetail[0].startDate }</td>
												<td>${item.billDetail[0].endDate }</td>
												<td><c:if test="${item.status == 'Đã xác nhận' }">
														<span class="status--process">${item.status }</span>
													</c:if> <c:if test="${item.status == 'Chờ xác nhận' }">
														<span style="color: blue;" class="status--warning">${item.status }</span>
													</c:if> <c:if test="${item.status == 'Đã từ chối' }">
														<span class="status--denied">${item.status }</span>
													</c:if> <c:if test="${item.status == 'Đã thanh toán' }">
														<span class="status--process">${item.status }</span>
													</c:if></td>
												<td>
													<div class="table-data-feature">
														<c:if test="${item.status == 'Chờ xác nhận'}">
															<%-- <button style="font-size: 13px; margin-right: 2px;"
																class="btn btn-success btn-sm" data-toggle="modal"
																data-target="#approve${item.billID }"
																data-placement="top" title="Xác nhận">Approve</button>
															<button style="font-size: 13px; margin-right: 2px;"
																class="btn btn-danger btn-sm" data-toggle="modal"
																data-target="#deny${item.billID }" data-placement="top"
																title="Từ chối">Deny</button>
															<button style="font-size: 13px; margin-right: 2px;"
																class="btn btn-primary btn-sm" data-toggle="modal"
																data-target="#view${item.billID }" data-placement="top"
																title="Từ chối">View</button> --%>
															<div class="dropdown" style="float: right;">
																<button class="item" data-toggle="tooltip"
																	data-placement="top" title="Action">
																	<i class="zmdi zmdi-more"></i>
																</button>
																<div class="dropdown-content">
																	<a href="" data-toggle="modal"
																		data-target="#view${item.billID }">Xem</a> <a href=""
																		data-toggle="modal"
																		data-target="#approve${item.billID }"">Xác nhận</a> <a
																		href="" data-toggle="modal"
																		data-target="#deny${item.billID }">Từ chối</a>
																</div>
															</div>
														</c:if>
														<c:if test="${item.status == 'Đã từ chối'}">
															<div class="dropdown" style="float: right;">
																<button class="item" data-toggle="tooltip"
																	data-placement="top" title="Action">
																	<i class="zmdi zmdi-more"></i>
																</button>
																<div class="dropdown-content">
																	<a href="" data-toggle="modal"
																		data-target="#view${item.billID }">Xem</a>
																</div>
															</div>
														</c:if>

														<c:if test="${item.status == 'Đã xác nhận'}">
															<div class="dropdown" style="float: right;">
																<!-- <a href="" class="btn btn-primary btn-sm">Action</a> -->
																<button class="item" data-toggle="tooltip"
																	data-placement="top" title="Action">
																	<i class="zmdi zmdi-more"></i>
																</button>
																<div class="dropdown-content">
																	<a href="" data-toggle="modal"
																		data-target="#view${item.billID }">Xem</a> <a href=""
																		data-toggle="modal"
																		data-target="#approve${item.billID }"">Xem hóa đơn</a>
																</div>
															</div>
														</c:if>

													</div>
												</td>
											</tr>
											<tr class="spacer"></tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- END DATA TABLE -->
						</div>
					</div>

					<div class="row text-center">
						<ul class="pagination" style="width: fit-content; margin: auto;">
							<c:if test="${currentPage != 1}">
								<li class="page-item"><a
									href="${path}?page=${currentPage - 1}" class="page-link">Previous</a></li>
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
									href="${path}?page=${currentPage + 1}" class="page-link">Next</a></li>

							</c:if>
						</ul>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="copyright">
								<p>
									Copyright © 2018 Colorlib. All rights reserved. Template by <a
										href="https://colorlib.com">Colorlib</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>

	<!-- Jquery JS-->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/slick/slick.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/wow/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/animsition/animsition.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/chartjs/Chart.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/view/house-owner/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script
		src="${pageContext.request.contextPath}/view/house-owner/js/main.js"></script>

	<script>
		var stateObject = {
			"Theo ngày" : {
				"Hôm nay" : [ "Nguyễn Huệ", "North Delhi" ],
				"Tuần này" : [ "Thiruvananthapuram", "Palakkad" ],
				"Tháng này" : [ "North Goa", "South Goa" ],
			},
			"Theo trạng thái" : {
				"Chờ xác nhận" : [ "Altona", "Euroa" ],
				"Đã xác nhận" : [ "Altona", "Euroa" ]
			},
		}

		window.onload = function() {
			var countySel = document.getElementById("countySel"), stateSel = document
					.getElementById("stateSel");
			for ( var country in stateObject) {
				countySel.options[countySel.options.length] = new Option(
						country, country);
			}
			countySel.onchange = function() {
				stateSel.length = 1; // remove all options bar first
				if (this.selectedIndex < 1)
					return; // done 
				for ( var state in stateObject[this.value]) {
					stateSel.options[stateSel.options.length] = new Option(
							state, state);
				}
			}
			countySel.onchange(); // reset in case page is reloaded
			stateSel.onchange = function() {
				if (this.selectedIndex < 1)
					return; // done 
			}
		}
	</script>

	<c:if test="${manage_bill_message != null }">
		<script>
			let myModal = new bootstrap.Modal(document
					.getElementById('smallmodal'), {});
			myModal.show();
		</script>
		<%
		HttpSession ss = request.getSession(true);
		ss.setAttribute("manage_bill_message", null);
		%>
	</c:if>

</body>

</html>
<!-- end document-->
