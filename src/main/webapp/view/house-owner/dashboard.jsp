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
<title>Dashboard</title>

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

		<!-- Header - Nav -->

		<jsp:include page="header.jsp"></jsp:include>

		<!-- End - Nav -->

		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="overview-wrap">
								<h2 class="title-1">Statistics</h2>
							</div>
						</div>
					</div>
					<div class="row m-t-25">
						<div class="col-sm-6 col-lg-4">
							<div class="overview-item overview-item--c1">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-account-o"></i>
										</div>
										<div class="text">
											<h2>10368</h2>
											<span>Đơn đặt theo tháng</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart12"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-4">
							<div class="overview-item overview-item--c2">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-shopping-cart"></i>
										</div>
										<div class="text">
											<h2>388,688</h2>
											<span>Request đã giải quyết</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart2"></canvas>
									</div>
								</div>
							</div>
						</div>
						<!--  	<div class="col-sm-6 col-lg-3">
							<div class="overview-item overview-item--c3">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-calendar-note"></i>
										</div>
										<div class="text">
											<h2>1,086</h2>
											<span>Số bài đăng</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart3"></canvas>
									</div>
								</div>
							</div>
						</div>-->
						<div class="col-sm-6 col-lg-4">
							<div class="overview-item overview-item--c4">
								<div class="overview__inner">
									<div class="overview-box clearfix">
										<div class="icon">
											<i class="zmdi zmdi-money"></i>
										</div>
										<div class="text">
											<h2>$1,060,386</h2>
											<span>Doanh thu tháng</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart4"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="au-card m-b-30">
								<div class="au-card-inner">
									<h3 class="title-2 m-b-40">Tình trạng 2 tuần gần nhất</h3>
									<canvas id="lineChart"></canvas>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="au-card m-b-30">
								<div class="au-card-inner">
									<h3 class="title-2 m-b-40">Thu nhập theo nhà</h3>
									<canvas id="doughutChart"></canvas>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
                            <div class="col-lg-6">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                    <div class="au-card-title" style="background-image:url('https://197281.fs1.hubspotusercontent-na1.net/hub/197281/hubfs/nordwood-themes-524137-unsplash.jpg?width=1139&name=nordwood-themes-524137-unsplash.jpg');">
                                        <div class="bg-overlay bg-overlay--blue"></div>
                                        <h3>
                                            <i class="zmdi zmdi-account-calendar"></i>10 July, 2022</h3>
                                        <button class="au-btn-plus">
                                           <i class="zmdi zmdi-check"></i>
                                        </button>
                                    </div>
                                    <div class="au-task js-list-load">
                                        <div class="au-task__title">
                                            <p>Hôm nay có <b>x</b> yêu cầu đặt phòng</p>
                                        </div>
                                        <div class="au-task-list js-scrollbar3">
                                            <div class="au-task__item au-task__item--danger">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="#">Meeting about plan for Admin Template 2018</a>
                                                    </h5>
                                                    <span class="time">10:00 AM</span>
                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--warning">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="#">Create new task for Dashboard</a>
                                                    </h5>
                                                    <span class="time">11:00 AM</span>
                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--primary">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="#">Meeting about plan for Admin Template 2018</a>
                                                    </h5>
                                                    <span class="time">02:00 PM</span>
                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--success">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="#">Create new task for Dashboard</a>
                                                    </h5>
                                                    <span class="time">03:30 PM</span>
                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--danger js-load-item">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="#">Meeting about plan for Admin Template 2018</a>
                                                    </h5>
                                                    <span class="time">10:00 AM</span>
                                                </div>
                                            </div>
                                            <div class="au-task__item au-task__item--warning js-load-item">
                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="#">Create new task for Dashboard</a>
                                                    </h5>
                                                    <span class="time">11:00 AM</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="au-task__footer">
                                            <button class="au-btn au-btn-load js-load-btn">load more</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
                                    <div class="au-card-title" style="background-image:url('https://assets-global.website-files.com/5b15d605b7c459fc409872b5/611abb5818d4c48dfcea9ca6_photo-1488998287214-1e668a8e0dc4.jpg');">
                                        <div class="bg-overlay bg-overlay--blue"></div>
                                        <h3>
                                            <i class="zmdi zmdi-comment-text"></i>New Messages</h3>
                                        <button class="au-btn-plus">
                                            <i class="zmdi zmdi-check"></i>
                                        </button>
                                    </div>
                                    <div class="au-inbox-wrap js-inbox-wrap">
                                        <div class="au-message js-list-load">
                                            <div class="au-message__noti">
                                                <p>You Have
                                                    <span>2</span>

                                                    new messages
                                                </p>
                                            </div>
                                            <div class="au-message-list">
                                                <div class="au-message__item unread">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="avatar-wrap">
                                                                <div class="avatar">
                                                                    <img src="images/icon/avatar-02.jpg" alt="John Smith">
                                                                </div>
                                                            </div>
                                                            <div class="text">
                                                                <h5 class="name">John Smith</h5>
                                                                <p>Have sent a photo</p>
                                                            </div>
                                                        </div>
                                                        <div class="au-message__item-time">
                                                            <span>12 Min ago</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="au-message__item unread">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="avatar-wrap online">
                                                                <div class="avatar">
                                                                    <img src="images/icon/avatar-03.jpg" alt="Nicholas Martinez">
                                                                </div>
                                                            </div>
                                                            <div class="text">
                                                                <h5 class="name">Nicholas Martinez</h5>
                                                                <p>You are now connected on message</p>
                                                            </div>
                                                        </div>
                                                        <div class="au-message__item-time">
                                                            <span>11:00 PM</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="au-message__item">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="avatar-wrap online">
                                                                <div class="avatar">
                                                                    <img src="images/icon/avatar-04.jpg" alt="Michelle Sims">
                                                                </div>
                                                            </div>
                                                            <div class="text">
                                                                <h5 class="name">Michelle Sims</h5>
                                                                <p>Lorem ipsum dolor sit amet</p>
                                                            </div>
                                                        </div>
                                                        <div class="au-message__item-time">
                                                            <span>Yesterday</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="au-message__item">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="avatar-wrap">
                                                                <div class="avatar">
                                                                    <img src="images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                </div>
                                                            </div>
                                                            <div class="text">
                                                                <h5 class="name">Michelle Sims</h5>
                                                                <p>Purus feugiat finibus</p>
                                                            </div>
                                                        </div>
                                                        <div class="au-message__item-time">
                                                            <span>Sunday</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="au-message__item js-load-item">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="avatar-wrap online">
                                                                <div class="avatar">
                                                                    <img src="images/icon/avatar-04.jpg" alt="Michelle Sims">
                                                                </div>
                                                            </div>
                                                            <div class="text">
                                                                <h5 class="name">Michelle Sims</h5>
                                                                <p>Lorem ipsum dolor sit amet</p>
                                                            </div>
                                                        </div>
                                                        <div class="au-message__item-time">
                                                            <span>Yesterday</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="au-message__item js-load-item">
                                                    <div class="au-message__item-inner">
                                                        <div class="au-message__item-text">
                                                            <div class="avatar-wrap">
                                                                <div class="avatar">
                                                                    <img src="images/icon/avatar-05.jpg" alt="Michelle Sims">
                                                                </div>
                                                            </div>
                                                            <div class="text">
                                                                <h5 class="name">Michelle Sims</h5>
                                                                <p>Purus feugiat finibus</p>
                                                            </div>
                                                        </div>
                                                        <div class="au-message__item-time">
                                                            <span>Sunday</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="au-message__footer">
                                                <button class="au-btn au-btn-load js-load-btn">load more</button>
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
		<!-- END MAIN CONTENT-->
		<!-- END PAGE CONTAINER-->
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


	<c:if test="${1 != 0 }">
		<script>
			(function($) { </c:if> <c:if test="${1 != 0 }">
		//WidgetChart 1
		var ctx = document.getElementById("widgetChart12");
		if (ctx) {
			ctx.height = 130;
			var myChart = new Chart(ctx, {
				type : 'line',
				data : {
					labels : [ 'January', 'February', 'March', 'April',
							'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
					type : 'line',
					datasets : [ {
						data : [ 80, 72, 54, 62, 64, 71, 53, 60, 65, 34, 55, 45 ],
						label : 'Số đơn',
						backgroundColor : 'rgba(255,255,255,.1)',
						borderColor : 'rgba(255,255,255,.55)',
					}, ]
				},
				options : {
					maintainAspectRatio : true,
					legend : {
						display : false
					},
					layout : {
						padding : {
							left : 0,
							right : 0,
							top : 0,
							bottom : 0
						}
					},
					responsive : true,
					scales : {
						xAxes : [ {
							gridLines : {
								color : 'transparent',
								zeroLineColor : 'transparent'
							},
							ticks : {
								fontSize : 2,
								fontColor : 'transparent'
							}
						} ],
						yAxes : [ {
							display : false,
							ticks : {
								display : false,
							}
						} ]
					},
					title : {
						display : false,
					},
					elements : {
						line : {
							borderWidth : 0
						},
						point : {
							radius : 0,
							hitRadius : 10,
							hoverRadius : 4
						}
					}
				}
			});
		}
			})(jQuery);
		</script>
	</c:if>
</body>

</html>
<!-- end document-->