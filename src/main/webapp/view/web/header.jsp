<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- modal medium -->
			<div class="modal fade" id="notification" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="mediumModalLabel">(${sessionScope.listNotification.size() }) Thông báo mới</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<ul>
							<c:if test="${sessionScope.listNotification.size() == 0}">
									Không có thông báo mới
							</c:if>
							<c:forEach var="notification" items="${sessionScope.listNotification }">
								<li style="margin-left: 20px;">Yêu cầu đặt phòng ${notification.bill.billDetail[0].roomId} của homestay 
								<a href="${pageContext.request.contextPath}/single-post?buildingId=${notification.bill.billDetail[0].room.buildingId}">${notification.bill.billDetail[0].room.buildingId}</a> 
								<c:if test="${notification.content == 'bị từ chối'}">
									<span style="color:red;">${notification.content}</span>
								</c:if>
								<c:if test="${notification.content == 'đã được xác nhận'}">
									<span style="color:green;">${notification.content}</span>
								</c:if>
								</li>
							</c:forEach>
							</ul>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
							<a href="${pageContext.request.contextPath}/home?action=readAllNotification&path=${pageContext.request.requestURI }" type="button" class="btn btn-primary">Đánh dấu đã đọc</a>
						</div>
					</div>
				</div>
			</div>
			<!-- end modal medium -->

<div class="header_agileits">

	<c:set var="theString" value="${pageContext.request.requestURI }" />

	<c:if test="${fn:contains(theString, 'home.jsp')}">
		<div class="logo"
			style="position: absolute; top: 0; left: 10px; margin-top: -15px;">
			<h1>
				<a href="${pageContext.request.contextPath}/home"> <img
					width="180px;" style="margin-left: 20px;"
					src="${pageContext.request.contextPath}/view/common/image/logo.png"
					alt="Cool Admin" />
				</a>
			</h1>
		</div>
		<div class="overlay overlay-contentpush"
			style="box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;">
			<button type="button" class="overlay-close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>

			<nav>
				<ul>
					<li><a href="${pageContext.request.contextPath}/home"
						class="active">Trang chủ</a></li>
					<li><a href="${pageContext.request.contextPath}/about">About
							Us</a></li>
					<c:if test="${usersession != null }">
						<li><a
							href="${pageContext.request.contextPath}/NotFoundException">Xem
								đơn hàng</a></li>
						<li><a href="${pageContext.request.contextPath}/my-account">Tài
								khoản</a></li>
						<li><a href="${pageContext.request.contextPath}/log-out">Đăng
								Xuất</a></li>
					</c:if>
					<c:if test="${usersession == null }">
						<li><a href="${pageContext.request.contextPath}/login">Đăng
								nhập</a></li>
						<li><a href="${pageContext.request.contextPath}/sign-up">Đăng
								ký</a></li>
					</c:if>

				</ul>
			</nav>
		</div>
		<div class="mobile-nav-button">
			<button id="trigger-overlay" type="button">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
		</div>

		<!-- search -->

		<!-- //search -->

		<!-- search -->
		<div class="search_w3ls_agileinfo">
			<div>
				<div class="cd-main-header">
					<ul class="cd-header-buttons">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							style="background-color: rgba(27, 25, 25, 0.27); color: white; height: 36px; width: 36px;"
							id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							<i class="fa fa-user zmdi" aria-hidden="true"></i>
							<c:if test="${sessionScope.usersession.user.role == 'User'}">
								<c:if test="${sessionScope.listNotification.size() > 0}">
									<span class="quantity"
										style="position: absolute; display: inline-block; top: -4px; right: -7px; height: 15px; width: 15px; line-height: 15px; text-align: center; background: #ff4b5a; color: #fff; - webkit-border-radius: 100%; -moz-border-radius: 100%; border-radius: 100%; font-size: 12px;">
										${sessionScope.listNotification.size() } </span>
								</c:if>								
							</c:if>

						</button>
						<ul class="dropdown-menu  dropdown-menu-right"
							aria-labelledby="dropdownMenu">
							<c:if test="${usersession.user == null }">
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/sign-up">Đăng ký</a></li>
							</c:if>

							<c:if test="${usersession.user.role == 'User' }">
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/my-account">Quản
										lý tài khoản</a></li>
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/my-account">Xem
										lịch sử</a></li>
								<li style="width: 100%;"><a
									href="" data-toggle="modal" data-target="#notification">Thông
										báo <span style="color: red;">(${sessionScope.listNotification.size() } tin mới)</span></a>
																			
										</li>
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/log-out">Đăng xuất</a></li>
							</c:if>
							<c:if test="${usersession.user.role == 'Owner' }">
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/my-account">Quản
										lý tài khoản</a></li>
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/dashboard">Trang
										quản lý</a></li>
								<li style="width: 100%;"><a
									href="${pageContext.request.contextPath}/log-out">Đăng xuất</a></li>
							</c:if>

						</ul>
					</ul>
				</div>
			</div>
		</div>

		<!-- //search -->

	</c:if>

	<c:if test="${not fn:contains(theString, 'home.jsp')}">
		<div class="logo inner_page_log"
			style="margin-top: -15px; top: 0; left: 5%;">
			<h1>
				<a href="${pageContext.request.contextPath}/home"> <img
					width="180px;"
					src="${pageContext.request.contextPath}/view/common/image/logo.png"
					alt="Cool Admin" />
				</a>
			</h1>
		</div>
		<div class="overlay overlay-contentpush"
			style="box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;">
			<button type="button" class="overlay-close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>

			<nav>
				<ul>
					<li><a href="${pageContext.request.contextPath}/home"
						class="active">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/about">About</a></li>
					<li><a href="${pageContext.request.contextPath}/error">Team</a></li>
					<c:if test="${usersession != null }">
						<li><a href="${pageContext.request.contextPath}/log-out">Log
								out</a></li>
					</c:if>
					<c:if test="${usersession == null }">
						<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
						<li><a href="${pageContext.request.contextPath}/sign-up">Sign
								up</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
		<div class="mobile-nav-button">
			<button id="trigger-overlay" type="button">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
		</div>

	</c:if>
	<div class="clearfix"></div>
</div>