<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- HEADER MOBILE-->
<header class="header-mobile d-block d-lg-none">
	<div class="header-mobile__bar">
		<div class="container-fluid">
			<div class="header-mobile-inner">
				<a class="logo" href="${pageContext.request.contextPath}/dashboard">
					<img width="100px;" class="img-responsive"
					src="${pageContext.request.contextPath}/view/common/image/logo.png"
					alt="CoolAdmin" />
				</a>
				<button class="hamburger hamburger--slider" type="button">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<nav class="navbar-mobile">
		<div class="container-fluid">
			<ul class="navbar-mobile__list list-unstyled">
				<li><a href="${pageContext.request.contextPath}/AdminDashboard">
						<i class="fas fa-tachometer-alt"></i>Dashboard
				</a></li>

				<li><a href="${pageContext.request.contextPath}/AdminManage">
						<i class="fa fa-home"></i>Quản lý bài đăng
				</a></li>

				<li><a href="${pageContext.request.contextPath}/AdminGeneralControl"> <i
						class="fas fa-table"></i>Quản lý chung
				</a></li>

				<li><a href="${pageContext.request.contextPath}/my-account">
						<i class="fa fa-user"></i>Tài khoản
				</a></li>
			</ul>
		</div>
	</nav>
</header>
<!-- END HEADER MOBILE-->

<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
	<div class="logo">
		<a href="${pageContext.request.contextPath}/dashboard"> <img
			width="180px;" style="margin-left: 20px;"
			src="${pageContext.request.contextPath}/view/common/image/logo.png"
			alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">
				<li><a href="${pageContext.request.contextPath}/AdminDashboard">
						<i class="fas fa-tachometer-alt"></i>Dashboard
				</a></li>

				<li><a href="${pageContext.request.contextPath}/AdminManage">
						<i class="fa fa-home"></i>Quản lý bài đăng
				</a></li>

				<li><a href="${pageContext.request.contextPath}/AdminGeneralControl"> <i
						class="fas fa-table"></i>Quản lý chung
				</a></li>
				<li><a href="${pageContext.request.contextPath}/missing-admin-feature">
												<i class="zmdi zmdi-settings"></i>Setting
											</a></li>

				<li><a href="${pageContext.request.contextPath}/my-account">
						<i class="fa fa-user"></i>Tài khoản
				</a></li>

			</ul>
		</nav>
	</div>
</aside>
<!-- END MENU SIDEBAR-->

<!-- PAGE CONTAINER-->
<div class="page-container">
	<!-- HEADER DESKTOP-->
	<header class="header-desktop">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="header-wrap">
					<form class="form-header" action="" method="POST">
						<input class="au-input au-input--xl" type="text" name="search"
							placeholder="Search for datas &amp; reports..." />
						<button class="au-btn--submit" type="submit">
							<i class="zmdi zmdi-search"></i>
						</button>
					</form>
					<div class="header-button">
						<div class="noti-wrap">
							<div class="noti__item js-item-menu">
								<i class="zmdi zmdi-comment-more"></i> 
								<c:if test="${sessionScope.listFeedbackNotification.size() > 0}">
									<span class="quantity">${sessionScope.listFeedbackNotification.size() }</span>
								</c:if>							
								<div class="mess-dropdown js-dropdown">
									<div class="mess__title">
										<c:if test="${sessionScope.listFeedbackNotification.size() > 0}">
											<p>Bạn có ${sessionScope.listFeedbackNotification.size() }
											bình luận mới chưa đọc</p>
										</c:if>
										<c:if test="${sessionScope.listFeedbackNotification.size() == 0}">
											<p>Không có bình luận hay đánh giá mới</p>
										</c:if>
									</div>

									<c:forEach var="feedback"
										items="${sessionScope.listFeedbackNotification}">
										
											<div class="mess__item">
												<div class="image img-cir img-40">
													<img
														src="${pageContext.request.contextPath}${feedback.feedback.user.avatar }"
														alt="Michelle Moreno" />
												</div>
												<div class="content">
													<h6>${feedback.feedback.user.name } </h6>
													<p>${feedback.content}</p>
													<span class="time">${feedback.date }</span>
												</div>
											</div>
										
									</c:forEach>

									<div class="mess__footer">
									<c:if test="${sessionScope.listFeedbackNotification.size() > 0}">
											<a href="${pageContext.request.contextPath}/dashboard?action=readAllFeedback&path=${pageContext.request.requestURI }">Đánh dấu tất cả đã đọc</a>
										</c:if>
										
									</div>
								</div>
							</div>

							<div class="noti__item js-item-menu">
								<i class="zmdi zmdi-notifications"></i> 
								<c:if test="${sessionScope.listRequestNotification.size() > 0}">
									<span class="quantity">${sessionScope.listRequestNotification.size() }</span>
								</c:if>	
								
								<div class="notifi-dropdown js-dropdown">
									<div class="notifi__title">
										<c:if test="${sessionScope.listRequestNotification.size() > 0}">
											<p>Có ${sessionScope.listRequestNotification.size() } yêu
											cầu đặt phòng mới</p>
										</c:if>
										<c:if test="${sessionScope.listRequestNotification.size() == 0}">
											<p>Đã xem tất cả yêu cầu đặt phòng</p>
										</c:if>
									</div>
									<c:forEach var="request"
										items="${sessionScope.listRequestNotification}">
										<div class="notifi__item">
											<div class="bg-c1 img-cir img-40">
												<i class="zmdi zmdi-file-text"></i>
											</div>
											<div class="content">
												<p>${request.content }</p>
												<span class="date">${request.date }</span>
											</div>
										</div>
									</c:forEach>

									<div class="notifi__footer">
									<c:if test="${sessionScope.listRequestNotification.size() == 0}">
											
										</c:if>
										<c:if test="${sessionScope.listRequestNotification.size() > 0}">
											<a href="${pageContext.request.contextPath}/dashboard?action=readAllRequest&path=${pageContext.request.requestURI }">Đánh dấu tất cả đã đọc</a>
										</c:if>
										
									</div>
								</div>
							</div>
						
						<div class="account-wrap">
							<div class="account-item clearfix js-item-menu">
								<div class="image">
									<img
										src="${pageContext.request.contextPath}${usersession.user.avatar}"
										alt="${usersession.user.name }" />
								</div>
								<div class="content">
									<a class="js-acc-btn"
										href="${pageContext.request.contextPath}/my-account">${usersession.user.name }</a>
								</div>
								<div class="account-dropdown js-dropdown">
									<div class="info clearfix">
										<div class="image">
											<a href="#"> <img
												src="${pageContext.request.contextPath}${usersession.user.avatar}"
												alt="${usersession.user.name }" />
											</a>
										</div>
										<div class="content">
											<h5 class="name">
												<a href="${pageContext.request.contextPath}/my-account">${usersession.user.name }</a>
											</h5>
											<span class="email">${usersession.user.email }</span>
										</div>
									</div>
									<div class="account-dropdown__body">
										<div class="account-dropdown__item">
											<a href="${pageContext.request.contextPath}/my-account">
												<i class="zmdi zmdi-account"></i>Account
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="${pageContext.request.contextPath}/my-account">
												<i class="zmdi zmdi-settings"></i>Setting
											</a>
										</div>
										<div class="account-dropdown__item">
											<a href="#"> <i class="zmdi zmdi-money-box"></i>Billing
											</a>
										</div>
									</div>
									<div class="account-dropdown__footer">
										<a href="${pageContext.request.contextPath}/log-out"> <i
											class="zmdi zmdi-power"></i>Logout
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- HEADER DESKTOP-->