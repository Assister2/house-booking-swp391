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
<title>Chi tiết hóa đơn</title>

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
<style type="text/css">
body {
	margin-top: 20px;
	color: #484b51;
}

.text-secondary-d1 {
	color: #728299 !important;
}

.page-header {
	margin: 0 0 1rem;
	padding-bottom: 1rem;
	padding-top: .5rem;
	border-bottom: 1px dotted #e2e2e2;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-ms-flex-align: center;
	align-items: center;
}

.page-title {
	padding: 0;
	margin: 0;
	font-size: 1.75rem;
	font-weight: 300;
}

.brc-default-l1 {
	border-color: #dce9f0 !important;
}

.ml-n1, .mx-n1 {
	margin-left: -.25rem !important;
}

.mr-n1, .mx-n1 {
	margin-right: -.25rem !important;
}

.mb-4, .my-4 {
	margin-bottom: 1.5rem !important;
}

hr {
	margin-top: 1rem;
	margin-bottom: 1rem;
	border: 0;
	border-top: 1px solid rgba(0, 0, 0, .1);
}

.text-grey-m2 {
	color: #888a8d !important;
}

.text-success-m2 {
	color: #86bd68 !important;
}

.font-bolder, .text-600 {
	font-weight: 600 !important;
}

.text-110 {
	font-size: 110% !important;
}

.text-blue {
	color: #478fcc !important;
}

.pb-25, .py-25 {
	padding-bottom: .75rem !important;
}

.pt-25, .py-25 {
	padding-top: .75rem !important;
}

.bgc-default-tp1 {
	background-color: rgba(121, 169, 197, .92) !important;
}

.bgc-default-l4, .bgc-h-default-l4:hover {
	background-color: #f3f8fa !important;
}

.page-header .page-tools {
	-ms-flex-item-align: end;
	align-self: flex-end;
}

.btn-light {
	color: #757984;
	background-color: #f5f6f9;
	border-color: #dddfe4;
}

.w-2 {
	width: 1rem;
}

.text-120 {
	font-size: 120% !important;
}

.text-primary-m1 {
	color: #4087d4 !important;
}

.text-danger-m1 {
	color: #dd4949 !important;
}

.text-blue-m2 {
	color: #68a3d5 !important;
}

.text-150 {
	font-size: 150% !important;
}

.text-60 {
	font-size: 60% !important;
}

.text-grey-m1 {
	color: #7b7d81 !important;
}

.align-bottom {
	vertical-align: bottom !important;
}
</style>

<script type="text/javascript">
	
</script>
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
						<p>${bill_detail_message }</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end modal small -->

		<!-- modal medium -->
		<form action="manage-BillDetail" method="get">
			<div class="modal fade" id="addService" tabindex="-1" role="dialog"
				aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="mediumModalLabel">Thêm dịch vụ</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<input type="hidden" name="action" value="addService"> <input
								type="hidden" name="billId" value="${param.billId }"> <input
								type="hidden" name="roomId" value="${room.roomId }">
							<div class="form-group row">
								<div class="col-md-7">
									<select class="form-control" name="serviceId">
										<c:forEach var="item" items="${listService }">
											<option value="${item.serviceID }">${item.serviceName }</option>
										</c:forEach>
									</select>
								</div>

								<div class="col-md-5">
									<input class="form-control" type="number" name="amount"
										required="required" placeholder="Số lượng">
								</div>
							</div>
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
		<!-- end modal medium -->

		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">

					<div class="page-content container card" style="padding: 5%;">
						<div class="car-body">
							<div class="page-header text-blue-d2">
								<h1 class="page-title text-secondary-d1">
									<a style="color: #728299;"
										href="${pageContext.request.contextPath}/invoice-manage">Hóa
										đơn</a> <small class="page-info"> <i
										class="fa fa-angle-double-right text-80"></i> ID:
										#${bill.billID }
									</small>
								</h1>

								<div class="page-tools">
									<div class="action-buttons">
										<a class="btn bg-white btn-light mx-1px text-95" href="#"
											data-title="Print" onclick="window.print()"> <i
											class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>
											Print
										</a> <a class="btn bg-white btn-light mx-1px text-95" href="#"
											data-title="PDF"> <i
											class="mr-1 fa fa-file-pdf-o text-danger-m1 text-120 w-2"></i>
											Export
										</a>
									</div>
								</div>
							</div>

							<div class="container px-0">
								<div class="row mt-4">
									<div class="col-12 col-lg-12">
										<div class="row">
											<div class="col-12">
												<div class="text-center text-150">
													<!-- <i class="fa fa-book fa-2x text-success-m2 mr-1"></i> <span
														class="text-default-d3">Booking Home</span> -->
														<img width="200px;" class="img-responsive"
					src="${pageContext.request.contextPath}/view/common/image/logo.png"
					alt="CoolAdmin" />
												</div>
											</div>
										</div>
										<!-- .row -->

										<hr class="row brc-default-l1 mx-n1 mb-4" />

										<div class="row">
											<div class="col-sm-6">
												<div>
													<span class="text-sm text-grey-m2 align-middle">To:</span>
													<span class="text-600 text-110 text-blue align-middle">${user.name }
													</span>
												</div>
												<div class="text-grey-m2">
													<div class="my-1">${user.email }</div>
													<div class="my-1">
														<i class="fa fa-phone fa-flip-horizontal text-secondary"></i>
														<b class="text-600">${user.phoneNumber }</b>
													</div>
												</div>
											</div>
											<!-- /.col -->

											<div
												class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
												<hr class="d-sm-none" />
												<div class="text-grey-m2">
													<div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
														Invoice</div>

													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span
															class="text-600 text-90">ID:</span> #${bill.billID }
													</div>

													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span
															class="text-600 text-90">Order Date:</span> ${bill.date }
													</div>

													<div class="my-2">
														<c:if test="${bill.status == 'Đã hủy'}">
															<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
															<span class="text-600 text-90">Status:</span>
															<span class="badge badge-danger badge-pill px-25">Đã hủy</span>
														</c:if>
														<c:if test="${bill.status == 'Đã xác nhận'}">
															<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
															<span class="text-600 text-90">Status:</span>
															<span class="badge badge-warning badge-pill px-25">Chưa
																thanh toán</span>
														</c:if>
														<c:if test="${bill.status == 'Đã thanh toán'}">
															<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
															<span class="text-600 text-90">Status:</span>
															<span class="badge badge-success badge-pill px-25">Đã
																thanh toán</span>
														</c:if>
													</div>
												</div>
											</div>
											<!-- /.col -->
										</div>


										<div class="mt-4">
											<div class="row text-600 text-white bgc-default-tp1 py-25">
												<div class="d-none d-sm-block col-1">#</div>
												<div class="col-9 col-sm-5">Tên dịch vụ</div>
												<div class="d-none d-sm-block col-4 col-sm-2">Số lượng</div>
												<div class="d-none d-sm-block col-sm-2">Đơn giá</div>
												<div class="col-2">Thành tiền</div>

											</div>

											<div class="text-95 text-secondary-d3">
												<div class="row mb-2 mb-sm-0 py-25">
													<div class="d-none d-sm-block col-1">1</div>
													<div class="col-9 col-sm-5">Tiền thuê nhà</div>
													<div class="d-none d-sm-block col-2">${dateRange }
														ngày</div>
													<fmt:formatNumber var="price" value="${room.price}"
														type="currency" minFractionDigits="0" currencySymbol="" />
													<div class="d-none d-sm-block col-2 text-95">${price}
														VNĐ</div>
													<fmt:formatNumber var="totalHired"
														value="${dateRange * room.price }" type="currency"
														minFractionDigits="0" currencySymbol="" />
													<div class="col-2 text-secondary-d2">${totalHired }
														VNĐ</div>
													<c:set var="totalPay" value="${dateRange * room.price }"></c:set>
												</div>

												<c:forEach var="i" begin="2"
													end="${listServiceUsed.size() +1 }">
													<c:if test="${i % 2 == 0 }">
														<div class="row mb-2 mb-sm-0 py-25 bgc-default-l4">
															<div class="d-none d-sm-block col-1">${i }</div>
															<div class="col-9 col-sm-5">
																<c:if test="${bill.status != 'Đã thanh toán'}">
																	<a type="button" class="btn btn-small btn-sm"
																		href="${pageContext.request.contextPath}/manage-BillDetail?billId=${param.billId}&action=deleteService&roomId=${room.roomId}&serviceId=${listServiceUsed[i-2].serviceId}"
																		title="delete"><i class="fa fa-minus"></i> </a>
																</c:if>
																${listServiceUsed[i-2].serviceName }
															</div>
															<div class="d-none d-sm-block col-2">${listServiceUsed[i-2].amount }</div>
															<fmt:formatNumber var="servicePrice"
																value="${listServiceUsed[i-2].price }" type="currency"
																minFractionDigits="0" currencySymbol="" />
															<div class="d-none d-sm-block col-2 text-95">${servicePrice }
																VNĐ</div>
															<fmt:formatNumber var="servicePriceTotal"
																value="${listServiceUsed[i-2].amount * listServiceUsed[i-2].price}"
																type="currency" minFractionDigits="0" currencySymbol="" />
															<div class="col-2 text-secondary-d2">${servicePriceTotal }
																VNĐ</div>
														</div>
														<c:set var="totalPay"
															value="${totalPay + listServiceUsed[i-2].amount * listServiceUsed[i-2].price}"></c:set>
													</c:if>

													<c:if test="${i % 2 != 0 }">
														<div class="row mb-2 mb-sm-0 py-25">
															<div class="d-none d-sm-block col-1">${i }</div>
															<div class="col-9 col-sm-5">
																<c:if test="${bill.status != 'Đã thanh toán'}">
																	<a type="button" class="btn btn-small btn-sm"
																		href="${pageContext.request.contextPath}/manage-BillDetail?billId=${param.billId}&action=deleteService&roomId=${room.roomId}&serviceId=${listServiceUsed[i-2].serviceId}"
																		title="delete"><i class="fa fa-minus"></i> </a>
																</c:if>
																${listServiceUsed[i-2].serviceName }
															</div>
															<div class="d-none d-sm-block col-2">
																${listServiceUsed[i-2].amount }</div>
															<fmt:formatNumber var="servicePrice"
																value="${listServiceUsed[i-2].price }" type="currency"
																minFractionDigits="0" currencySymbol="" />
															<div class="d-none d-sm-block col-2 text-95">${servicePrice }
																VNĐ</div>
															<fmt:formatNumber var="servicePriceTotal"
																value="${listServiceUsed[i-2].amount * listServiceUsed[i-2].price}"
																type="currency" minFractionDigits="0" currencySymbol="" />
															<div class="col-2 text-secondary-d2">${servicePriceTotal }
																VNĐ</div>
														</div>
														<c:set var="totalPay"
															value="${totalPay + listServiceUsed[i-2].amount * listServiceUsed[i-2].price}"></c:set>
													</c:if>

												</c:forEach>
												<c:if test="${bill.status != 'Đã thanh toán'}">
													<div class="row mb-2 mb-sm-0 py-25">
														<div class="d-none d-sm-block col-1">
															<button type="button" class="btn btn-info"
																data-toggle="modal" data-target="#addService">Thêm
																dịch vụ</button>
														</div>
														<div class="col-9 col-sm-5"></div>
														<div class="d-none d-sm-block col-2"></div>
														<div class="d-none d-sm-block col-2 text-95"></div>
														<div class="col-2 text-secondary-d2"></div>
													</div>
												</c:if>

											</div>

											<div class="row border-b-2 brc-default-l2"></div>

											<div class="row mt-3">
												<div
													class="col-12 col-sm-7 text-grey-d2 text-95 mt-2 mt-lg-0">
												</div>

												<div
													class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last">
													<hr>



													<div class="row my-2 align-items-center bgc-primary-l3 p-2">
														<div class="col-6 text-right">Thành tiền</div>
														<div class="col-6">
															<fmt:formatNumber var="total" value="${totalPay}"
																type="currency" minFractionDigits="0" currencySymbol="" />
															<span class="text-150 text-success-d3 opacity-2">${total }
																VNĐ</span>
														</div>
													</div>
												</div>
											</div>

											<hr />

											<div>
												<span class="text-secondary-d1 text-105">thank you
													for trusting our business</span>
												<c:if test="${bill.status != 'Đã thanh toán' }">
													
													<a
														href="${pageContext.request.contextPath}/manage-BillDetail?action=save&billId=${param.billId}&total=${totalPay}"
														class="btn btn-info btn-bold px-4 float-right mt-3 mt-lg-0">Xác nhận thanh toán</a>
														<a style="margin-right: 7px;"
														href="${pageContext.request.contextPath}/manage-BillDetail?action=cancel&billId=${param.billId}"
														class="btn btn-danger btn-bold px-4 float-right mt-3 mt-lg-0">Hủy hóa đơn</a>
												</c:if>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- <div class="row">
						<div class="col-md-12">
							<div class="copyright">
								<p>
									Copyright © 2018 Colorlib. All rights reserved. Template by <a
										href="https://colorlib.com">Colorlib</a>.
								</p>
							</div>
						</div>
					</div> -->
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

	<c:if test="${bill_detail_message != null }">
		<script>
			let myModal = new bootstrap.Modal(document
					.getElementById('smallmodal'), {});
			myModal.show();
		</script>
		<%   
  
		HttpSession ss = request.getSession(true);
		ss.setAttribute("bill_detail_message", null);
  
		%>  
	</c:if>

</body>

</html>
<!-- end document-->
