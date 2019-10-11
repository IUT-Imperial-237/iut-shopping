
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!-- linked-files -->
        <%@ include file="linked-files.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link rel="stylesheet" type="text/css" href="css/hamburgers.min.css">
<!--===============================================================================================-->
       <link rel="stylesheet" type="text/css" href="css/select2.min.css">

    </head>
    <body>


        <!-- Header -->
        <%@ include file="header.jsp" %>

      <div class="limiter" >
		<div class="container-login100" >
			<div class="wrap-login100" >
				<div class="login100-pic js-tilt" data-tilt >
					<img src="images/img-01.png" alt="IMG">
				</div>

                            <form class="login100-form validate-form" action="usersLogin?action=login" method="post">
					<span class="login100-form-title">
						Member Login
					</span>
                                  <%
                                    if(session.getAttribute("errorLogin")!=null)
                                
                                       out.println("<h3 style='color:red;'>"+ session.getAttribute("errorLogin")+"</h3>"); 
                                        %>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>





        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>
     <script src="js/select2.min.js"></script>

     <script src="js/tilt.jquery.min.js"></script>

        <script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
       <script src="js/main2.js"></script>
    </body>
</html>
