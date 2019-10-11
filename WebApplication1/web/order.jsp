
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
                                <h3 class="lead">My Order</h3><hr><br>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <img src="images/image_1.jpg" class="img-thumbnail" alt="images" width="150"
                                             height="150">
                                    </div>
                                    <div class="col-sm-7">

                                        <h4>Summer old Beijing cloth shoes men</h4><br>
                                        <span class="price_all_categories">TK 5000</span>

                                    </div>

                                    <div class="col-sm-1">
                                        <button class="btn_delete"><i class="fa fa-trash"></i></button>
                                    </div>
                                </div><hr>
                                
                                   

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
