<%-- 
    Document   : login
    Created on : Sep 19, 2019, 2:26:10 AM
    Author     : Amadou Olabi Yuffon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="assets/images/Fingerprint_100px.png" type="image/x-icon">
        <meta name="description" content="">

        <title>Login | IUT Commerce</title>
        <link rel="stylesheet" href="assets/custom/style.css">

        <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/soundcloud-plugin/style.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    </head>
    <body>
        <section class="menu cid-rCr3rxTYyn" once="menu" id="menu1-7">
            <nav
                class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                        <li class="nav-item">
                            <a class="nav-link link text-white display-4" href="index.jsp">
                                <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                                Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link text-white display-4" href="#">
                                <span class="mbri-italic mbr-iconfont mbr-iconfont-btn"></span>
                                About Us
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>
        <section class="mbr-section form4 cid-rCrL0jKCa8" id="form4-8">
            <div class="container align-center mbr-black">
                <div class="row">
                    <div class="col-md-6">
                        <div style="margin-top:10%; text-align: center;">
                            <img src="assets/images/Fingerprint_100px.png">
                            <h2 class="pb-3 align-left mbr-fonts-style display-2"><strong>My Account</strong></h2>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div>
                            <div class="icon-block pb-3 align-left">
                                <img src="assets/images/mbr-favicon_1.png">
                                <h4 class="icon-block__title align-left mbr-fonts-style display-5">
                                    Admin Login</h4>
                                    <%
                                        if (session.getAttribute("errorLogin") != null) {
                                            out.println("<h3 style='color:red;'>" + session.getAttribute("errorLogin") + "</h3>");
                                        }
                                    %>
                            </div>
                            <div class="icon-contacts pb-3">
                                <h5 class="align-left mbr-fonts-style display-7"></h5>
                                <p class="mbr-text align-left mbr-fonts-style display-7"></p>
                            </div>
                        </div>
                        <div data-form-type="formoid">
                            <!---FormBuilder Form--->
                            <form method=POST action=login?action=adminLogin  class="mbr-form form-with-styler" data-form-title="Login Form">
                                <div class="dragArea row">
                                    <div data-for="email" class="col-md-12  form-group">
                                        <input type="email" name="email" placeholder="Email"
                                               data-form-field="Username" class="form-control input display-7" required="required"
                                               id="email-form4-3">
                                    </div>
                                    <div data-for="email" class="col-md-12  form-group">
                                        <input type="password" name="password" placeholder="Password" data-form-field="Password"
                                               class="form-control input display-7" required="required" id="email-form4-3">
                                    </div>
                                    <div data-for="email" class="col-md-12  form-group">
                                        <a href="resetPassword.jsp">I Forget my Password?</a>
                                    </div>
                                    <div class="col-md-12 input-group-btn  mt-2 align-center">
                                        <button type="submit" class="btn btn-primary btn-form display-4">LOGIN</button>
                                    </div>
                                    <div data-for="email" class="col-md-12  form-group">
                                        <br><br><hr><a href="registerUser.jsp">Create an Account? Sign Up</a>
                                    </div>
                                </div>
                            </form>
                            <!---FormBuilder Form--->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section once="footers" class="cid-rCrMeoHEPa" id="footer7-9">
            <div class="container">
                <div class="media-container-row align-center mbr-white">
                    <div class="row row-links">
                        <ul class="foot-menu">
                            <li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">About us</a>
                            </li>
                            <li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">Home Page</a>
                            </li>
                        </ul>
                    </div>
                    <div class="row row-copirayt">
                        <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                            Â© Copyright 2019 <a href="#">IUT-Imperials</a> @ All Rights Reserved
                        </p>
                    </div>
                </div>
            </div>
        </section>
                           
        < script src = "assets/web/assets/jquery/jquery.min.js" ></script>
        <script src="assets/popper/popper.min.js"></script>
        <script src="assets/tether/tether.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/dropdown/js/nav-dropdown.js"></script>
        <script src="assets/dropdown/js/navbar-dropdown.js"></script>
        <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/theme/js/script.js"></script>
       
    
</body>
</html>
