<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<p>${message }</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end modal small -->

		<!-- modal medium -->
		<div class="modal fade" id="addBill" tabindex="-1" role="dialog"
			aria-labelledby="mediumModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="mediumModalLabel">Thêm hóa đơn</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">

							<div class="col-md-6">
								Nhà:
								<select name="building" id="addBuilding" size="1"
									class=" form-control">
									<c:if test="${properties != null}">
										<option value="" selected="selected">${properties }</option>
									</c:if>
									<c:if test="${properties == null}">
										<option value="" selected="selected">All Properties</option>
									</c:if>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
							<div class="col-md-6">
							Phòng
								<select name="room" id="addRoom" size="1" class="form-control">
									<c:if test="${detailProperties != null}">
										<option value="" selected="selected">${detailProperties }</option>
									</c:if>
									<c:if test="${detailProperties == null}">
										<option value="" selected="selected">All</option>
									</c:if>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
						</div>

						Ngày đến<input type="date" class="form-control" name="startDate">
						Ngày về<input type="date" class="form-control" name="endDate">
						Khách hàng<input type="text" class="form-control" name="customer">
						Số điện thoại<input type="text" class="form-control" name="phoneNumber">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary">Confirm</button>
					</div>
				</div>
			</div>
		</div>
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
							<h3 class="title-5 m-b-35">Thiết lập hóa đơn</h3>
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
									</form>
								</div>
								<div class="table-data__tool-right">
									<button class="au-btn au-btn-icon au-btn--green au-btn--small"
										data-toggle="modal" data-target="#addBill">
										<i class="zmdi zmdi-plus"></i>add item
									</button>
									<div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
										<select class="js-select2" name="type">
											<option selected="selected">Export</option>
											<option value="">Option 1</option>
											<option value="">Option 2</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
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
														<span class="status--denied">Chưa thanh toán</span>
													</c:if> <c:if test="${item.status == 'Đã thanh toán' }">
														<span class="status--process">${item.status }</span>
													</c:if></td>
												<td>
													<div class="table-data-feature">
														<c:if test="${item.status == 'Đã xác nhận'}">
															<a type="button" class="item"
																href="${pageContext.request.contextPath}/manage-BillDetail?billId=${item.billID}"
																data-placement="top" title="Chỉnh sửa chi tiết hóa đơn">
																<i class="zmdi zmdi-edit"></i>
															</a>

														</c:if>
														<c:if test="${item.status == 'Đã thanh toán'}">
															<a type="button" class="item"
																href="${pageContext.request.contextPath}/manage-BillDetail?billId=${item.billID}"
																data-placement="top" title="Xem chi tiết"> <i
																class="fa fa-eye"></i>
															</a>

														</c:if>
														<button class="item" data-toggle="tooltip"
															data-placement="top" title="More">
															<i class="zmdi zmdi-more"></i>
														</button>
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

					<!-- <div class="row m-t-30">
                            <div class="col-md-12">
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>type</th>
                                                <th>description</th>
                                                <th>status</th>
                                                <th>price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2018-09-29 05:57</td>
                                                <td>Mobile</td>
                                                <td>iPhone X 64Gb Grey</td>
                                                <td class="process">Processed</td>
                                                <td>$999.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-28 01:22</td>
                                                <td>Mobile</td>
                                                <td>Samsung S8 Black</td>
                                                <td class="process">Processed</td>
                                                <td>$756.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-27 02:12</td>
                                                <td>Game</td>
                                                <td>Game Console Controller</td>
                                                <td class="denied">Denied</td>
                                                <td>$22.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-26 23:06</td>
                                                <td>Mobile</td>
                                                <td>iPhone X 256Gb Black</td>
                                                <td class="denied">Denied</td>
                                                <td>$1199.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-25 19:03</td>
                                                <td>Accessories</td>
                                                <td>USB 3.0 Cable</td>
                                                <td class="process">Processed</td>
                                                <td>$10.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-29 05:57</td>
                                                <td>Accesories</td>
                                                <td>Smartwatch 4.0 LTE Wifi</td>
                                                <td class="denied">Denied</td>
                                                <td>$199.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-24 19:10</td>
                                                <td>Camera</td>
                                                <td>Camera C430W 4k</td>
                                                <td class="process">Processed</td>
                                                <td>$699.00</td>
                                            </tr>
                                            <tr>
                                                <td>2018-09-22 00:43</td>
                                                <td>Computer</td>
                                                <td>Macbook Pro Retina 2017</td>
                                                <td class="process">Processed</td>
                                                <td>$10.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> -->

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
				"Đã xác nhận" : [ "Altona", "Euroa" ],
				"Đã thanh toán" : [ "Altona", "Euroa" ]
			},
			"Theo nhà" : {
				"Alberta" : [ "Acadia", "Bighorn" ],
				"Columbia" : [ "Washington", "" ]
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

	<script>
		var stateObject = {
			"Theo ngày" : {
				"Hôm nay" : [ "Nguyễn Huệ", "North Delhi" ],
				"Tuần này" : [ "Thiruvananthapuram", "Palakkad" ],
				"Tháng này" : [ "North Goa", "South Goa" ],
			},
			"Theo trạng thái" : {
				"Chờ xác nhận" : [ "Altona", "Euroa" ],
				"Đã xác nhận" : [ "Altona", "Euroa" ],
				"Đã thanh toán" : [ "Altona", "Euroa" ]
			},
			"Theo nhà" : {
				"Alberta" : [ "Acadia", "Bighorn" ],
				"Columbia" : [ "Washington", "" ]
			},
		}

		window.onload = function() {
			var countySel = document.getElementById("addBuilding"), stateSel = document
					.getElementById("addRoom");
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

	<c:if test="${message != null }">
		<script>
			let myModal = new bootstrap.Modal(document
					.getElementById('smallmodal'), {});
			myModal.show();
		</script>
	</c:if>

</body>

</html>
<!-- end document-->
