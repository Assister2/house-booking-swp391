<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Đăng ký</title>

    <!-- Fontfaces CSS-->
    <link href="${pageContext.request.contextPath}/view/house-owner/css/font-face.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/view/house-owner/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/view/house-owner/css/theme.css" rel="stylesheet" media="all">

</head>

<body>
     <div class="page-wrapper" style="padding-bottom: 0px;">
        <div style="background:-webkit-gradient(linear,left bottom,right top,from(#fc2c77),to(#6c4079))">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo" style="margin-top: -10px;">
							<h1>
								<a href="${pageContext.request.contextPath}/home"> <img
									width="220px;"
									src="${pageContext.request.contextPath}/view/common/image/logo.png"
									alt="Cool Admin" />
								</a>
							</h1>
						</div>
                        <div class="login-form" style="margin-top: -60px;">
                            <form action="" method="post">
                             <div class="form-group">
                                    <label>Tên</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Tên" required="required">
                                </div>
                                 <div class="form-group">
                                    <label>Số điện thoại</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Số điện thoại" required="required">
                                </div>
                                 <div class="form-group">
                                    <label>Email</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="example@gmail.com" required="required">
                                </div>
                                <div class="form-group">
                                <label>Vai trò</label>
                                   <select class="form-control">
									  <option>Người thuê</option>
									  <option>Người cho thuê</option>
									</select>
                                </div>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Username" required="required">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password" required="required">
                                </div>
                                <div class="form-group">
                                    <label>Re-Password</label>
                                    <input class="au-input au-input--full" type="password" name="re-password" placeholder="Password" required="required">
                                </div>
                                <div style="color: #FF0000; padding-bottom: 15px;">
									${register_mess}</div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">register</button>
                                
                            </form>
                            <div class="register-link">
                                <p>
                                    Already have account?
                                    <a href="${pageContext.request.contextPath}/login">Sign In</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/slick/slick.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/animsition/animsition.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/house-owner/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="${pageContext.request.contextPath}/view/house-owner/js/main.js"></script>

</body>

</html>
<!-- end document-->