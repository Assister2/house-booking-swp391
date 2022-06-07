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
<title>Forms</title>

<!-- Fontfaces CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/font-face.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-4.7/css/font-awesome.min.css"
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

<body class="animsition">
	<div class="page-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<!-- HEADER DESKTOP-->

		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6">
							<div class="card">
								<div class="card-header">Thông tin chung</div>
								<div class="card-body">
									<!-- <div class="card-title">
                                            <h3 class="text-center title-2"></h3>
                                        </div>
                                        <hr> -->
									<form action="" method="post" novalidate="novalidate">
										<div class="form-group">
											<label for="cc-payment" class="control-label mb-1">Tên
												phòng</label> <input id="cc-pament" name="cc-payment" type="text"
												class="form-control" aria-required="true"
												aria-invalid="false" value="100.00">
										</div>
										<div class="form-group has-success">
											<label for="cc-name" class="control-label mb-1">Giá/ngày</label>
											<input id="cc-name" name="cc-name" type="text"
												class="form-control cc-name valid" data-val="true"
												data-val-required="Please enter the name on card"
												autocomplete="cc-name" aria-required="true"
												aria-invalid="false" aria-describedby="cc-name-error">
											<span class="help-block field-validation-valid"
												data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
										</div>
										<div></div>
										<div class="row form-group">
											<div class="col-4">
												<label for="selectTinh" class=" form-control-label">Tỉnh</label>
												<select name="selectTinh" id="selectTinh"
													class="form-control">
													<option value="0">Please select</option>
													<option value="1">Option #1</option>
													<option value="2">Option #2</option>
													<option value="3">Option #3</option>
												</select>
											</div>

											<div class="col-4">
												<label for="selectTP" class=" form-control-label">Thành
													phố</label> <select name="selectTP" id="selectTP"
													class="form-control">
													<option value="0">Please select</option>
													<option value="1">Option #1</option>
													<option value="2">Option #2</option>
													<option value="3">Option #3</option>
												</select>
											</div>

											<div class="col-4">
												<label for="selectHuyen" class=" form-control-label">Quận/huyện</label>
												<select name="selectHuyen" id="selectHuyen"
													class="form-control">
													<option value="0">Please select</option>
													<option value="1">Option #1</option>
													<option value="2">Option #2</option>
													<option value="3">Option #3</option>
												</select>
											</div>
										</div>
										<br>
										<div class="row form-group">
											<div class="col col-md-5">
												<label for="file-multiple-input" class=" form-control-label">Thêm
													hình ảnh 1</label>
											</div>
											<div class="col-12 col-md-7">
												<input type="file" id="file-input" name="file-input"
													class="form-control-file">
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-5">
												<label for="file-multiple-input" class=" form-control-label">Thêm
													hình ảnh 2</label>
											</div>
											<div class="col-12 col-md-7">
												<input type="file" id="file-input" name="file-input"
													class="form-control-file">
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-5">
												<label for="file-multiple-input" class=" form-control-label">Thêm
													hình ảnh 3</label>
											</div>
											<div class="col-12 col-md-7">
												<input type="file" id="file-input" name="file-input"
													class="form-control-file">
											</div>
										</div>
										<div class="form-group">
											<label for="textarea-input" class="control-label mb-1">Mô
												tả</label>
											<textarea name="textarea-input" id="textarea-input" rows="9"
												placeholder="Content..." class="form-control"></textarea>

										</div>

									</form>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="card">
								<div class="card-header">
									<strong>Thông tin</strong> <small> chi tiết</small>
								</div>
								<div class="card-body card-block">
									<div class="form-group">
										<label for="company" class=" form-control-label">Tình
											trạng</label> <input type="text" id="company" placeholder=""
											class="form-control">
									</div>
									<div class="form-group">
										<label for="vat" class=" form-control-label">Thời hạng
											cho thuê</label> <input type="text" id="vat" placeholder=""
											class="form-control">
									</div>
									<div class="form-group">
										<label for="street" class=" form-control-label">Sức
											chứa</label> <input type="text" id="street" placeholder=""
											class="form-control">
									</div>

									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Tiện nghi</label>
										</div>
										<div class="col col-md-5">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="option1" class="form-check-input">Bãi đỗ xe
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="option2" class="form-check-input">Vật nuôi
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="option3" class="form-check-input">Wifi miễn
														phí
													</label>
												</div>
											</div>
										</div>

										<div class="col col-md-4">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="option1" class="form-check-input">Hồ bơi
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="option2" class="form-check-input">Bàn làm
														việc
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="option3" class="form-check-input"> Option 3
													</label>
												</div>
											</div>
										</div>

										<div class="col col-md-3">
											<label class=" form-control-label"></label>
										</div>

										<div class="col col-md-5">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="option1" class="form-check-input">Option 1
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="option2" class="form-check-input"> Option 2
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="option3" class="form-check-input"> Option 3
													</label>
												</div>
											</div>
										</div>

										<div class="col col-md-4">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="option1" class="form-check-input">Option 1
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="option2" class="form-check-input"> Option 2
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="option3" class="form-check-input"> Option 3
													</label>
												</div>
											</div>
										</div>

										<div class="col col-md-3">
											<label class=" form-control-label"></label>
										</div>

										<div class="col col-md-5">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="option1" class="form-check-input">Option 1
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="option2" class="form-check-input"> Option 2
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="option3" class="form-check-input"> Option 3
													</label>
												</div>
											</div>
										</div>

										<div class="col col-md-4">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="option1" class="form-check-input">Option 1
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="option2" class="form-check-input"> Option 2
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="option3" class="form-check-input"> Option 3
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-header">
						<button type="submit" class="btn btn-primary btn-sm">
							<i class="fa fa-dot-circle-o"></i> Submit
						</button>
						<button type="reset" class="btn btn-danger btn-sm">
							<i class="fa fa-ban"></i> Reset
						</button>
					</div>

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

</body>

</html>
<!-- end document-->
