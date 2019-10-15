<%-- 
    Document   : registerUser
    Created on : Sep 19, 2019, 1:14:44 AM
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

        <title>SignUp | IUT Commerce</title>
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

       <%@ include file="header.jsp" %>
<%
   if(session.getAttribute("registrationFeedback")!=null){
           out.println("<div class='alert alert-success alert-dismissible fade show' role='alert'> <button type='button' class='close' data-dismiss='alert' aria-label='Close'>");
             out.println("<span aria-hidden='true'>&times;</span></button>");
                out.println("<strong class='text-center'>"+session.getAttribute("registrationFeedback")+"</strong> </div>" );
                            }
                             
                             session.removeAttribute("registrationFeedback");

%>

        <section class="mbr-section form4 cid-rCrL0jKCa8" id="form4-8">
            <div class="container align-center">
                <div class="row">
                    <div class="col-md-6">
                        <div style="margin-top:10%; text-align: center;">
                            <img src="assets/images/Fingerprint_100px.png">
                            <h2 class="pb-3 align-left mbr-fonts-style display-2"><strong>New User</strong></h2>
                        </div>
                    </div>
                    <div class="col-md-6">

                        <div>
                            <div class="icon-block pb-3 align-left">
                                <span class="icon-block__icon">
                                    <span class="mbr-iconfont mbrib-contact-form"></span>
                                </span>
                                <h4 class="icon-block__title align-left mbr-fonts-style display-5">
                                    Registration Form</h4>
                            </div>
                            <div class="icon-contacts pb-3">
                                <h5 class="align-left mbr-fonts-style display-7"></h5>
                                <p class="mbr-text align-left mbr-fonts-style display-7"></p>
                            </div>
                        </div>
                        <div data-form-type="formoid">
                            <!---FormBuilder Form--->
                            <form action=usersManagement?action=registration method="POST" class="mbr-form form-with-styler"
                                  data-form-title="Registration Form" id="registration">
                                <div class="dragArea row">
                                    <div class="col-md-12  form-group" data-for="name">
                                        <input type="text" name="name" placeholder="Your Name" data-form-field="Name"
                                               required="required" class="form-control input display-7" id="name-form4-8">
                                    </div>
                                   
                                    <div data-for="email" class="col-md-12  form-group">
                                        <input type="text" name="email" placeholder="Email" data-form-field="Email"
                                               class="form-control input display-7" required="required" id="email-form4-8">
                                    </div>
                                    <div data-for="password" class="col-md-12  form-group">
                                        <input type="password" name="password" placeholder="Password with 8 Characters Min."
                                               data-form-field="Password" class="form-control input display-7"
                                               required="required" id="password">
                                    </div>
                                    <div data-for="passwordConfirm" class="col-md-12  form-group">
                                        <input type="password" name="passwordConfirm" placeholder="Password Confirmation"
                                               data-form-field="Password" class="form-control input display-7"
                                               required="required" id="passwordConfirm">
                                    </div>
                                    <div class="col-md-12 input-group-btn  mt-2 align-center">
                                        <button type="submit" class="btn btn-primary btn-form display-4"><b>Sign Up</b><br></button>
                                    </div>
                                    <div data-for="email" class="col-md-12  form-group">
                                        <br><br><hr><a href="login.jsp">I already have an Account? Login</a>
                                    </div>
                                </div>
                            </form>
                            <!---FormBuilder Form--->
                        </div>
                    </div>

                </div>
            </div>
        </section>

    <%@ include file="frontFooter.jsp" %>



<!--        <script>
            document.getElementById("registration").addEventListener("submit", function (e) {
                e.preventDefault();
                var password = document.getElementById("password").value;
                var passwordConfirm = document.getElementById("passwordConfirm").value;
                if (password.length >= 8) {
                    if (password !== passwordConfirm) {
                        alert("Password doesn't Match!!!!");
                    }
                } else {
                    alert("Password must be at least 8 characters minimum...");
                }
            });
        </script>-->
        <script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/popper/popper.min.js"></script>
        <script src="assets/tether/tether.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/dropdown/js/nav-dropdown.js"></script>
        <script src="assets/dropdown/js/navbar-dropdown.js"></script>
        <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/theme/js/script.js"></script>
<!--        <script src="assets/formoid/formoid.min.js"></script>-->



    </body>

</html>