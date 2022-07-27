<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>

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
</style>

</head>
<div class="main-content">
	<!-- Top navbar -->
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
		style="min-height: 600px; background-image: url(${pageContext.request.contextPath}/view/web/images/nam.jpeg); background-size: cover; background-position: center;">
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
								<a href="#"> <img
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
									<div>
										<span class="heading">22</span> <span class="description">Friends</span>
									</div>
									<div>
										<span class="heading">10</span> <span class="description">Photos</span>
									</div>
									<div>
										<span class="heading">89</span> <span class="description">Comments</span>
									</div>
								</div>
							</div>
						</div>
						<div class="text-center">
							<h3>
								${usersession.user.name }<span class="font-weight-light">,
									27</span>
							</h3>
							<div class="h5 font-weight-300">
								<i class="ni location_pin mr-2"></i>Bucharest, Romania
							</div>

							<hr class="my-4">

							<a href="#">Show more</a>
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
							<div id="flip" class="col-4 text-right">
								<a class="btn btn-sm btn-primary" style="color: white;">Xem
									lịch sử đặt phòng</a>
							</div>
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
												placeholder="Username" value="${usersession.user.name}" name="name">
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
												class="form-control form-control-alternative"
												placeholder="" name="phone"
												value="${usersession.user.phoneNumber}">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="form-group focused">
											<label class="form-control-label" for="input-last-name">Role</label>
											<input type="text" id="input-last-name"
												class="form-control form-control-alternative"
												placeholder="Last name" value="${usersession.user.role}"
												disabled="disabled">
										</div>
									</div>
								</div>
								<c:if test="${ismsg != null}">
									<c:if test="${ismsg == 'Cập nhật thông tin cá nhân thành công' }">
										<div style="text-align: right;">
											<p style="color: green;">${ismsg }</p>
										</div>
									</c:if>
									<c:if test="${ismsg != 'Cập nhật thông tin cá nhân thành công' }">
										<div style="text-align: right;">
											<p style="color: red;">${ismsg }</p>
										</div>
									</c:if>
									</c:if>
								<div class="col-md-12"
									style="text-align: right; padding-right: 0px;">
									<button type="submit" class="btn btn-info">Xác nhận</button>
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
												type="password"  name="rePassword">
										</div>
									</div>
									<c:if test="${msg != null}">
										<div style="text-align: right;">
											<p style="color: red;">${msg }</p>
										</div>
									</c:if>
									<div class="col-md-12" style="text-align: right;">
										<button type="submit" class="btn btn-info">Xác nhận</button>
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
										<textarea rows="4"
											class="form-control form-control-alternative"
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
												<td style="color: 	gold;">Not approve yet</td>
											</c:if>
											<c:if test="${item.status == 'Đã xác nhận'}">
												<td>Comming</td>
											</c:if>
											<c:if test="${item.status == 'Đã thanh toán'}">
												<td style="color: green;">Done</td>
											</c:if>
											<c:if test="${item.status == 'Đã từ chối'}">
												<td style="color: black;">Canceled</td>
											</c:if>
											
											<fmt:formatNumber var="total" value="${item.total }"
					type="currency" minFractionDigits="0" currencySymbol="" />
											<td>${total } </td>
											<td>
											<c:if test="${item.status == 'Chờ xác nhận'}">
												<a type="button" style="color: white;" class="btn btn-danger btn-sm">Hủy</a>
											</c:if>
											<c:if test="${item.status != 'Chờ xác nhận'}">
												<button type="button"  disabled="disabled" style="color: white;" class="btn btn-danger btn-sm">Hủy</button>
											</c:if>
											<a type="button" style="color: white;" class="btn btn-primary btn-sm">Xem</a>
											</td>
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
</body>
</html>