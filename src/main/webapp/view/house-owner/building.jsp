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

<!-- Main CSS-->
<link
	href="${pageContext.request.contextPath}/view/house-owner/css/theme.css"
	rel="stylesheet" media="all">

</head>

<body class="">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- END HEADER DESKTOP-->

		<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
							<div class="row">
								<div class="card"  style="width: 100%;">
									<!-- <div class="card-header">
										<h4>Default Tab</h4>
									</div> -->
									<div class="card-body">
										<div class="default-tab">
											<nav>
												<div class="nav nav-tabs" id="nav-tab" role="tablist">
													<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home"
													 aria-selected="true">Nhà A</a>
													<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile"
													 aria-selected="false">Nhà B</a>
													<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact"
													 aria-selected="false">Nhà C</a>
													 <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#" role="tab" aria-controls="nav-contact"
													 aria-selected="false">Thêm +</a>
												</div>
											</nav>
											<div class="tab-content pl-3 pt-2" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
													<br>
                                                    <div class="row"> 
                                                        
                                                        <div class="col-4">
                                                            <img class="img-responsive img-thumbnail" src="https://media.istockphoto.com/photos/beauty-on-the-plateau-hills-of-dalat-picture-id520621666?k=20&m=520621666&s=612x612&w=0&h=UWUIul9FOpaX5GGRlWF9qMSYODgeU3ktb6xWgd4kSRU=" alt="">
                                                        </div>
                                                        <div class="col-8">
																	<h3>Tên nhà</h3>
																	<p>
																			<span style="font-weight: bolder;">Loại cho thuê:</span> Homestay 
																	</p>
																	<p>
																		<span style="font-weight: bolder;">Địa chỉ:</span> ABC, Huyện XYZ, Tỉnh Lâm Đồng 
																	</p>
																<p>
																	<span style="font-weight: bolder;">Mô tả:</span> Nhà đẹp vãi cức, gần sông suối, chợ, trường học, thuận tiện cho việc du lịch ngắn hạn, mại dô!
																	Raw denim you probably haven't heard of them jean shorts Austin.
																</p>
																Số lượng phòng: <span style="font-weight: bold; padding-left: 5px;padding-right: 5px;">3 </span> <a href="#">Xem chi tiết</a>
												   		</div>
                                                    </div>
                                                    <hr>
                                                    <div class="row"> 
														<div class="col-6">
                                                            <!-- USER DATA-->
																	<div class="user-data m-b-30" style="padding-top: 0px;">
																		<div style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																			<h3 class="title-3 m-b-30">
																				<i class="zmdi zmdi-account-calendar"></i>Quản lý dịch vụ</h3>
																		</div>
																	
																	
																		<div class="table-responsive table-data">
																			<table class="table">
																				<thead>
																					<tr>
																
																						<td>Dịch vụ</td>
																						<td>Giá</td>
																						<td style="text-align: right;">ACtion</td>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																					
																						<td>
																							<div class="table-data__info">
																								<h6>lori lynch</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>700k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-edit"></i>
																								</button>
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																					
																						<td>
																							<div class="table-data__info">
																								<h6>lori lynch</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>700k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-edit"></i>
																								</button>
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																					
																						<td>
																							<div class="table-data__info">
																								<h6>lori lynch</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>700k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-edit"></i>
																								</button>
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																					
																						<td>
																							<div class="table-data__info">
																								<h6>lori lynch</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>700k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-edit"></i>
																								</button>
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																					
																						<td>
																							<div class="table-data__info">
																								<h6>lori lynch</h6>
																							</div>
																						</td>
																						<td>
																							<div class="table-data__info">
																								<h6>700k</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-edit"></i>
																								</button>
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					
																				</tbody>
																			</table>
																		</div>
																		<div class="user-data__footer">
																			<button class="au-btn au-btn-load" data-toggle="modal" data-target="#ModalDichVu">Thêm dịch vụ</button>
																		</div>
																	</div>
																	
																
                                                        </div>
														
														<!-- END USER DATA-->
                                                        <div class="col-6">
                                                            <!-- USER DATA-->
																	<div class="user-data m-b-30" style="padding-top: 0px;">
																		<div style="background-color: #e5e5e5; padding-top: 30px; padding-bottom: 0.5px;">
																			<h3 class="title-3 m-b-30">
																				<i class="zmdi zmdi-account-calendar"></i>Nội quy</h3>
																		</div>
																	
																	
																		<div class="table-responsive table-data">
																			<table class="table">
																				<thead>
																					<tr>
																
																						<td>Nội quy</td>
																						<td style="text-align: right;">Action</td>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>Không xả rác bừa bãi, giữ vệ sinh chung</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>Không mang theo thú cưng</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>Không về trễ quá 11h đêm</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					<tr>
																						<td>
																							<div class="table-data__info">
																								<h6>Bồi thường theo giá trị tương ứng vật phẩm bị làm hư hại</h6>
																							</div>
																						</td>
																						<td class="table-data-feature">
																								<button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
																									<i class="zmdi zmdi-delete"></i>
																								</button>
																						</td>
																					
																					</tr>
																					
																				</tbody>
																			</table>
																		</div>
																		<div class="user-data__footer">
																			<button class="au-btn au-btn-load" data-toggle="modal" data-target="#ModalNoiQuy">Thêm Nội quy</button>
																		</div>
																	</div>
														</div>
													</div>
												</div>
                                <!-- END USER DATA-->	
												<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
													<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth
														master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh
														dreamcatcher synth. Cosby sweater eu banh mi, irure terry richardson ex sd. Alip placeat salvia cillum iphone.
														Seitan alip s cardigan american apparel, butcher voluptate nisi .</p>
												</div>
												<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
													<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth
														master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh
														dreamcatcher synth. Cosby sweater eu banh mi, irure terry richardson ex sd. Alip placeat salvia cillum iphone.
														Seitan alip s cardigan american apparel, butcher voluptate nisi .</p>
												</div>
											</div>

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
				<div class="modal fade" id="ModalDichVu" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="largeModalLabel">Thêm dịch vụ</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>
									There are three species of zebras: the plains zebra, the mountain zebra and the Grévy's zebra. The plains zebra and the mountain
									zebra belong to the subgenus Hippotigris, but Grévy's zebra is the sole species of subgenus Dolichohippus. The latter
									resembles an ass, to which it is closely related, while the former two are more horse-like. All three belong to the
									genus Equus, along with other living equids.
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
								<button type="button" class="btn btn-primary">Confirm</button>
							</div>
						</div>
					</div>
				</div>
				<!-- end modal large -->

				<!-- modal large -->
				<div class="modal fade" id="ModalNoiQuy" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="largeModalLabel">Thêm nội quy</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<p>
									There are three species of zebras: the plains zebra, the mountain zebra and the Grévy's zebra. The plains zebra and the mountain
									zebra belong to the subgenus Hippotigris, but Grévy's zebra is the sole species of subgenus Dolichohippus. The latter
									resembles an ass, to which it is closely related, while the former two are more horse-like. All three belong to the
									genus Equus, along with other living equids.
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
								<button type="button" class="btn btn-primary">Confirm</button>
							</div>
						</div>
					</div>
				</div>
				<!-- end modal large -->

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
