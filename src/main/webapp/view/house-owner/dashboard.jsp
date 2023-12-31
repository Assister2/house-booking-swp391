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
	
	<link
	href="${pageContext.request.contextPath}/view/house-owner/css/logo.css"
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
								<h2 class="title-1">Thống kê ${sessionScope.countRequestNotification }</h2>
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
											<h2>${amountBillInLast12Moth}</h2>
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
										
										<div class="text">
										<fmt:formatNumber var="totalThisWeek" value="${TongTienTuanNay}"
									type="currency" minFractionDigits="0" currencySymbol="" />
											<h2>${totalThisWeek } VNĐ</h2>
											<span>Doanh thu trong tuần</span>
										</div>
									</div>
									<div class="overview-chart">
										<canvas id="widgetChart22"></canvas>
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
										
										<div class="text">
										<fmt:formatNumber var="total12Moth" value="${totalBillInLast12Moth}"
									type="currency" minFractionDigits="0" currencySymbol="" />
											<h2>${total12Moth } VNĐ</h2>
											<span>Doanh thu theo tháng</span>
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
							<div class="au-card m-b-30" style="height: 90%;">
								<div class="au-card-inner">
									<h3 class="title-2 m-b-40">Tình trạng 3 tuần gần nhất</h3>
									<canvas id="lineChart"></canvas>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="au-card chart-percent-card" style="height: 90%;">
								<div class="au-card-inner">
									<h3 class="title-2 tm-b-5">Thu nhập theo nhà (%)</h3>
									<div class="row no-gutters">
										<div class="col-xl-6">
											<div class="chart-note-wrap">
												<c:set var="count" value="${1 }"></c:set>
												<c:forEach var="item" items="${listPercentByBuilding }">
													<div class="chart-note mr-0 d-block">
														<c:if test="${count == 1 }">
															<span class="dot"
																style="background-color: #00b5e9 !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 2 }">
															<span class="dot"
																style="background-color: #fa4251 !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 3 }">
															<span class="dot"
																style="background-color: blue !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 4 }">
															<span class="dot"
																style="background-color: #6eeb4a !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 5 }">
															<span class="dot"
																style="background-color: #776cde !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 6 }">
															<span class="dot"
																style="background-color: #6cded7 !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 7 }">
															<span class="dot"
																style="background-color: #e1f154 !important;"></span>
															<span>${item.key }</span>
														</c:if>
														<c:if test="${count == 8 }">
															<span class="dot"
																style="background-color: #f198ef !important;"></span>
															<span>${item.key }</span>
														</c:if>

													</div>
													<c:set var="count" value="${count + 1 }"></c:set>
												</c:forEach>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="percent-chart">
												<canvas id="percent-chart"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<%-- <div class="row">
						<jsp:useBean id="now" class="java.util.Date" />
						<fmt:formatDate var="date" value="${now}" pattern="dd - MM - yyyy" />
						<div class="col-lg-6">
							<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
								<div class="au-card-title"
									style="background-image: url('https://197281.fs1.hubspotusercontent-na1.net/hub/197281/hubfs/nordwood-themes-524137-unsplash.jpg?width=1139&amp;name=nordwood-themes-524137-unsplash.jpg');">
									<div class="bg-overlay bg-overlay--blue"></div>
									<h3>
										<i class="zmdi zmdi-account-calendar"></i>${date }
									</h3>
									<button class="au-btn-plus">
										<i class="zmdi zmdi-check"></i>
									</button>
								</div>
								<div class="au-task js-list-load">
									<div class="au-task__title">
										<p>
											Hôm nay có <b>${listRequestToday.size() }</b> yêu cầu đặt
											phòng

										</p>
									</div>
									<div class="au-task-list js-scrollbar3">
										<c:forEach var="i" begin="1" end="${listRequestToday.size() }">
											<c:if test="${i <= 4}">
												<div class="au-task__item au-task__item--primary">
													<div class="au-task__item-inner">
														<h5 class="task">
															<a href="" data-toggle="modal" data-target="#mediumModal">Đặt
																phòng: ${listRequestToday[i-1].billDetail[0].roomId}</a>
														</h5>
														Từ ngày:<span class="time">
															${listRequestToday[i-1].billDetail[0].startDate}</span> Đến
														ngày: <span class="time">${listRequestToday[i-1].billDetail[0].endDate}</span>
													</div>
												</div>
											</c:if>
											<c:if test="${i > 4 }">
												<div
													class="au-task__item au-task__item--primary js-load-item">
													<div class="au-task__item-inner">
														<h5 class="task">
															<a href="#">Đặt phòng:
																${listRequestToday[i-1].billDetail[0].roomId}</a>
														</h5>
														Từ ngày:<span class="time">
															${listRequestToday[i-1].billDetail[0].startDate}</span> Đến
														ngày: <span class="time">${listRequestToday[i-1].billDetail[0].endDate}</span>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
									<div class="au-task__footer">
										<c:if test="${listRequestToday.size() > 4 }">
											<button class="au-btn au-btn-load js-load-btn">load
												more</button>
										</c:if>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
								<div class="au-card-title"
									style="background-image: url('https://assets-global.website-files.com/5b15d605b7c459fc409872b5/611abb5818d4c48dfcea9ca6_photo-1488998287214-1e668a8e0dc4.jpg');">
									<div class="bg-overlay bg-overlay--blue"></div>
									<h3>
										<i class="zmdi zmdi-comment-text"></i>New Messages
									</h3>
									<button class="au-btn-plus">
										<i class="zmdi zmdi-check"></i>
									</button>
								</div>
								<div class="au-inbox-wrap js-inbox-wrap">
									<div class="au-message js-list-load">
										<div class="au-message__noti">
											<p>
												You Have <span>2</span> new messages
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
																<img src="images/icon/avatar-03.jpg"
																	alt="Nicholas Martinez">
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
											<button class="au-btn au-btn-load js-load-btn">load
												more</button>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="copyright">
												<p>
													Copyright © 2018 Colorlib. All rights reserved. Template by
													<a href="https://colorlib.com">Colorlib</a>.
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END MAIN CONTENT-->
						<!-- END PAGE CONTAINER-->
					</div> --%>


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
			(function($) { </c:if> 
			
			<c:if test="${1 != 0 }">
		//WidgetChart 12
		var ctx = document.getElementById("widgetChart12");
		if (ctx) {
			ctx.height = 130;
			var myChart = new Chart(ctx, {
				type : 'line',
				data : {
					labels : [ 
						<c:set var="count" value="${1}"></c:set>
	            	  <c:forEach var="item" items="${listLast12MonthBillAmount }">
	            	  "${item.key}"
	            	  <c:if test="${count < listLast12MonthBillAmount.size()}">,</c:if>
		        	  <c:set var="count" value="${count + 1}"></c:set>
						</c:forEach>
						],
					type : 'line',
					datasets : [ {
						data : [ 
							<c:set var="count" value="${1}"></c:set>
		            	  <c:forEach var="item" items="${listLast12MonthBillAmount }">
		            	  "${item.value}"
		            	  <c:if test="${count < listLast12MonthBillAmount.size()}">,</c:if>
			        	  <c:set var="count" value="${count + 1}"></c:set>
							</c:forEach>
							],
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

					<c:if test="${1 != 0 }">
						<script>
			(function($) { </c:if> <c:if test="${1 != 0 }"> 
					
			var ctx = document.getElementById("percent-chart");
		    if (ctx) {
		      ctx.height = 280;
		      var myChart = new Chart(ctx, {
		        type: 'doughnut',
		        data: {
		          datasets: [
		            {
		              label: "My First dataset",
		              data: [ <c:set var="count" value="${1}"></c:set>
		        	  <c:forEach var="item" items="${listPercentByBuilding }">
						${item.value}
						<c:if test="${count <= listPercentByBuilding.size()}">,</c:if>
		        	  <c:set var="count" value="${count + 1}"></c:set>
						</c:forEach>],
		              backgroundColor: [
		                '#00b5e9',
		                '#fa4251','blue','#6eeb4a', '#776cde', '#6cded7', '#e1f154', '#f198ef'

		              ],
		              hoverBackgroundColor: [
		            	  '#00b5e9',
			                '#fa4251','blue','#6eeb4a', '#776cde', '#6cded7', '#e1f154', '#f198ef'
		              ],
		              borderWidth: [
		                0, 0, 0,0,0,0,0
		              ],
		              hoverBorderColor: [
		                'transparent',
		                'transparent',
		                'transparent',
		                'transparent',
		                'transparent',
		                'transparent',
		                'transparent',
		                'transparent'
		              ]
		            }
		          ],
		          labels: [
		        	  
		        	  <c:set var="count" value="${1}"></c:set>
		        	  <c:forEach var="item" items="${listPercentByBuilding }">
						'${item.key}'
						<c:if test="${count <= listPercentByBuilding.size()}">,</c:if>
		        	  <c:set var="count" value="${count + 1}"></c:set>
						</c:forEach>, 'Giang'
						
		          ]
		        },
		        options: {
		          maintainAspectRatio: false,
		          responsive: true,
		          cutoutPercentage: 55,
		          animation: {
		            animateScale: true,
		            animateRotate: true
		          },
		          legend: {
		            display: false
		          },
		          tooltips: {
		            titleFontFamily: "Poppins",
		            xPadding: 15,
		            yPadding: 10,
		            caretPadding: 0,
		            bodyFontSize: 16
		          }
		        }
		      });
			    
			}
			    })(jQuery);
			</script>

					</c:if>


					<c:if test="${1 != 0 }">
						<script>
			(function($) { </c:if> <c:if test="${1 != 0 }"> 
					
			
			var ctx = document.getElementById("lineChart");
		    if (ctx) {
		      ctx.height = 194;
		      var myChart = new Chart(ctx, {
		        type: 'line',
		        data: {
		          labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
		          defaultFontFamily: "Poppins",
		          datasets: [
		        	  
			            {
				              label: "2 Tuần trước",
				              borderColor: "rgba(2, 237, 10, 0.9)",
				              borderWidth: "1",
				              backgroundColor: "rgba(2, 237, 10, 0.5)",
				              pointHighlightStroke: "rgba(26,179,148,1)",
				              data: [

				            	  <c:set var="count" value="${1}"></c:set>
				            	  <c:forEach var="item" items="${AmountBill2WeeksAgo }">
									${item}
									<c:if test="${count < AmountBill2WeeksAgo.size()}">,</c:if>
					        	  <c:set var="count" value="${count + 1}"></c:set>
									</c:forEach>
				            	  
				            	  ]
				            },
		            {
		              label: "Tuần trước",
		              borderColor: "rgba(0,0,0,.09)",
		              borderWidth: "1",
		              backgroundColor: "rgba(0,0,0,.07)",
		              data: [
		            	  
		            	  <c:set var="count" value="${1}"></c:set>
		            	  <c:forEach var="item" items="${AmountBillInLastWeek }">
						${item}
						<c:if test="${count < AmountBillInLastWeek.size()}">,</c:if>
		        	  <c:set var="count" value="${count + 1}"></c:set>
						</c:forEach>
		            
		            ]
		            },
		            {
		              label: "Tuần này",
		              borderColor: "rgba(0, 123, 255, 0.9)",
		              borderWidth: "1",
		              backgroundColor: "rgba(0, 123, 255, 0.5)",
		              pointHighlightStroke: "rgba(26,179,148,1)",
		              data: [

		            	  <c:set var="count" value="${1}"></c:set>
		            	  <c:forEach var="item" items="${AmountBillInThisWeek }">
							${item}
							<c:if test="${count < AmountBillInThisWeek.size()}">,</c:if>
			        	  <c:set var="count" value="${count + 1}"></c:set>
							</c:forEach>
		            	  
		            	  ]
		            }
		            
		          ]
		        },
		        options: {
		          legend: {
		            position: 'top',
		            labels: {
		              fontFamily: 'Poppins'
		            }

		          },
		          responsive: true,
		          tooltips: {
		            mode: 'index',
		            intersect: false
		          },
		          hover: {
		            mode: 'nearest',
		            intersect: true
		          },
		          scales: {
		            xAxes: [{
		              ticks: {
		                fontFamily: "Poppins"

		              }
		            }],
		            yAxes: [{
		              ticks: {
		                beginAtZero: true,
		                fontFamily: "Poppins"
		              }
		            }]
		          }

		        }
		      });
		    }
			
			    })(jQuery);
			</script>

					</c:if>


					<c:if test="${1 != 0 }">
						<script>
			(function($) { </c:if> <c:if test="${1 != 0 }"> 
					
			var ctx = document.getElementById("widgetChart4");
		    if (ctx) {
		      ctx.height = 115;
		      var myChart = new Chart(ctx, {
		        type: 'bar',
		        data: {
		          labels: [<c:set var="count" value="${1}"></c:set>
            	  <c:forEach var="item" items="${listLast12MonthBillTotal }">
            	  "${item.key}"
            	  <c:if test="${count < listLast12MonthBillTotal.size()}">,</c:if>
	        	  <c:set var="count" value="${count + 1}"></c:set>
					</c:forEach>],
		          datasets: [
		            {
		              label: "Tổng doanh thu",
		              data: [
		            	  <c:set var="count" value="${1}"></c:set>
		            	  <c:forEach var="item" items="${listLast12MonthBillTotal }">
		            	  "${item.value}" 
		            	  <c:if test="${count < listLast12MonthBillTotal.size()}">,</c:if>
			        	  <c:set var="count" value="${count + 1}"></c:set>
							</c:forEach>
		              ],
		              borderColor: "transparent",
		              borderWidth: "0",
		              backgroundColor: "rgba(255,255,255,.3)"
		            }
		          ]
		        },
		        options: {
		          maintainAspectRatio: true,
		          legend: {
		            display: false
		          },
		          scales: {
		            xAxes: [{
		              display: false,
		              categoryPercentage: 1,
		              barPercentage: 0.65
		            }],
		            yAxes: [{
		              display: false
		            }]
		          }
		        }
		      });
		    }
			
			
			    })(jQuery);
			</script>

					</c:if>
					
					
					
					
					<c:if test="${1 != 0 }">
						<script>
			(function($) { </c:if> <c:if test="${1 != 0 }"> 
					
			
			  var ctx = document.getElementById("widgetChart22");
			    if (ctx) {
			      ctx.height = 130;
			      var myChart = new Chart(ctx, {
			        type: 'line',
			        data: {
			          labels: ['Mon', 'Stu', 'Wen', 'Thu', 'Fri', 'Sat', 'Sun'],
			          type: 'line',
			          datasets: [{
			            data: [
			            	<c:set var="count" value="${1}"></c:set>
			            	  <c:forEach var="item" items="${Tuannay }">		            	  
			            	  "${item}" 
			            	  <c:if test="${count < Tuannay.size()}">,</c:if>
				        	  <c:set var="count" value="${count + 1}"></c:set>
								</c:forEach>
			            ],
			            label: 'VND',
			            backgroundColor: 'transparent',
			            borderColor: 'rgba(255,255,255,.55)',
			          },]
			        },
			        options: {

			          maintainAspectRatio: false,
			          legend: {
			            display: false
			          },
			          responsive: true,
			          tooltips: {
			            mode: 'index',
			            titleFontSize: 12,
			            titleFontColor: '#000',
			            bodyFontColor: '#000',
			            backgroundColor: '#fff',
			            titleFontFamily: 'Montserrat',
			            bodyFontFamily: 'Montserrat',
			            cornerRadius: 3,
			            intersect: false,
			          },
			          scales: {
			            xAxes: [{
			              gridLines: {
			                color: 'transparent',
			                zeroLineColor: 'transparent'
			              },
			              ticks: {
			                fontSize: 2,
			                fontColor: 'transparent'
			              }
			            }],
			            yAxes: [{
			              display: false,
			              ticks: {
			                display: false,
			              }
			            }]
			          },
			          title: {
			            display: false,
			          },
			          elements: {
			            line: {
			              tension: 0.00001,
			              borderWidth: 1
			            },
			            point: {
			              radius: 4,
			              hitRadius: 10,
			              hoverRadius: 4
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