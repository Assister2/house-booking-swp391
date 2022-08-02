<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- search -->
<div class="search_w3ls_agileinfo"></div>

<!-- //search -->
<div class="clearfix"></div>
<!-- /banner_inner -->
<div class="services-breadcrumb_w3ls_agileinfo">
	<div class="inner_breadcrumb_agileits_w3">

		<div class="cd-main-header">
			<ul class="cd-header-buttons">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						style="background-color: rgba(27, 25, 25, 0.27); color: white; height: 36px; width: 36px;"
						id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<i class="fa fa-user" aria-hidden="true"></i>
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
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/sign-up">Đăng ký</a></li>
						</c:if>
						
						<c:if test="${usersession.user.role == 'User' }">
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/my-account">Quản lý tài khoản</a></li>
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/#">Xem lịch sử</a></li>
							<li style="width: 100%;"><a
									href="" data-toggle="modal" data-target="#notification">Thông
										báo <span style="color: red;">(${sessionScope.listNotification.size() } tin mới)</span></a>
																			
										</li>
							<li style="width: 100%;"><a href="${pageContext.request.contextPath}/log-out">Đăng xuất</a></li>
						</c:if>
						
					</ul>
			</ul>
		</div>
		
		<ul class="short">
			<li><a href="${pageContext.request.contextPath}/home">Home</a><i>|</i></li>
			<li>View</li>
		</ul>
	</div>
</div>
<!-- //banner_inner -->