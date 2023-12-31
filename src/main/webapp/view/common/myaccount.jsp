<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tài khoản</title>

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



<link
	href="${pageContext.request.contextPath}/view/common/css/myaccount.css"
	rel="stylesheet">

<style>
#panel, #history {
	display: none;
}

.file-upload {
	background-color: #ffffff;
	margin: 0 auto;
}

.file-upload-btn {
	width: 100%;
	margin: 0;
	color: #fff;
	background: #1FB264;
	border: none;
	padding: 10px;
	border-radius: 4px;
	border-bottom: 4px solid #15824B;
	transition: all .2s ease;
	outline: none;
	text-transform: uppercase;
	font-weight: 700;
}

.file-upload-btn:hover {
	background: #1AA059;
	color: #ffffff;
	transition: all .2s ease;
	cursor: pointer;
}

.file-upload-btn:active {
	border: 0;
	transition: all .2s ease;
}

.file-upload-content {
	display: none;
	text-align: center;
}

.file-upload-input {
	position: absolute;
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	outline: none;
	opacity: 0;
	cursor: pointer;
}

.image-upload-wrap {
	margin-top: 20px;
	border: 2px dashed #666867;
	position: relative;
}

.image-dropping, .image-upload-wrap:hover {
	background-color: gray;
	border: 2px dashed #green;
}

.image-title-wrap {
	padding: 0 15px 15px 15px;
	color: #222;
}

.drag-text {
	text-align: center;
}

.drag-text h3 {
	font-weight: 100;
	text-transform: uppercase;
	color: #666a68;
	padding: 60px 0;
}

.file-upload-image {
	max-height: 200px;
	max-width: 200px;
	margin: auto;
	padding: 20px;
}

.remove-image {
	width: 200px;
	margin: 0;
	color: #fff;
	background: #cd4535;
	border: none;
	padding: 10px;
	border-radius: 4px;
	border-bottom: 4px solid #b02818;
	transition: all .2s ease;
	outline: none;
	text-transform: uppercase;
	font-weight: 700;
}

.remove-image:hover {
	background: #c13b2a;
	color: #ffffff;
	transition: all .2s ease;
	cursor: pointer;
}

.remove-image:active {
	border: 0;
	transition: all .2s ease;
}

.form-field {
	margin-bottom: 15px;
}
</style>

</head>
<div class="main-content">

	<!-- modal medium -->
	<c:forEach var="item" items="${listBill }">
		<div class="modal fade" id="view${item.billID }" tabindex="-1"
			role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">

					<div class="page-content container">
						<div class="page-header text-blue-d2">
							<h1 class="page-title text-secondary-d1">
								Invoice <small class="page-info"> <i
									class="fa fa-angle-double-right text-80"></i> ID:
									#${item.billID }
								</small>
							</h1>
						</div>

						<div class="container px-0">
							<div class="row mt-4">
								<div class="col-12 col-lg-12">	
									<hr class="row brc-default-l1 mx-n1 mb-4" />

									<div class="row">
										<div class="col-sm-6">
											<div>
												<span class="text-sm text-grey-m2 align-middle">To:</span> <span
													class="text-600 text-110 text-blue align-middle">${item.user.name }
												</span>
											</div>
											<div class="text-grey-m2">
												<div class="my-1">Email: ${item.user.email }</div>
												<div class="my-1">
													<i class="fa fa-phone fa-flip-horizontal text-secondary"></i>
													<b class="text-600">${item.user.phoneNumber }</b>
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
														class="text-600 text-90">ID:</span> #${item.billID }
												</div>

												<div class="my-2">
													<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span
														class="text-600 text-90">Order Date:</span> ${item.date }
												</div>

												<div class="my-2">

													<c:if test="${item.status == 'Đã thanh toán'}">
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

									<div class="row border-b-2 brc-default-l2"></div>

									<div class="row mt-3" style="margin-left: 60%; width: 100%;">

										<div
											class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last">

											<div class="row my-2 align-items-center bgc-primary-l3 p-2">
												<div class="col-7 text-right">Thành tiền (VNĐ)</div>
												<div class="col-5">
														<fmt:formatNumber var="total" value="${item.total }"
												type="currency" minFractionDigits="0" currencySymbol="" />
													<span style="font-weight: bold;" class="text-150 text-success-d3 opacity-2">${total }</span>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-sm"
						data-dismiss="modal">Exit</button>
				</div>
				</div>				
			</div>
		</div>
</c:forEach>
<!-- end modal medium -->

<!-- modal small -->
<form action="AdminGeneralControl" method="post">
	<input type="hidden" name="action" value="addService">
	<div class="modal fade" id="changeImage" tabindex="-1" role="dialog"
		aria-labelledby="smallmodalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">

				<div class="modal-body">
					<div class="file-upload">
						<button class="file-upload-btn" type="button"
							onclick="$('.file-upload-input').trigger( 'click' )">Add
							Image</button>

						<div class="image-upload-wrap">
							<input class="file-upload-input" type='file'
								onchange="readURL(this);" accept="image/*" name="Update_image"
								multiple="multiple" required="required" value="" />
							<div class="drag-text">
								<h3>Drag and drop a file or select add Image</h3>
							</div>
						</div>
						<div class="file-upload-content">
							<img class="file-upload-image" src="#" alt="your image" />
							<div class="image-title-wrap">
								<button type="button" onclick="removeUpload()"
									class="remove-image">
									Remove <span class="image-title">Uploaded Image</span>
								</button>
							</div>
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


<!-- modal small -->
<c:forEach var="item" items="${listBill }">
	<form action="my-account" method="post">
		<input type="hidden" name="action" value="cancelInvoice"> <input
			type="hidden" name="billId" value="${item.billID }">
		<div class="modal fade" id="cancelInvoice${item.billID }"
			tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">Thông báo</div>
					<div class="modal-body">Bạn có chắc hủy đơn này?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-primary">Xác nhận</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</c:forEach>

<nav class="navbar navbar-top navbar-expand-md navbar-dark"
	id="navbar-main">
	<div class="container-fluid">
		<!-- Brand -->
		<a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block"
			href="home">Trang chủ</a>
		<!-- Form -->
		<form
			class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
			<div class="form-group mb-0">
				<div class="input-group input-group-alternative">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-search"></i></span>
					</div>
					<input class="form-control" placeholder="Search" type="text">
				</div>
			</div>
		</form>
		<!-- User -->
		<ul class="navbar-nav align-items-center d-none d-md-flex">
			<li class="nav-item dropdown"><a class="nav-link pr-0" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">
					<div class="media align-items-center">
						<span class="avatar avatar-sm rounded-circle"> <img
							alt="Image placeholder"
							src="${pageContext.request.contextPath}${usersession.user.avatar} ">
						</span>
						<div class="media-body ml-2 d-none d-lg-block">
							<span class="mb-0 text-sm  font-weight-bold">${usersession.user.name }</span>
						</div>
					</div>
			</a>
				<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
					<div class=" dropdown-header noti-title">
						<h6 class="text-overflow m-0">Welcome!</h6>
					</div>
					<a href="../examples/profile.html" class="dropdown-item"> <i
						class="ni ni-single-02"></i> <span>My profile</span>
					</a> <a href="../examples/profile.html" class="dropdown-item"> <i
						class="ni ni-settings-gear-65"></i> <span>Cài đặt</span>
					</a> <a href="../examples/profile.html" class="dropdown-item"> <i
						class="ni ni-calendar-grid-58"></i> <span>Hoạt động</span>
					</a> <a href="../examples/profile.html" class="dropdown-item"> <i
						class="ni ni-support-16"></i> <span>Hỗ trợ</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#!" class="dropdown-item"> <i class="ni ni-user-run"></i>
						<span>Đăng xuất</span>
					</a>
				</div></li>
		</ul>
	</div>
</nav>
<!-- Header -->
<div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center"
	style="min-height: 200px; background-image: url(${pageContext.request.contextPath}/view/web/images/nam.jpeg); background-size: cover; background-position: center;">
	<!-- Mask -->
	<span class="mask bg-gradient-default opacity-8"></span>
	<!-- Header container -->
	<div class="container-fluid d-flex align-items-center">
		<div class="row">
			<div class="col-lg-7 col-md-10">
				<h1 class="display-2 text-white">Hello ${usersession.user.name }</h1>
				<p class="text-white mt-0 mb-5">This is your profile page. You
					can see the progress you've made with your work and manage your
					projects or assigned tasks</p>
				<!-- <a href="#main-content" class="btn btn-info">Edit profile</a> -->
			</div>
		</div>
	</div>
</div>
<!-- Page content -->
<div class="container-fluid mt--7">
	<div class="row">
		<div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
			<div class="card card-profile shadow">
				<div class="row justify-content-center">
					<div class="col-lg-3 order-lg-2">
						<div class="card-profile-image">
							<a href="" data-toggle="modal" data-target="#changeImage"> <img
								src="${pageContext.request.contextPath}${usersession.user.avatar}"
								class="rounded-circle">
							</a>
						</div>
					</div>
				</div>
				<div
					class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
					<div class="d-flex justify-content-between"></div>
				</div>
				<div class="card-body pt-0 pt-md-4">
					<div class="row">
						<div class="col">
							<div
								class="card-profile-stats d-flex justify-content-center mt-md-5">
								<c:if test="${usersession.user.role == 'Owner' }">
									<div>
										<span class="heading">10</span> <span class="description">Bài
											đăng</span>
									</div>
									<div>
										<span class="heading">89</span> <span class="description">Comments</span>
									</div>
								</c:if>

							</div>
						</div>
					</div>
					<div class="text-center">
						<h3>${usersession.user.name }</h3>

						<hr class="my-4">

					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-8 order-xl-1">
			<div class="card bg-secondary shadow">
				<div class="card-header bg-white border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0">Quản lý thông tin</h3>
						</div>
						<c:if test="${usersession.user.role == 'User' }">
							<div id="flip" class="col-4 text-right">
								<a class="btn btn-sm btn-primary" id="viewOrders"
									style="color: white;">Xem lịch sử đặt phòng</a> <a
									class="btn btn-sm btn-primary"
									href="${pageContext.request.contextPath}/log-out"
									style="color: white;">Đăng xuất</a>
							</div>
						</c:if>
					</div>
				</div>
				<div class="card-body" id="main-content">

					<h6 class="heading-small text-muted mb-4">Thông tin cá nhân</h6>
					<form action="my-account" method="post">
						<input name="action" value="updateInfor" type="hidden">
						<div class="pl-lg-4">
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group focused">
										<label class="form-control-label" for="input-username">Username</label>
										<input type="text" id="input-username"
											class="form-control form-control-alternative"
											placeholder="Username" value="${usersession.user.name}"
											name="name">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<label class="form-control-label" for="input-email">Email
											address</label> <input type="email" id="input-email"
											class="form-control form-control-alternative"
											placeholder="jesse@example.com"
											value="${usersession.user.email}" name="email">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group focused">
										<label class="form-control-label" for="input-first-name">Số
											điện thoại</label> <input type="text" id="input-first-name"
											class="form-control form-control-alternative" placeholder=""
											name="phone" value="${usersession.user.phoneNumber}">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group focused">
										<label class="form-control-label" for="input-last-name">Role</label>
										<c:if test="${usersession.user.role == 'Owner'}">
											<input type="text" id="input-last-name"
												class="form-control form-control-alternative"
												placeholder="Last name" value="Người cho thuê"
												disabled="disabled">
										</c:if>
										<c:if test="${usersession.user.role == 'User'}">
											<input type="text" id="input-last-name"
												class="form-control form-control-alternative"
												placeholder="Last name" value="Khách thuể" disabled="disabled">
										</c:if>
										<c:if test="${usersession.user.role == 'Admin'}">
											<input type="text" id="input-last-name"
												class="form-control form-control-alternative"
												placeholder="Last name" value="Admin"
												disabled="disabled">
										</c:if>
									</div>
								</div>
							</div>
							<c:if test="${ismsg != null}">
								<c:if
									test="${ismsg == 'Cập nhật thông tin cá nhân thành công' }">
									<div style="text-align: right;">
										<p style="color: green;">${ismsg }</p>
									</div>
								</c:if>
								<c:if
									test="${ismsg != 'Cập nhật thông tin cá nhân thành công' }">
									<div style="text-align: right;">
										<p style="color: red;">${ismsg }</p>
									</div>
								</c:if>
							</c:if>
							<div class="col-md-12"
								style="text-align: right; padding-right: 0px;">
								<button type="submit" class="btn btn-info">Cập nhật</button>
							</div>
					</form>
				</div>
				<hr class="my-4">
				<!-- Address -->
				<h6 class="heading-small text-muted mb-4">Thay đổi mật khẩu</h6>

				<form action="my-account" method="post">
					<div class="pl-lg-4">

						<input name="action" value="updatePassword" type="hidden">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group focused">
									<label class="form-control-label" for="input-address">Mật
										khẩu hiện tại</label> <input id="input-address"
										class="form-control form-control-alternative" placeholder=""
										type="password" name="oldPassword">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group focused">
									<label class="form-control-label" for="input-city">Mật
										khẩu mới</label> <input id="input-newPassword"
										class="form-control form-control-alternative" placeholder=""
										type="password" name="newPassword">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group focused">
									<label class="form-control-label" for="input-country">Nhập
										lại mật khẩu mới</label> <input id="input-country"
										class="form-control form-control-alternative" placeholder=""
										type="password" name="rePassword">
								</div>
							</div>
							<c:if test="${msg != null}">
								<div style="text-align: right;">
									<p style="color: red;">${msg }</p>
								</div>
							</c:if>
							<div class="col-md-12" style="text-align: right;">
								<button type="submit" class="btn btn-info">Cập nhật</button>
							</div>
						</div>
					</div>
				</form>

				<hr class="my-4">
				<!-- Description -->
				<div id="panel">
					<h6 class="heading-small text-muted mb-4">About me</h6>
					<div class="pl-lg-4">
						<div class="form-group focused">
							<label>About Me</label>
							<textarea rows="4" class="form-control form-control-alternative"
								placeholder="A few words about you ...">A beautiful Dashboard for Bootstrap 4. It is Free and Open Source.</textarea>
						</div>
					</div>
				</div>
			</div>

			<div class="card-body" id="history">
				<!-- DATA TABLE-->
				<div class="table-responsive m-b-40">
					<table class="table table-borderless table-data3">
						<thead>
							<tr>
								<th>Mã hóa đơn</th>
								<th>Ngày đặt</th>
								<th>Trạng thái</th>
								<th>Tổng (VNĐ)</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listBill }">
								<tr>
									<td>${item.billID }</td>
									<td>${item.date }</td>
									<c:if test="${item.status == 'Chờ xác nhận'}">
										<td style="color: blue;">Chờ xác nhận</td>
									</c:if>
									<c:if test="${item.status == 'Đã xác nhận'}">
										<td>Up Comming</td>
									</c:if>
									<c:if test="${item.status == 'Đã thanh toán'}">
										<td style="color: green;">Đã thanh toán</td>
									</c:if>
									<c:if test="${item.status == 'Đã từ chối'}">
										<td style="color: red;">Canceled</td>
									</c:if>

									<c:if test="${item.status == 'Đã hủy'}">
										<td style="color: red;">Canceled</td>
									</c:if>

									<fmt:formatNumber var="total" value="${item.total }"
										type="currency" minFractionDigits="0" currencySymbol="" />
									<td>${total }</td>
									<td><c:if test="${item.status == 'Chờ xác nhận'}">
											<a href="" data-toggle="modal"
												data-target="#cancelInvoice${item.billID }"
												class="btn btn-danger btn-sm">Hủy</a>
										</c:if> <c:if test="${item.status == 'Đã thanh toán'}">
											<a data-toggle="modal" data-target="#view${item.billID }"
												style="color: white;" class="btn btn-primary btn-sm">Xem</a>
										</c:if> <c:if test="${item.status == 'Đã hủy'}">
											<button type="button" disabled="disabled"
												style="color: white;" class="btn btn-primary btn-sm">Xem</button>
										</c:if> <c:if test="${item.status == 'Đã từ chối'}">
											<button type="button" disabled="disabled"
												style="color: white;" class="btn btn-primary btn-sm">Xem</button>
										</c:if> <c:if test="${item.status == 'Đã xác nhận'}">
											<button type="button" disabled="disabled"
												style="color: white;" class="btn btn-primary btn-sm">Xem</button>
										</c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- END DATA TABLE-->
			</div>



		</div>
	</div>
</div>
</div>
</div>
<footer class="footer">
	<div class="row align-items-center justify-content-xl-between">
		<div class="col-xl-6 m-auto text-center">
			<div class="copyright"></div>
		</div>
	</div>
</footer>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#flip").click(function() {
			$("#main-content").slideToggle("slow");
			$("#history").slideToggle("slow");
		});
	});
</script>

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


<script>
	function readURL(input) {
		if (input.files && input.files[0]) {

			var reader = new FileReader();

			reader.onload = function(e) {
				$('.image-upload-wrap').hide();

				$('.file-upload-image').attr('src', e.target.result);
				$('.file-upload-content').show();

				$('.image-title').html(input.files[0].name);
			};

			reader.readAsDataURL(input.files[0]);

		} else {
			removeUpload();
		}
	}

	function removeUpload() {
		$('.file-upload-input').replaceWith($('.file-upload-input').clone());
		$('.file-upload-content').hide();
		$('.image-upload-wrap').show();
	}
	$('.image-upload-wrap').bind('dragover', function() {
		$('.image-upload-wrap').addClass('image-dropping');
	});
	$('.image-upload-wrap').bind('dragleave', function() {
		$('.image-upload-wrap').removeClass('image-dropping');
	});
</script>

<c:if test="${trigger != null }">
	<script>
		var a = document.getElementById("viewOrders");
		a.click();
	</script>
</c:if>

</body>
</html>