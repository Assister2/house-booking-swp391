<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<title>Quản lý bài đăng</title>

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
						<p>
						<c:if test="${param.message == 'updated'}">
							Cập nhật thành công!
						</c:if>
						<c:if test="${param.message != 'updated'}">
							Cập nhật không thành công!
						</c:if>
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end modal small -->

		<c:forEach var="item" items="${list }">
			<!-- modal small -->
			<form action="manage-bill">
				<input type="hidden" name="action" value="approve"> <input
					type="hidden" name="billId" value="${item.buildingId }">

				<div class="modal fade" id="approve${item.buildingId }" tabindex="-1"
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
								<p>Xác nhận yêu cầu đặt phòng ${item.buildingId }.</p>
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
		<c:forEach var="item" items="${list }">
			<!-- modal small -->
			<form action="manage-bill">
				<input type="hidden" name="action" value="deny"> <input
					type="hidden" name="billId" value="${item.buildingId }">

				<div class="modal fade" id="deny${item.buildingId }" tabindex="-1"
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
								<p>Từ chối yêu cầu đặt phòng ${item.buildingId }.</p>
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
							<h3 class="title-5 m-b-35">Quản lý bài đăng </h3>
							<div class="table-data__tool">
								<div class="table-data__tool-left">
									<form action="AdminManage" method="get">
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
								
							</div>
							<div class="table-responsive table-responsive-data2">
								<table class="table table-data2">
									<thead>
										<tr>
											<th>ID</th>
											<th>Tên</th>
											<th>Địa chỉ</th>
											<th>Loại nhà</th>
											<th>Diện tích</th>
											<th>Chủ nhà</th>
											<th>Trạng thái</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										 <c:forEach var="item" items="${list }">
											<tr class="tr-shadow">
												<td style="vertical-align: middle;">${item.buildingId }</td>
												<td>${item.buildingName }</td>
												<td>${item.buildingAddress }</td>
												<td>${item.buildingType }</td>
												<td>${item.buildingArea }</td>
												<td>${item.userId }</td>
												<td>
												<c:if test="${item.buildingStatus == 'active' }">
														<span class="status--process">Active</span>
													</c:if>
													<c:if test="${item.buildingStatus == 'off' }">
														<span class="status--denied">OFF</span>
													</c:if>
													<c:if test="${item.buildingStatus == 'Chờ duyệt' }">
														<span class="status--warning">Chờ duyệt</span>
													</c:if>
												</td>
												<td>
												<div class="table-data-feature" style="margin-top: 7px;">
													<a href="${pageContext.request.contextPath}/AdminManage?action=off&buildingId=${item.buildingId}"><i class="fa fa-power-off" style="margin-right: 10px;"></i></a>
													<a href="${pageContext.request.contextPath}/AdminManage?action=on&buildingId=${item.buildingId}"><i class="fa fa-check" style="margin-right: 10px;"></i></a>
													<a href="${pageContext.request.contextPath}/single-post?buildingId=${item.buildingId}&admin=view"><i class="fa fa-mail-forward"></i></a>
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
					
				<c:url var="SortUrl" value="AdminManage">
					<c:param name="properties" value="${param.properties}" />
	
					<c:param name="detailProperties" value="${param.detailProperties}" />			
				</c:url>

					<div class="row text-center">
						<ul class="pagination" style="width: fit-content; margin: auto;">
							<c:if test="${currentPage != 1}">
								<li class="page-item"><a
									href="${SortUrl}&page=${currentPage - 1}" class="page-link">Previous</a></li>
							</c:if>
							<c:forEach begin="1" end="${noOfPages}" var="i">
								<c:choose>
									<c:when test="${currentPage eq i}">
										<li class="page-item"><a class="page-link active">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a href="${SortUrl}&page=${i}"
											class="page-link">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<c:if test="${currentPage lt noOfPages}">
								<li class="page-item"><a
									href="${SortUrl}&page=${currentPage + 1}" class="page-link">Next</a></li>

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
			"Theo trạng thái" : {
				"Chờ duyệt" : [ "Altona", "Euroa" ],
				"active" : [ "Altona", "Euroa" ],
				"off" : [ "Altona", "Euroa" ]
			},
			"Theo ngày" : {
				"Hôm nay" : [ "Nguyễn Huệ", "North Delhi" ],
				"Tuần này" : [ "Thiruvananthapuram", "Palakkad" ],
				"Tháng này" : [ "North Goa", "South Goa" ],
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

	<c:if test="${param.message != null }">
		<script>
			let myModal = new bootstrap.Modal(document
					.getElementById('smallmodal'), {});
			myModal.show();
		</script>
	</c:if>

</body>

</html>
<!-- end document-->
