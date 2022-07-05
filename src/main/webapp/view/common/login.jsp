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
    <title>Register</title>

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
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/view/house-owner/images/icon/logo.png" alt="CoolAdmin">
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="login" method="post">
                            	<input type="hidden" name="action" value="login">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Username" required="required">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password" required="required">
                                </div>
                                <div style="color: #FF0000; padding-bottom: 15px;"> ${login_mess}</div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">Remember Me
                                    </label>
                                    <label>
                                        <a href="#">Forgotten Password?</a>
                                    </label>
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">sign in</button>
                                <div class="social-login-content">
                                    <div class="social-button">
                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/house-booking-swp391/login&response_type=code
    									&client_id=88179618778-1pobvpfpbc5da9q5uic4scv623gjefag.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
    								</div>
                                </div>
                                
                            </form>
                            <div class="register-link">
                                <p>
                                    Don't you have account?
                                    <a href="${pageContext.request.contextPath}/sign-up">Sign Up Here</a>
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