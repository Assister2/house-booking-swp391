<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="eng">

<head>
	<title>House Booking</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="${pageContext.request.contextPath}/view/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/web/css/about.css" type="text/css" media="screen" property="" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/web/css/shop.css" type="text/css" media="screen" property="" />
	<link href="${pageContext.request.contextPath}/view/web/css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${pageContext.request.contextPath}/view/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="${pageContext.request.contextPath}/view/web/css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
	<!-- banner -->
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		
		<jsp:include page="commontool.jsp"></jsp:include>
	</div>
	
	<div id="addEmployeeModal" class="">
					<div class="">
						<div class="modal-content">
							<form action="voucher" method="post">
								<input type="hidden" name="action" value="add" />
								<div class="modal-header">
									<h4 class="modal-title">Information</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Customer:</label> <input name="voucherId" type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Phone number</label> <input name="discount" type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Email</label> <input name="discount" type="text"
											class="form-control" required>
									</div>

									<div class="form-group">
										<label>Start Date:</label> <input type="text"
											id="my_date_picker1" class="form-control" required>
									</div>
									<div class="form-group">
										<label>End Date:</label> <input type="text"
											id="my_date_picker2" class="form-control" required>
									</div>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-success" value="OK">
								</div>
							</form>
						</div>
					</div>
				</div>
	

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script src="${pageContext.request.contextPath}/view/web/js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script src="${pageContext.request.contextPath}/view/web/js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(function () {
			$("#slider-range").slider({
				range: true,
				min: 0,
				max: 9000,
				values: [50, 6000],
				slide: function (event, ui) {
					$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
				}
			});
			$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

		}); //]]>
	</script>
	<!-- //price range (top products) -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/web/js/bootstrap-3.1.1.min.js"></script>


</body>

</html>