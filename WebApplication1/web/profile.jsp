
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>my order</title>
        <!-- linked-files -->
        <%@ include file="linked-files.jsp" %>
    </head>
    <body>


        <!-- Header -->
        <%@ include file="header.jsp" %>

        <div class="container ">
            <div class="card card_categories">
                <div class="card-body">
                    <div class="user_css">
                        <div class="row">

                            <!-- myaccount -->
                            <%@ include file="myaccount.jsp" %>

                            <div class="col-lg-1"></div>
                            <div class="col-lg-8"><br>
                                <h3 class="lead">My Account</h3><hr><br>                       
                                <form class="my_profile" method="POST" action="">
                                    <input type="text" name="" id="" placeholder="Name"><br><br>
                                    <input type="password" name="" id="" placeholder="Password"><br><br>
                                    <input type="text" name="" id="" placeholder="Telephone number"><br><br>
                                    <input type="text" name="" id="" placeholder="Hall name"><br><br>
                                    <input type="text" name="" id="" placeholder="Room number"><br><br>
                                    <input class="my_profile_button btn btn-primary" type="submit" name="" value="Update">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>






        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>

    </body>
</html>
