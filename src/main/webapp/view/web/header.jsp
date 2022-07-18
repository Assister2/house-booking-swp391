<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="header_agileits">

	<c:set var="theString" value="${pageContext.request.requestURI }" />

	<c:if test="${fn:contains(theString, 'home.jsp')}">
		<div class="logo">
			<h1>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/home"><span>Home</span></a>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/home"> <i> 
						Booking</i></a>
			</h1>
		</div>
		<div class="overlay overlay-contentpush" style=" box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px; ">
			<button type="button" class="overlay-close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>

			<nav>
				<ul>
					<li><a href="${pageContext.request.contextPath}/home"
						class="active">Trang chủ</a></li>
					<li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
					<c:if test="${usersession != null }">
					<li><a href="${pageContext.request.contextPath}/NotFoundException">Xem đơn hàng</a></li>
					<li><a href="${pageContext.request.contextPath}/my-account">Tài khoản</a></li>
						<li><a href="${pageContext.request.contextPath}/log-out">Đăng Xuất</a></li>
					</c:if>
					<c:if test="${usersession == null }">
						<li><a href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
						<li><a href="${pageContext.request.contextPath}/sign-up">Đăng ký</a></li>
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
						<i class="fa fa-user" aria-hidden="true"></i>
					</button>
					<ul class="dropdown-menu  dropdown-menu-right"
						aria-labelledby="dropdownMenu"> 
						<c:if test="${usersession.user == null }">
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/sign-up">Đăng ký</a></li>
						</c:if>
						
						<c:if test="${usersession.user != null }">
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/my-account">Quản lý tài khoản</a></li>
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/#">Xem đơn đặt</a></li>
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/log-out">Đăng xuất</a></li>
						</c:if>
						
					</ul>
			</ul>
		</div>
			</div>
		</div>

		<!-- //search -->
		
	</c:if>

	<c:if test="${not fn:contains(theString, 'home.jsp')}">
		<div class="logo inner_page_log">
			<h1>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/home"><span>House</span>
					<i>Booking</i></a>
			</h1>
		</div>
		<div class="overlay overlay-contentpush" style=" box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px; ">
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
						<li><a href="${pageContext.request.contextPath}/sign-up">Sign up</a></li>
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