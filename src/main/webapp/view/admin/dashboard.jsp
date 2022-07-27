<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-6 col-lg-3">
							<div class="statistic__item">
								<h2 class="number">${totalPost }</h2>
								<span class="desc">Tổng bài đăng</span>
								<!-- <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div> -->
								<div class="icon">
									<i class="zmdi zmdi-calendar-note"></i>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-3">
							<div class="statistic__item">
								<h2 class="number">${owner }</h2>
								<span class="desc">Chủ nhà</span>
								<div class="icon">
									<i class="zmdi zmdi-account-o"></i>
								</div>
								<!--  <div class="icon">
                                        <i class="zmdi zmdi-shopping-cart"></i>
                                    </div> -->
							</div>
						</div>
						<div class="col-md-6 col-lg-3">
							<div class="statistic__item">
								<h2 class="number">${user }</h2>
								<span class="desc">Khách hàng</span>
								<div class="icon">
									<i class="zmdi zmdi-account-o"></i>
								</div>
								<!--  <div class="icon">
                                        <i class="zmdi zmdi-calendar-note"></i>
                                    </div> -->
							</div>
						</div>
						<div class="col-md-6 col-lg-3">
							<div class="statistic__item">
								<h2 class="number">${totalBill }</h2>
								<span class="desc">Tổng đơn đặt phòng</span>
								<div class="icon">
									<i class="zmdi zmdi-money"></i>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12">
							<div class="au-card m-b-30">
								<div class="au-card-inner">
									<h3 class="title-2 m-b-40">Thống kê bài đăng gần đây</h3>
									<canvas id="singelBarChart21"></canvas>
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
			(function($) {
	    // USE STRICT
	    "use strict";
						try {
							</c:if>
	    // single bar chart
	    var ctx = document.getElementById("singelBarChart21");
	    if (ctx) {
	      ctx.height = 150;
	      var myChart = new Chart(ctx, {
	        type: 'bar',
	        data: {
	          labels: ["Sun", "Mon", "Tu", "Wed", "Th", "Fri", "Sat"],
	          datasets: [
	            {
	              label: "Số lượng bài đăng",
	              data: [40, 55, 75, 81, 56, 55, 40],
	              borderColor: "rgba(0, 123, 255, 0.9)",
	              borderWidth: "0",
	              backgroundColor: "rgba(0, 123, 255, 0.5)"
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
	
	  } catch (error) {
	    console.log(error);
	  }
	
	})(jQuery);
			<c:if test="${1 != 0 }">
			</script> </c:if>

</body>

</html>
<!-- end document-->