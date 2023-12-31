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
<title>Chi tiết bài đăng</title>

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
	href="${pageContext.request.contextPath}/view/house-owner/endor/css-hamburgers/hamburgers.min.css"
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

<link
	href="${pageContext.request.contextPath}/view/house-owner/css/room.css"
	rel="stylesheet" media="all">

<!-- Plugin CKEDITOR -->
<script
	src="${pageContext.request.contextPath}/view/common/ckeditor/ckeditor.js"></script>

</head>

<body class="">
	<div class="page-wrapper">

		<!-- Header - Nav -->

		<jsp:include page="header.jsp"></jsp:include>

		<!-- End - Nav -->

		<!-- Message model -->
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
						<p>${building_detail_message }</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end Message model -->

		<!-- Add model -->
		<form action="building-detail" method="post"
				enctype="multipart/form-data">
			<div class="modal fade" id="AddModal" tabindex="-1" role="dialog"
				aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="mediumModalLabel">Thêm mới phòng</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="card">
								<div class="row">
									<div class="col-md-4">
										<div class="file-upload_1_0">

											<div class="image-upload-wrap_1_0">
												<input class="file-upload-input_1_0" type='file'
													onchange="readURL_1_0(this);" accept="image/*"
													name="image_1" multiple="multiple" required="required"/>
												<div class="drag-text_1_0">
													<h3>Drag and drop a file or select add Image</h3>
												</div>
											</div>
											<div class="file-upload-content_1_0">
												<img class="file-upload-image_1_0" src="#" alt="your image" />
												<div class="image-title-wrap_1_0">
													<button style="width: 90%;" type="button" onclick="removeUpload_1_0()"
														class="remove-image_1_0">
														Remove 
													</button>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-4">
										<div class="file-upload_2_0">

											<div class="image-upload-wrap_2_0">
												<input class="file-upload-input_2_0" type='file'
													onchange="readURL_2_0(this);" accept="image/*"
													name="image_2" multiple="multiple"  required="required"/>
												<div class="drag-text_2_0">
													<h3>Drag and drop a file or select add Image</h3>
												</div>
											</div>
											<div class="file-upload-content_2_0">
												<img class="file-upload-image_2_0" src="#" alt="your image" />
												<div class="image-title-wrap_2_0">
													<button style="width: 90%;" type="button" onclick="removeUpload_2_0()"
														class="remove-image_2_0">
														Remove 
													</button>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-4">
										<div class="file-upload_3_0">

											<div class="image-upload-wrap_3_0">
												<input class="file-upload-input_3_0" type='file'
													onchange="readURL_3_0(this);" accept="image/*"
													name="image_3" multiple="multiple"  required="required"/>
												<div class="drag-text_3_0">
													<h3>Drag and drop a file or select add Image</h3>
												</div>
											</div>
											<div class="file-upload-content_3_0">
												<img class="file-upload-image_3_0" src="#" alt="your image" />
												<div class="image-title-wrap_3_0">
													<button style="width: 90%;" type="button" onclick="removeUpload_3_0()"
														class="remove-image_3_0">
														Remove
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
								<input type="hidden" name="action" value="AddRoom">
								<input type="hidden" name="buildingId" value="${building.buildingId }">

									<div class="form-group">
										<label for="roomName">Tên phòng:</label> <input type="text"
											class="form-control" id="roomName"
											placeholder="Nhập tên phòng" name="roomName" value=""
											required>
									</div>

									<div class="form-group">
										<label for="status">Trạng thái hiển thị:</label> <select
											class="form-control" id="status" name="roomStatus">
											<option value="active">active</option>
											<option value="hide">hide</option>

										</select>
									</div>
									
									<div class="form-group">
										<label for="status">Loai phòng:</label> <select
											class="form-control" id="status" name="type">
											<c:forEach var="type" items="${listType }">
												<option value="${type.typeId }">${type.typeName }</option>
											</c:forEach>
											
										</select>
									</div>

									<div class="form-group">
										<label for="price">Giá (VNĐ):</label> <input type="number"
											class="form-control" id="price" placeholder="Giá tiền/ngày"
											name="price" value="" required>
									</div>

									<div class="form-group">
										<label for="bed">Số giường nằm:</label> <input id="bed"
											class="form-control" type="number" name="bed" value="">
									</div>

									<div class="form-group">
										<label for="area">Diện tích:</label> <input
											class="form-control" type="number" name="area" id="area"
											value="">
									</div>

									<div class="form-group">
										<label for="Update_Descript">Mô tả:</label>
										<textarea rows="" cols="" id="Update_Descript"
											name="Update_Descript"></textarea>
									</div>

								</div>
							</div>
							<div style="text-align: right;">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancel</button>
								<button type="submit" class="btn btn-primary">Xác nhận</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- end Add model -->

		<!--  Delete Model -->
		<c:forEach var="i" begin="1" end="${listRoom.size() }">
			<form action="building-detail" method="post">
				<div class="modal fade" id="delete${i }" tabindex="-1" role="dialog"
					aria-labelledby="smallmodalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="smallmodalLabel">Xóa bài đăng</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<input type="hidden" name="action" value="DeleteRoom"> 
								<input type="hidden" name="buildingId" value="${building.buildingId }">
								<input
									type="hidden" name="roomId" value="${listRoom[i-1].roomId}">
								<b>${listRoom[i-1].roomName}</b>
								<p>Các đơn đặt sẽ <b>bị hủy</b></p>
								<p>Bạn có chắc muốn xóa bài viết này.</p>
							</div>
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
		<!-- end Delete Model-->


		<!-- modal large -->
		<c:forEach var="i" begin="1" end="${listRoom.size() }">
			<form action="building-detail" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="action" value="UpdateRoom"> <input
					type="hidden" name="buildingId" value="${param.buildingId }">
				<input type="hidden" name="roomId" value="${listRoom[i-1].roomId}">
				<div class="modal fade" id="edit${i }" tabindex="-1" role="dialog"
					aria-labelledby="largeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="largeModalLabel">Chỉnh sửa
									thông tin</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
							<input type="hidden" name="originImage1"
													value="${listRoom[i-1].roomImages[0]}"> <input
													type="hidden" name="originImage2"
													value="${listRoom[i-1].roomImages[1]}"> <input
													type="hidden" name="originImage3"
													value="${listRoom[i-1].roomImages[2]}">
								<div class="card">
									<div class="row">
										<div class="col-md-4">
											<div class="file-upload_1_${i } file-upload_*_*">
												<div class="image-upload-wrap_1_${i } image-upload-wrap_*_*">
													<input
														class="file-upload-input_1_${i } file-upload-input_*_*"
														type='file' onchange="readURL_1_${i }(this);"
														accept="image/*" name="image_1" multiple="multiple" />
													<div class="drag-text_1_${i } drag-text_*_*">
														<img alt="" style="height: 150px;"
															src="${pageContext.request.contextPath}${listRoom[i-1].roomImages[0]}">
													</div>
												</div>
												
												<div
													class="file-upload-content_1_${i } file-upload-content_*_*">
													<img
														class="file-upload-image_1_${i } file-upload-image_*_*"
														src="#" alt="your image" />
													<div class="image-title-wrap_1_${i } image-title-wrap_*_*">
														<button type="button" onclick="removeUpload_1_${i }()"
															class="remove-image_1_${i } remove-image_*_*">
															Remove <span class="image-title_1_${i } image-title_*_*">Uploaded
																Image</span>
														</button>
													</div>
												</div>
											</div>
										</div>

										<div class="col-md-4">
											<div class="file-upload_2_${i } file-upload_*_*">

												<div
													class=" image-upload-wrap_2_${i } image-upload-wrap_*_*">
													<input
														class=" file-upload-input_2_${i } file-upload-input_*_*"
														type='file' onchange="readURL_2_${i }(this);"
														accept="image/*" name="image_2" multiple="multiple" />
													<div class="drag-text_2_${i } drag-text_*_*">
														<img alt="" style="height: 150px;"
															src="${pageContext.request.contextPath}${listRoom[i-1].roomImages[1]}">
													</div>
												</div>
												<div
													class=" file-upload-content_2_${i } file-upload-content_*_*">
													<img
														class=" file-upload-image_2_${i } file-upload-image_*_*"
														src="#" alt="your image" />
													<div class=" image-title-wrap_2_${i } image-title-wrap_*_*">
														<button type="button" onclick="removeUpload_2_${i }()"
															class="remove-image_2_${i } remove-image_*_*">
															Remove <span class="image-title_2_${i } image-title_*_*">Uploaded
																Image</span>
														</button>
													</div>
												</div>
											</div>
										</div>

										<div class="col-md-4">
											<div class="file-upload_3_${i } file-upload_*_*">

												<div
													class=" image-upload-wrap_3_${i } image-upload-wrap_*_*">
													<input
														class=" file-upload-input_3_${i } file-upload-input_*_*"
														type='file' onchange="readURL_3_${i }(this);"
														accept="image/*" name="image_3" multiple="multiple" />
													<div class="drag-text_3_${i } drag-text_*_*">
														<img alt="" style="height: 150px;"
															src="${pageContext.request.contextPath}${listRoom[i-1].roomImages[2]}">
													</div>
												</div>
												<div
													class=" file-upload-content_3_${i } file-upload-content_*_*">
													<img
														class=" file-upload-image_3_${i } file-upload-image_*_*"
														src="#" alt="your image" />
													<div class=" image-title-wrap_3_${i } image-title-wrap_*_*">
														<button type="button" onclick="removeUpload_3_${i }()"
															class="remove-image_3_${i } remove-image_*_*">
															Remove <span class="image-title_3_${i } image-title_*_*">Uploaded
																Image</span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">

										<div class="form-group">
											<label for="roomName">Tên phòng: </label> <input type="text"
												class="form-control" id="roomName"
												placeholder="Nhập tên phòng" name="roomName"
												value="${listRoom[i-1].roomName}" required>
										</div>

										<div class="form-group">
											<label for="status">Trạng thái hiển thị:</label> <select
												class="form-control" id="status" name="roomStatus">
												<option value="${listRoom[i-1].roomStatus}">${listRoom[i-1].roomStatus}</option>
												<c:if test="${listRoom[i-1].roomStatus == 'active'}">
													<option>hide</option>
												</c:if>
												<c:if test="${listRoom[i-1].roomStatus != 'active'}">
													<option>active</option>
												</c:if>


											</select>
										</div>

										<div class="form-group">
											<label for="price">Giá (VNĐ):</label> <input type="text"
												class="form-control" id="price"
												placeholder="Giá tiền/ngày" name="price"
												value="${listRoom[i-1].price}" required>
										</div>

										<div class="form-group">
											<label for="bed">Số giường nằm:</label> <input id="bed"
												class="form-control" type="number" name="bed"
												value="${listRoom[i-1].bed}">

										</div>

										<div class="form-group">
											<label for="area">Diện tích:</label> <input
												class="form-control" type="number" name="area" id="area"
												value="${listRoom[i-1].area}">
										</div>

										<div class="form-group">
											<label for="Update_Descript${i }">Mô tả:</label>
											<textarea rows="" cols="" id="Update_Descript${i }"
												name="Update_Descript">${listRoom[i-1].roomDesc}</textarea>
										</div>

									</div>
								</div>
								<div style="text-align: right;">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Cancel</button>
									<button type="submit" class="btn btn-primary">Xác nhận</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>
		<!-- end modal large -->


		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<strong class="card-title">${building.buildingName } <small>
											<c:if test="${building.buildingStatus == 'active'}">
												<span class="badge badge-success float-right mt-1">Active</span>
											</c:if> <c:if test="${building.buildingStatus == 'not active'}">
												<span class="badge badge-warning pull-right r-activity">Not
													active</span>
											</c:if>
									</small>
									</strong>
								</div>
								<div class="card-body">
									<p class="card-text">
										Số phòng: ${building.numRoom} <a style="margin-left: 5px;"
											href="" data-toggle="modal" data-target="#AddModal"
											class="badge badge-success mt-1"> Thêm + </a>
									</p>
									<p class="card-text">Địa chỉ: ${building.buildingAddress}</p>
									<p class="card-text">${building.buildingDesc}</p>
								</div>
							</div>
						</div>

					</div>


					<c:forEach var="i" begin="1" end="${listRoom.size() }">
						<c:if test="${i % 3 == 1 }">
							<div class="row">
						</c:if>
						<div class="col-md-4">
							<div class="card">
								<img class="card-img-top"
									src="${pageContext.request.contextPath}${listRoom[i-1].roomImages[0]}"
									alt="" style="width: 100%; height: 210px;">
								<div class="card-body">
									<h5 class="card-title mb-3">${listRoom[i-1].roomName}</h5>
									<p>
										<a href="">Xem chi tiết lịch phòng</a>
									</p>
									<p>
										<b>Trạng thái phòng:</b>
										<c:if test="${listRoom[i-1].currentStatus != 'Trống'}">
											<span style="color: red">
												${listRoom[i-1].currentStatus} </span>
										</c:if>

										<c:if test="${listRoom[i-1].currentStatus == 'Trống'}">
											<span style="color: green">
												${listRoom[i-1].currentStatus} </span>
										</c:if>
									</p>
									<p>
										<b>Trạng thái hiển thị:</b>
											<c:if test="${listRoom[i-1].roomStatus == 'active'}">
												<span class="badge badge-success mt-1">Active</span>
											</c:if> 
											<c:if test="${listRoom[i-1].roomStatus != 'active'}">
												<span class="badge badge-danger r-activity">Not
													active</span>
											</c:if>
									</p>
									<fmt:formatNumber var="gia" value=" ${listRoom[i-1].price}"
										type="currency" minFractionDigits="0" currencySymbol="" />
									<p>
										<b>Giá: </b> ${gia } VNĐ
									</p>
									<div>
										<p>
											<b>Phòng: </b>${listRoom[i-1].bed} giường nằm |
											${listRoom[i-1].area} m2
										</p>
									</div>
									<p>
										<b>Concept: </b> ${listRoom[i-1].typeName}
									</p>
									<p class="card-text">${listRoom[i-1].roomDesc}</p>
									<hr>
									<div style="text-align: right;">
										<button class="btn btn-primary" data-toggle="modal"
											data-target="#edit${i }">Chỉnh sửa</button>
										<button class="btn btn-danger" data-toggle="modal"
											data-target="#delete${i }">Xóa</button>
									</div>

								</div>
							</div>
						</div>

						<c:if test="${i % 3 == 0 }">
				</div>
				</c:if>
				</c:forEach>

			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT-->
	<!-- END PAGE CONTAINER-->
	<input type="hidden" value="${listRoom.size() }" id="totalRoom">
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

	<script
		src="${pageContext.request.contextPath}/view/house-owner/js/room.js"></script>

	<script>
		var total = document.getElementById('totalRoom').value;
		console.log(total);
		for (var i = 1; i <= total; i++) {
			CKEDITOR.replace('Update_Descript' + i);
		}
	</script>

	<script>
			CKEDITOR.replace('Update_Descript');
	</script>

	<c:if test="${building_detail_message != null }">
		<script>
			let myModal = new bootstrap.Modal(document
					.getElementById('smallmodal'), {});
			myModal.show();
		</script>
		<%   
  
		HttpSession ss = request.getSession(true);
		ss.setAttribute("building_detail_message", null);
  
		%>  
	</c:if>

</body>

</html>
<!-- end document-->
