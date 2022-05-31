<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="eng">

<head>
<title>House Booking</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
<link
	href="${pageContext.request.contextPath}/view/web/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/web/css/shop.css"
	type="text/css" media="screen" property="" />
<link href="${pageContext.request.contextPath}/view/web/css/style7.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- Owl-carousel-CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/view/web/css/jquery-ui1.css">
<link href="${pageContext.request.contextPath}/view/web/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link
	href="${pageContext.request.contextPath}/view/web/css/font-awesome.css"
	rel="stylesheet">
<!-- //font-awesome-icons -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/web/css/access.css">
</head>

<body>
	<!-- header -->
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<jsp:include page="../web/header.jsp"></jsp:include>
		</div>

		<jsp:include page="../web/commontool.jsp"></jsp:include>
	</div>
	
	 <!-- start top_bg -->
	 <div class="taop_bg" style="margin-top: 5px;">
		<div class="wrap">
			<div class="main_top">
				<h4 class="style">Login/Sign up</h4>
			</div>
		</div>
	</div>

	<div class="main_bg" style="margin-top: 50px;">
		<div class="wrap">
			<div class="main">
				<div class="login_left" style="border: solid 1px green;">
					<h3>Đăng nhập</h3>
					<p>Nếu quý khách là thành viên, xin hãy đăng nhập tại đây!</p>
					<!-- start registration -->
					<div class="registration">
						<!-- [if IE] 
							< link rel='stylesheet' type='text/css' href='ie.css'/>  
						 [endif] -->  

						<!-- [if lt IE 7]>  
							< link rel='stylesheet' type='text/css' href='ie6.css'/>  
						<! [endif] -->  
						<script>
							(function () {

								// Create input element for testing
								var inputs = document.createElement('input');

								// Create the supports object
								var supports = {};

								supports.autofocus = 'autofocus' in inputs;
								supports.required = 'required' in inputs;
								supports.placeholder = 'placeholder' in inputs;

								// Fallback for autofocus attribute
								if (!supports.autofocus) {

								}

								// Fallback for required attribute
								if (!supports.required) {

								}

								// Fallback for placeholder attribute
								if (!supports.placeholder) {

								}

								// Change text inside send button on submit
								var send = document.getElementById('register-submit');
								if (send) {
									send.onclick = function () {
										this.innerHTML = '...Sending';
									}
								}

							})();
						</script>
						<div class="registration_left">
							<div class="registration_form">
								<!-- Form -->
								<form id="registration_form" action="access" method="post">
									<input type="hidden" name="action" value="login"/>
									<div>
										<label>
											<input name="username" placeholder="Tên tài khoản" type="text" tabindex="1" required="">
										</label>
									</div>
									<div>
										<label>	
											<input name="password" placeholder="Mật khẩu" type="password" tabindex="2" required="">
										</label>
									</div>									
									<div>
										<input type="submit" value="Xác nhận" id="register-submit"> <span style="color: red;">${login_mess}</span>
									</div>
								</form>
								<!-- /Form -->
							</div>
						</div>
					</div>
					<!-- end registration -->
				</div>
				<div class="login_left" style="border: solid 1px green; margin-bottom: 40px;">
					<h3>Đăng kí thành viên</h3>
					<p>Bằng cách tạo một tài khoản thành viên, bạn sẽ có thể thực hiện quá trình thanh toán nhanh hơn, lưu trữ nhiều địa chỉ giao hàng, xem và theo dõi đơn đặt hàng của bạn trong tài khoản của bạn và hơn thế nữa.</p>
					<div class="registration_left">
						<div class="registration_form">
							<!-- Form -->
							<form id="registration_form" action="access" method="post">
								<input type="hidden" name="action" value="register"/>
								<div>
									<label>
										<input name="register_name" placeholder="Tên Thành viên" type="text" tabindex="3" required="" autofocus="">
									</label>
								</div>

								<div>
									<label>
										<input name="register_username" placeholder="Tên tài khoản" type="text" tabindex="4" required="">
									</label>
								</div>
								<div>
									<label>
										<input name="register_password" placeholder="Mật khẩu" type="password" tabindex="5" required="">
									</label>
								</div>						
								<div>
									<label>
										<input name="register_retypePassword" placeholder="Xác nhận mật khẩu" type="password" tabindex="6" required="">
									</label>
								</div>
								<div>
									<label>
										<input name="register_phoneNumber" placeholder="Số điện thoại" type="text" tabindex="7" required="">
									</label>
								</div>
								<div>
									<label>
										<input name="register_address" placeholder="Địa chỉ liên hệ" type="text" tabindex="8" required="">
									</label>
								</div>
								<div>
									<input type="submit" value="Tạo tài khoản" id="register-submit"> <span style="color: #FF0000"> ${register_mess}</span>
								</div>

							</form>
							<!-- /Form -->
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>		

			<div class="clearfix"></div>

		</div>
	</div>


	<!-- footer -->
	<jsp:include page="../web/footer.jsp"></jsp:include>
	<!-- //footer -->
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/web/js/demo1.js"></script>
	<!-- //nav -->
	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/web/js/search.js"></script>
	<!--//search-bar-->
	<!-- price range (top products) -->
	<script
		src="${pageContext.request.contextPath}/view/web/js/jquery-ui.js"></script>
	<script>
		//<![CDATA[ 
		$(window).load(
				function() {
					$("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 9000,
								values : [ 50, 6000 ],
								slide : function(event, ui) {
									$("#amount").val(
											"$" + ui.values[0] + " - $"
													+ ui.values[1]);
								}
							});
					$("#amount").val(
							"$" + $("#slider-range").slider("values", 0)
									+ " - $"
									+ $("#slider-range").slider("values", 1));

				}); //]]>
	</script>
	<!-- //price range (top products) -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/view/web/js/bootstrap-3.1.1.min.js"></script>


</body>

</html>