<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>blog</title>
        
        <!-- linked-files -->
 <%@ include file="linked-files.jsp" %>
    </head>
    <body>
         <!-- Header -->
 <%@ include file="header.jsp" %>
       <br><br><br><br><br><br>  
        <div class="container">
            <div class="card">
                <div class="card-body card_categories">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-3">

                            <!-- Search Widget -->
                            <div class="card my-4">
                                <h5 class="card-header">Search</h5>
                                <div class="card-body">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-success" type="button">Go!</button>
                                        </span>
                                    </div>
                                </div>
                            </div><br><br><br>

                            <h6><b>CATEGORIES</b> </h6>
                            <a href="" class="category_blog ">Electronics</a><br>
                            <a href="" class="category_blog ">Mobile Phones</a><br>
                            <a href="" class="category_blog ">Leisure &amp; Sport</a><br>
                            <a href="" class="category_blog ">Services</a><br>
                            <a href="" class="category_blog ">Educations</a><br>
                            <a href="" class="category_blog ">Fashion &amp; Clothing</a><br><br><br>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-sm-6"><br><br>
                                    <img src="images/bg_2.png" class="mx-auto d-block" width="100%" height="200px">                                     </div>
                                <div class="col-sm-6"><br><br>
                                    <span><b>April 9, 2019</b></span>
                                    <span><b>Admin</b></span><br><br>
                                    <h5><b>name of the product hhvahbsbvghsjhvhjsjbbhbhgbgvgfsbhgdyhdt</b></h5><br>
                                    <a href="blogDetail.jsp"><button class="button_blod">Read more</button></a>
                                </div>
                            </div><hr>
                            <div class="row">
                                <div class="col-sm-6"><br><br>
                                    <img src="images/image_1.jpg" class="mx-auto d-block" width="100%" height="200px">                                     </div>
                                <div class="col-sm-6"><br><br>
                                    <span><b>April 9, 2019</b></span>
                                    <span><b>Admin</b></span><br><br>
                                    <h5><b>vghsjhvhjsjbbhbhgbgvgfsbhgdyhdt</b></h5><br>
                                    <a href="blogDetail.jsp"><button class="button_blod">Read more</button></a>
                                </div>
                            </div><hr>
                            <div class="row">
                                <div class="col-sm-6"><br><br>
                                    <img src="images/about.jpg" class="mx-auto d-block" width="100%" height="200px">                                     </div>
                                <div class="col-sm-6"><br><br>
                                    <span><b>April 9, 2019</b></span>
                                    <span><b>Admin</b></span><br><br>
                                    <h5><b>name of the vgfsbhgdyhdt</b></h5><br>
                                    <a href="blogDetail.jsp"><button class="button_blod">Read more</button></a>
                                </div>
                            </div><hr>
                            <div class="row">
                                <div class="col-sm-6"><br><br>
                                    <img src="images/gallery-4.jpg" class="mx-auto d-block" width="100%" height="200px">                                     </div>
                                <div class="col-sm-6"><br><br>
                                    <span><b>April 9, 2019</b></span>
                                    <span><b>Admin</b></span><br><br>
                                    <h5><b>name of the product hhvahbsbv</b></h5><br>
                                    <a href="blogDetail.jsp"><button class="button_blod">Read more</button></a>
                                </div>
                            </div><hr>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
  <br><br><br><br><br><br>
 <!-- start footer -->
    <%@ include file="frontFooter.jsp" %>
    </body>
</html>