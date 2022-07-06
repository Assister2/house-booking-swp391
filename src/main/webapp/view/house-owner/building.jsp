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
<title>Tab</title>

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

<!-- Plugin CKEDITOR -->
<script
	src="${pageContext.request.contextPath}/view/common/ckeditor/ckeditor.js"></script>

<!-- Main CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/theme.css"
	rel="stylesheet" media="all">
<style>
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
	border: 4px dashed #666867;
	position: relative;
}

.image-dropping, .image-upload-wrap:hover {
	background-color: #55e46f;
	border: 4px dashed #ffffff;
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

<body class="">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- END HEADER DESKTOP-->
		<!-- modal large -->

		<c:forEach var="i" begin="1" end="${listBuilding.size() }">
			<form action="manage" method="post" enctype="multipart/form-data">
				<input type="hidden" name="action" value="UpdateBuilding">
				<div class="modal fade" id="building${i }" tabindex="-1"
					role="dialog" aria-labelledby="building${i }" aria-hidden="true">
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
								<div class="row">


									<div class="col-4">
										<div class="file-upload">
											<button class="file-upload-btn" type="button"
												onclick="$('.file-upload-input').trigger( 'click' )">Add
												Image</button>

											<div class="image-upload-wrap">
												<input class="file-upload-input" type='file'
													onchange="readURL(this);" accept="image/*"
													name="Update_image" multiple="multiple" />
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
									<div class="col-8">
										<div class="row">
											<input type="hidden" name="Update_buildingId"
												value="${listBuilding[i-1].buildingId}">
											<div class="col-md-12">
												<span style="font-weight: bolder;">Tên nhà</span>
											</div>

										</div>
										<div class="row form-field">
											<div class="col-md-12">
												<input type="text" id="" name="Update_buildingName"
													placeholder="Nhập tên nhà" class="form-control"
													required="required"
													value="${listBuilding[i-1].buildingName}">
											</div>

										</div>


										<div class="row">
											<div class="col-md-12">
												<span style="font-weight: bolder;">Thông tin chi tiết</span>
											</div>
											<div class="col-md-4">
												<input type="number" id="" name="Update_area"
													placeholder="Diện tích" class="form-control"
													required="required"
													value="${listBuilding[i-1].buildingArea}">
											</div>

											<div class="form-group col-md-8">
												<select class="form-control" id=""
													name="Update_buildingType" required="required">
													<option value="${listBuilding[i-1].buildingType}">${listBuilding[i-1].buildingType}</option>
													<option value="Nhà nguyên căn">Nhà nguyên căn</option>
													<option value="Phòng riêng">Phòng riêng</option>
												</select>
											</div>

										</div>

										<div class="row form-field">
											<div class="col-md-12">
												<textarea class="form-control" name="Update_buildingInfor"
													placeholder="Thông tin hữu ích: nhà gần trường, hướng mặt tiền,.."
													id="Update_infor" rows="2">${listBuilding[i-1].buildingDetailInfor}</textarea>
											</div>
										</div>

										<div class="row form-field">

											<div class="col-md-12">
												<textarea class="form-control" name="Update_buildingRule"
													placeholder="Nội quy" id="Update_Rules" rows="3">${listBuilding[i-1].buildingRule}</textarea>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<span style="font-weight: bolder;">Mô tả</span>
											</div>

										</div>
										<div class="row form-field	">

											<div class="col-md-12">
												<textarea class="form-control" name="Update_Descrip"
													placeholder="Mô tả, giới thiệu chung"
													id="Update_Descrip${i }" rows="3" required="required">${listBuilding[i-1].buildingDesc}</textarea>
											</div>
										</div>

									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancel</button>
								<button type="submit" class="btn btn-primary">Save</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>

		<!-- end modal large -->


		<!-- modal small -->
		<c:forEach var="i" begin="1" end="${listBuilding.size() }">
			<form action="manage" method="post">
				<input type="hidden" name="action" value="DeleteBuilding"> <input
					type="hidden" name="Delete_buildingId"
					value="${listBuilding[i-1].buildingId}">
				<div class="modal fade" id="delete${i }" tabindex="-1" role="dialog"
					aria-labelledby="smallmodalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="smallmodalLabel">Xác nhận</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p style="font-weight: bold;">${listBuilding[i-1].buildingName}</p>
								<p>Bạn có chắc muốn xóa bài đăng này?</p>
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

		<c:forEach var="a" begin="1" end="${listBuilding.size() }">
			<c:forEach var="s" begin="1" end="${listService.size() }">
				<c:if
					test="${listService[s-1].buildingID == listBuilding[a-1].buildingId}">

					<!-- modal small -->
					<form action="manage" method="post">
					<input type="hidden" name="action" value="UpdateService">
					<input type="hidden" name="UpdateService_buildingId" value="${listBuilding[a-1].buildingId }">
					<input type="hidden" name="UpdateService_serviceId" value="${listService[s-1].serviceID }">
					
					<div class="modal fade"
						id="edit${listBuilding[a-1].buildingId}${listService[s-1].serviceID }"
						tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="smallmodalLabel">Chỉnh sửa dịch vụ</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<p style="font-weight: bold;" >Tên dịch vụ:</p>  ${listService[s-1].serviceName }
									
									<p style="font-weight: bold;" >Giá:</p>
									<input class="form-control" type="number" name="UpdateService_Price" value="${listService[s-1].price }">
									
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
					<!-- end modal small -->
				</c:if>
			</c:forEach>
		</c:forEach>
		
		<!-- Delete service -->
		<c:forEach var="a" begin="1" end="${listBuilding.size() }">
			<c:forEach var="s" begin="1" end="${listService.size() }">
				<c:if
					test="${listService[s-1].buildingID == listBuilding[a-1].buildingId}">

					<!-- modal small -->
					<form action="manage" method="post">
					<input type="hidden" name="action" value="DeleteService">
					<input type="hidden" name="DeleteService_buildingId" value="${listBuilding[a-1].buildingId }">
					<input type="hidden" name="DeleteService_serviceId" value="${listService[s-1].serviceID }">
					
					<div class="modal fade"
						id="delete${listBuilding[a-1].buildingId}${listService[s-1].serviceID }"
						tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-sm" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="smallmodalLabel">Xóa dịch vụ</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<p style="font-weight: bold;" >${listService[s-1].serviceName } - ${listService[s-1].price }(VNĐ)</p>
									Bạn có chắc muốn xóa dịch vụ này
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
					<!-- end modal small -->
				</c:if>
			</c:forEach>
		</c:forEach>

		<!-- MAIN CONTENT-->

		<div class="main-content">

			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="card" style="width: 100%;">
							<!-- <div class="card-header">
										<h4>Default Tab</h4>
									</div> -->
							<div class="card-body">
								<div class="default-tab">
									<nav>

										<div class="nav nav-tabs" id="nav-tab" role="tablist">
											<c:forEach var="i" begin="1" end="${listBuilding.size() }">
												<c:if test="${i==1 }">
													<a class="nav-item nav-link active" id="nav-home-tab"
														data-toggle="tab" href="#nav-${i }" role="tab"
														aria-controls="nav-home${i }" aria-selected="true">Nhà
														${i }</a>
												</c:if>


												<c:if test="${i !=1 }">
													<a class="nav-item nav-link" id="nav-profile-tab"
														data-toggle="tab" href="#nav-${i }" role="tab"
														aria-controls="nav-profile" aria-selected="false">Nhà
														${i }</a>
												</c:if>

											</c:forEach>
											<a class="nav-item nav-link" id="nav-contact-tab"
												data-toggle="tab" href="#nav-add" role="tab"
												aria-controls="nav-contact" aria-selected="false">Thêm +</a>

										</div>

									</nav>


									<div class="tab-content pl-3 pt-2" id="nav-tabContent">
										<c:forEach var="a" begin="1" end="${listBuilding.size() }">
											<c:if test="${a == 1 }">
												<div class="tab-pane fade show active" id="nav-${a }"
													role="tabpanel" aria-labelledby="nav-home${a }">
													<br> <input type="hidden" name="action" value="update">
													<div class="row">

														<div class="col-4">
															<c:if test="${listBuilding[a-1].buildingImage != null}">
																<img class="img-responsive img-thumbnail"
																	src="${pageContext.request.contextPath}${listBuilding[a-1].buildingImage}"
																	alt="">
															</c:if>
															<c:if test="${listBuilding[a-1].buildingImage == null}">
																<img class="img-responsive img-thumbnail"
																	src="https://bazantravel.com/cdn/medias/uploads/75/75014-leng-keng-homestay-da-lat-700x466.jpg"
																	alt="">
															</c:if>
														</div>
														<div class="col-8">
															<div class="row">
																<div class="col-md-11">
																	<h3>${listBuilding[a-1].buildingName }</h3>
																</div>
																<div class="col-md-1">
																	<button type="button" data-toggle="modal"
																		data-target="#delete${a }">X</button>

																</div>
															</div>
															<p>
																<span style="font-weight: bolder;">Loại cho thuê:</span>
																${listBuilding[a-1].buildingType }
															</p>
															<p>
																<span style="font-weight: bolder;">Trạng thái:</span> <a
																	href="">${listBuilding[a-1].buildingStatus }</a>
															</p>
															<p>
																<span style="font-weight: bolder;">Địa chỉ:</span>
																${listBuilding[a-1].buildingAddress }
															</p>
															<p>
																<span style="font-weight: bolder;">Mô tả:</span>
																${listBuilding[a-1].buildingDesc }
															</p>
															<p>
																<span style="font-weight: bolder;">Thông tin hữu
																	ích:</span> ${listBuilding[a-1].buildingDetailInfor }
															</p>
															Số lượng phòng: <span
																style="font-weight: bold; padding-left: 5px; padding-right: 5px;">
																${listBuilding[a-1].numRoom } </span> <a
																href="${pageContext.request.contextPath}/building-detail?buildingId=${listBuilding[a-1].buildingId }">Xem
																chi tiết</a>
															<p>
																<a href="#" data-toggle="modal" data-target="#building1">Chỉnh
																	sửa thông tin</a>
															</p>

														</div>
													</div>
													<hr>
													<div class="row">
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Quản lý dịch
																		vụ
																	</h3>
																</div>


																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>

																				<td>Dịch vụ</td>
																				<td>Giá</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach var="s" begin="1"
																				end="${listService.size() }">
																				<c:if
																					test="${listService[s-1].buildingID == listBuilding[a-1].buildingId}">
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>${listService[s-1].serviceName }</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>${listService[s-1].price }k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																							<button class="item" data-toggle="modal"
																								data-target="#edit${listBuilding[a-1].buildingId}${listService[s-1].serviceID }">
																								<i class="zmdi zmdi-edit"></i>
																							</button>
																							<button class="item" data-toggle="modal"
																								data-target="#delete${listBuilding[a-1].buildingId}${listService[s-1].serviceID }">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																						</td>
																					</tr>
																				</c:if>
																			</c:forEach>

																		</tbody>

																	</table>

																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalDichVu${a }">Thêm dịch vụ</button>
																</div>
															</div>


														</div>

														<!-- END USER DATA-->
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Tiện Nghi
																	</h3>
																</div>


																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>

																				<td>Tiện Nghi</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach var="c" begin="1"
																				end="${listConvenient.size() }">
																				<c:if
																					test="${listConvenient[c-1].buildingID == listBuilding[a-1].buildingId}">
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>${listConvenient[c-1].conveName }</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																							<button class="item" data-toggle="tooltip"
																								data-placement="top" title="Edit">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																						</td>

																					</tr>

																				</c:if>
																			</c:forEach>

																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalTienNghi${a }">Thêm Tiện
																		Nghi</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:if>
											<c:if test="${a != 1 }">
												<div class="tab-pane fade" id="nav-${a }" role="tabpanel"
													aria-labelledby="nav-home${a }">
													<br>
													<div class="row">

														<div class="col-4">
															<c:if test="${listBuilding[a-1].buildingImage != null}">
																<img class="img-responsive img-thumbnail"
																	src="${pageContext.request.contextPath}${listBuilding[a-1].buildingImage}"
																	alt="">
															</c:if>
															<c:if test="${listBuilding[a-1].buildingImage == null}">
																<img class="img-responsive img-thumbnail"
																	src="https://bazantravel.com/cdn/medias/uploads/75/75014-leng-keng-homestay-da-lat-700x466.jpg"
																	alt="">
															</c:if>
														</div>

														<div class="col-8">
															<div class="row">
																<div class="col-md-11">
																	<h3>${listBuilding[a-1].buildingName }</h3>
																</div>
																<div class="col-md-1">
																	<button type="button" data-toggle="modal"
																		data-target="#delete${a }">X</button>

																</div>
															</div>

															<p>
																<span style="font-weight: bolder;">Loại cho thuê:</span>
																${listBuilding[a-1].buildingType }
															</p>
															<p>
																<span style="font-weight: bolder;">Trạng thái:</span> <a
																	href="">${listBuilding[a-1].buildingStatus }</a>
															</p>
															<p>
																<span style="font-weight: bolder;">Địa chỉ:</span>
																${listBuilding[a-1].buildingAddress }
															</p>
															<p>
																<span style="font-weight: bolder;">Mô tả chung:</span>
																${listBuilding[a-1].buildingDesc }
															</p>
															<p>
																<span style="font-weight: bolder;">Thông tin hữu
																	ích:</span> ${listBuilding[a-1].buildingDetailInfor }
															</p>
															Số lượng phòng: <span
																style="font-weight: bold; padding-left: 5px; padding-right: 5px;">
																${listBuilding[a-1].numRoom } </span> <a
																href="${pageContext.request.contextPath}/building-detail?buildingId=${listBuilding[a-1].buildingId }">Xem
																chi tiết</a>
															<p>
																<a href="#" data-toggle="modal"
																	data-target="#building${a }">Chỉnh sửa thông tin</a>
															</p>
														</div>
													</div>
													<hr>
													<div class="row">
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Quản lý dịch
																		vụ
																	</h3>
																</div>

																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>

																				<td>Dịch vụ</td>
																				<td>Giá</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>
																		<c:forEach var="s" begin="1"
																			end="${listService.size() }">
																			<c:if
																				test="${listService[s-1].buildingID == listBuilding[a-1].buildingId}">
																				<tr>
																					<td>
																						<div class="table-data__info">
																							<h6>${listService[s-1].serviceName }</h6>
																						</div>
																					</td>
																					<td>
																						<div class="table-data__info">
																							<h6>${listService[s-1].price }k</h6>
																						</div>
																					</td>
																					<td class="table-data-feature">
																						<button class="item" data-toggle="modal"
																								data-target="#edit${listBuilding[a-1].buildingId}${listService[s-1].serviceID }">
																								<i class="zmdi zmdi-edit"></i>
																							</button>
																						<button class="item" data-toggle="modal"
																								data-target="#delete${listBuilding[a-1].buildingId}${listService[s-1].serviceID }">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																					</td>
																				</tr>
																			</c:if>
																		</c:forEach>
																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalDichVu${a }">Thêm dịch vụ</button>
																</div>
															</div>


														</div>

														<!-- END USER DATA-->
														<div class="col-6">
															<!-- USER DATA-->
															<div class="user-data m-b-30" style="padding-top: 0px;">
																<div
																	style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																	<h3 class="title-3 m-b-30">
																		<i class="zmdi zmdi-account-calendar"></i>Tiện Nghi
																	</h3>
																</div>


																<div class="table-responsive table-data">
																	<table class="table">
																		<thead>
																			<tr>
																				<td>Tiện Nghi</td>
																				<td style="text-align: right;">Action</td>
																			</tr>
																		</thead>

																		<tbody>
																			<c:forEach var="c" begin="1"
																				end="${listConvenient.size() }">
																				<c:if
																					test="${listConvenient[c-1].buildingID == listBuilding[a-1].buildingId}">
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>${listConvenient[c-1].conveName }</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																							<button class="item" data-toggle="tooltip"
																								data-placement="top" title="Edit">
																								<i class="zmdi zmdi-delete"></i>
																							</button>
																						</td>

																					</tr>

																				</c:if>
																			</c:forEach>

																		</tbody>
																	</table>
																</div>
																<div class="user-data__footer">
																	<button class="au-btn au-btn-load" data-toggle="modal"
																		data-target="#ModalTienNghi${a }">Thêm Tiện
																		Nghi</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:if>

										</c:forEach>

										<!-- Thêm nhà -->

										<div class="tab-pane fade" id="nav-add" role="tabpanel"
											aria-labelledby="nav-contact-tab">
											<form action="manage" method="post"
												enctype="multipart/form-data">
												<input type="hidden" name="action" value="AddNewBuilding">
												<div class="tab-pane fade show active" id="nav-home"
													role="tabpanel" aria-labelledby="nav-home-tab">
													<br>
													<div class="row">


														<div class="col-4">
															<div class="file-upload">
																<button class="file-upload-btn" type="button"
																	onclick="$('.file-upload-input').trigger( 'click' )">Add
																	Image</button>

																<div class="image-upload-wrap">
																	<input class="file-upload-input" type='file'
																		onchange="readURL(this);" accept="image/*"
																		name="image" multiple="multiple" />
																	<div class="drag-text">
																		<h3>Drag and drop a file or select add Image</h3>
																	</div>
																</div>
																<div class="file-upload-content">
																	<img class="file-upload-image" src="#" alt="your image" />
																	<div class="image-title-wrap">
																		<button type="button" onclick="removeUpload()"
																			class="remove-image">
																			Remove <span class="image-title">Uploaded
																				Image</span>
																		</button>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-8">
															<div class="row">
																<div class="col-md-2">
																	<span style="font-weight: bolder;"><label
																		for="Add_buildingName">Tên nhà</label></span>

																</div>
																<div class="col-md-10">
																	<input type="text" id="buildingName"
																		name="Add_buildingName" placeholder="Nhập tên nhà"
																		class="form-control" required="required">
																</div>
															</div>

															<div class="row">
																<div class="col-md-12">
																	<span style="font-weight: bolder;">Địa chỉ</span>
																</div>

															</div>
															<div class="row">
																<div class="form-group col-md-4">
																	<select name="Add_city" id="countySel" size="1"
																		class="form-control" required="required">
																		<option value="" selected="selected">Tỉnh</option>
																	</select>
																</div>
																<div class="form-group col-md-4">
																	<select name="Add_disctrict" id="stateSel" size="1"
																		class="form-control" required="required">
																		<option value="" selected="selected">Huyện/Quận</option>
																	</select>
																</div>
																<div class="form-group col-md-4">
																	<select name="Add_street" id="districtSel" size="1"
																		class="form-control" required="required">
																		<option value="" selected="selected">Đường</option>
																	</select>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<span style="font-weight: bolder;">Thông tin chi
																		tiết</span>
																</div>

															</div>

															<div class="row">
																<div class="col-md-4">
																	<input type="text" id="" name="Add_buildingNumber"
																		placeholder="Nhập số nhà" class="form-control"
																		required="required">
																</div>

																<div class="col-md-4">
																	<input type="number" id="Add_are" name="Add_area"
																		placeholder="Diện tích" class="form-control"
																		required="required">
																</div>

																<div class="form-group col-md-4">
																	<select class="form-control" id="Add_buildingType"
																		name="Add_buildingType" required="required">
																		<option>Loại cho thuê</option>
																		<option value="Nhà nguyên căn">Nhà nguyên căn</option>
																		<option value="Phòng riêng">Phòng riêng</option>
																	</select>
																</div>
															</div>
															<div class="row form-field">
																<div class="col-md-12">
																	<textarea class="form-control" name="Add_Infor"
																		placeholder="Thông tin hữu ích: nhà gần trường, hướng mặt tiền,.."
																		id="Add_infor" rows="2"></textarea>
																</div>
															</div>

															<div class="row form-field">

																<div class="col-md-12">
																	<textarea class="form-control" name="Add_Rules"
																		placeholder="Nội quy" id="Add_Rules" rows="3"></textarea>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<span style="font-weight: bolder;">Mô tả</span>
																</div>

															</div>
															<div class="row form-field	">

																<div class="col-md-12">
																	<textarea class="form-control" name="Add_Descrip"
																		placeholder="Mô tả, giới thiệu chung" id="mota"
																		rows="3" required="required"></textarea>
																</div>
															</div>
															<div class="row form-field">
																<div class="col-md-10"></div>
																<div class="col-md-2">
																	<button style="width: 100%;" type="submit"
																		class="btn btn-primary">Save</button>
																</div>
															</div>
														</div>
													</div>
												</div>
												<hr>
										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- /# column -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END PAGE CONTAINER-->
	<!-- modal large -->
	<c:forEach var="b" begin="1" end="${listBuilding.size() }">
		<div class="modal fade" id="ModalDichVu${b }" tabindex="-1"
			role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="largeModalLabel">Thêm dịch vụ</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="table-responsive table-data">
							<table class="table">
								<thead>
									<tr>

										<td>Dịch vụ</td>
										<td>Giá (VNĐ)</td>
										<td style="text-align: right;">Action</td>
									</tr>
								</thead>
								<c:forEach var="saa" begin="1"
									end="${listServiceAllowToAdd.size() }">
									<form action="manage" method="post">
										<input type="hidden" name="action" value="AddService">
										<c:if
											test="${listServiceAllowToAdd[saa-1].buildingID == listBuilding[b-1].buildingId}">
											<input type="hidden" name="AddService_buildingid"
												value="${listBuilding[b-1].buildingId }">
											<input type="hidden" name="AddService_serviceId"
												value="${listServiceAllowToAdd[saa-1].serviceID }">
											<tr>
												<td>
													<div class="table-data__info">
														<h6>${listServiceAllowToAdd[saa-1].serviceName }</h6>
													</div>
												</td>
												<td>
													<div class="table-data__info">
														<input style="width: 90%;" class="form-control"
															type="number" name="AddService__Price"
															required="required">
													</div>
												</td>
												<td class="table-data-feature">
													<button type="submit" class="item" data-toggle="tooltip"
														data-placement="top" title="Add">
														<i class="zmdi zmdi-plus-circle-o"></i>
													</button>
												</td>
											</tr>
										</c:if>
									</form>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>

	<!-- end modal large -->

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

	<!-- modal large -->
	<c:forEach var="lb" begin="1" end="${listBuilding.size() }">
		<div class="modal fade" id="ModalTienNghi${lb }" tabindex="-1"
			role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="largeModalLabel">Thêm Tiện Nghi</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="table-responsive table-data">
						<table class="table">
							<thead>
								<tr>
									<td>Tiện Nghi</td>
									<td style="text-align: right;"><span
										style="margin-right: 3px;"><label
											for="selectAllTienNghi">Chọn tất cả</label></span> <input
										type="checkbox" id="selectAllTienNghi" name=""></td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="lc" begin="1"
									end="${listConvenientAllowToAdd.size() }">
									<c:if
										test="${listConvenientAllowToAdd[lc-1].buildingID == listBuilding[lb-1].buildingId}">
										<tr>
											<td>
												<div class="table-data__info">
													<h6>${listConvenientAllowToAdd[lc-1].conveName }</h6>
												</div>
											</td>
											<td class="table-data-feature"><input type="checkbox"
												name="listTienNghi"
												value="${listConvenientAllowToAdd[lc-1].conveId }">
											</td>

										</tr>

									</c:if>
								</c:forEach>

							</tbody>
						</table>
					</div>



					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary">Confirm</button>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<!-- end modal large -->

	<!-- Lay so luong nha de lam css, js-->
	<input type="hidden" value="${listBuilding.size() }" id="totalBuilding">

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
			$('.file-upload-input')
					.replaceWith($('.file-upload-input').clone());
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

	<script>
		var total = document.getElementById('totalBuilding').value;
		console.log(total);
		for (var i = 1; i <= total; i++) {
			CKEDITOR.replace('Update_Descrip' + i);
		}
	</script>

	<script>
		CKEDITOR.replace('mota');
	</script>

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
			"Hồ Chí Minh" : {
				"Quận 1" : [ "Nguyễn Huệ", "North Delhi" ],
				"QUận 2" : [ "Thiruvananthapuram", "Palakkad" ],
				"Thủ Đức" : [ "North Goa", "South Goa" ],
			},
			"Australia" : {
				"South Australia" : [ "Dunstan", "Mitchell" ],
				"Victoria" : [ "Altona", "Euroa" ]
			},
			"Canada" : {
				"Alberta" : [ "Acadia", "Bighorn" ],
				"Columbia" : [ "Washington", "" ]
			},
		}

		window.onload = function() {
			var countySel = document.getElementById("countySel"), stateSel = document
					.getElementById("stateSel"), districtSel = document
					.getElementById("districtSel");
			for ( var country in stateObject) {
				countySel.options[countySel.options.length] = new Option(
						country, country);
			}
			countySel.onchange = function() {
				stateSel.length = 1; // remove all options bar first
				districtSel.length = 1; // remove all options bar first
				if (this.selectedIndex < 1)
					return; // done 
				for ( var state in stateObject[this.value]) {
					stateSel.options[stateSel.options.length] = new Option(
							state, state);
				}
			}
			countySel.onchange(); // reset in case page is reloaded
			stateSel.onchange = function() {
				districtSel.length = 1; // remove all options bar first
				if (this.selectedIndex < 1)
					return; // done 
				var district = stateObject[countySel.value][this.value];
				for (var i = 0; i < district.length; i++) {
					districtSel.options[districtSel.options.length] = new Option(
							district[i], district[i]);
				}
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