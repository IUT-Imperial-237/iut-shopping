<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="product" class="adminMangement.products" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IUT</title>
        <!-- linked-files -->
        <%@ include file="linked-files.jsp" %>

        <script>
            function magnify(imgID, zoom) {
                var img, glass, w, h, bw;
                img = document.getElementById(imgID);
                /*create magnifier glass:*/
                glass = document.createElement("DIV");
                glass.setAttribute("class", "img-magnifier-glass");
                /*insert magnifier glass:*/
                img.parentElement.insertBefore(glass, img);
                /*set background properties for the magnifier glass:*/
                glass.style.backgroundImage = "url('" + img.src + "')";
                glass.style.backgroundRepeat = "no-repeat";
                glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
                bw = 3;
                w = glass.offsetWidth / 2;
                h = glass.offsetHeight / 2;
                /*execute a function when someone moves the magnifier glass over the image:*/
                glass.addEventListener("mousemove", moveMagnifier);
                img.addEventListener("mousemove", moveMagnifier);
                /*and also for touch screens:*/
                glass.addEventListener("touchmove", moveMagnifier);
                img.addEventListener("touchmove", moveMagnifier);
                function moveMagnifier(e) {
                    var pos, x, y;
                    /*prevent any other actions that may occur when moving over the image*/
                    e.preventDefault();
                    /*get the cursor's x and y positions:*/
                    pos = getCursorPos(e);
                    x = pos.x;
                    y = pos.y;
                    /*prevent the magnifier glass from being positioned outside the image:*/
                    if (x > img.width - (w / zoom)) {
                        x = img.width - (w / zoom);
                    }
                    if (x < w / zoom) {
                        x = w / zoom;
                    }
                    if (y > img.height - (h / zoom)) {
                        y = img.height - (h / zoom);
                    }
                    if (y < h / zoom) {
                        y = h / zoom;
                    }
                    /*set the position of the magnifier glass:*/
                    glass.style.left = (x - w) + "px";
                    glass.style.top = (y - h) + "px";
                    /*display what the magnifier glass "sees":*/
                    glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
                }
                function getCursorPos(e) {
                    var a, x = 0, y = 0;
                    e = e || window.event;
                    /*get the x and y positions of the image:*/
                    a = img.getBoundingClientRect();
                    /*calculate the cursor's x and y coordinates, relative to the image:*/
                    x = e.pageX - a.left;
                    y = e.pageY - a.top;
                    /*consider any page scrolling:*/
                    x = x - window.pageXOffset;
                    y = y - window.pageYOffset;
                    return {x: x, y: y};
                }
            }
        </script>

    </head>
    <body>

        <!-- Header -->
        <%@ include file="header.jsp" %>
        <br><br>
        <div class="container">
            <div class="card">
                <div class="card-body card_categories">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-6">
                            
                            <%
                              ResultSet rss = product.getSingleProducts(Integer.parseInt( request.getParameter("productId")));
                                    
                                    
                                    while(rss.next()){
                           out.println( "<h2 style='text-align:center'>"+rss.getString("title")+  "</h2>");
                            out.println("<p style='text-align:center '>"  +"<span>" +rss.getString("created_at") + "</span></p>");

                            out.println("<div class='img-magnifier-container'>");
                              out.println("<img id='myimage' src='productPicture/" + rss.getString("picture")+"'"+ " width='100%'>");
                           out.println("</div><br><p>" + rss.getString("description")+"</p></div>") ;                                             
                  out.println("<div class='col-md-1'></div><div class='col-md-4'><br><br><br><br><hr> <span class='tag_price_product'>");      
                        
                        out.println("TK "+ rss.getString("price")+ "</span> <hr>");                                             
                            out.println("<div class='like_button'> <span>Save ad as Favorite</span></div><hr>");
  
                           out.println("<img src='images/call_product.png' alt='call_product' width='15%'> <span> <b> ");
                           out.println(rss.getString("phone")+"</b></span><hr>");
                          
                            out.println("<a  class='fa_product'  href='#'> <img  src='images/facebook_product.jpg' alt='facebook_product' width='20%'></a>");
                            out.println("<a  class='fa_product'  href='#'> <img src='images/twitter_product.jpg' alt='twitter_product' width='20%'></a><hr></div>");
                                    } %>
                    </div>
                </div>
                </div><br><br><br>
            <div class="card">
                <div class="card-body card_categories">
                    <h4><b>Similar Product</b></h4><hr>
                    <div class="row">
                        <div class="col-md-3">
                            <a href="#"><img src="images/gallery-6.jpg" class="mx-auto d-block" width="100%" height="200px"> 
                                <h4 style="text-align: center;">Image Overlay Title</h4></a>
                            <p class="price_similar_product" style="text-align: center;">TK 52000</p>
                        </div>
                        <div class="col-md-3">
                            <a href="#">  <img src="images/image_1.jpg" class="mx-auto d-block" width="100%" height="200px"> 
                                <h4 style="text-align: center;">Image Overlay Title</h4></a>
                            <p class="price_similar_product" style="text-align: center;">TK 52000</p>
                        </div>
                        <div class="col-md-3">
                            <a href="#">  <img src="images/image_5.jpg" class="mx-auto d-block" width="100%" height="200px"> 
                                <h4 style="text-align: center;">Image Overlay Title Image Overlay Title</h4></a>
                            <p class="price_similar_product" style="text-align: center;">TK 52000</p>
                        </div>
                        <div class="col-md-3">
                            <a href="#">  <img src="images/product-1.jpg" class="mx-auto d-block" width="100%" height="200px"> 
                                <h4 style="text-align: center;">Image Overlay Title</h4></a>
                            <p class="price_similar_product" style="text-align: center;">TK 52000</p>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>


        <script>
            $(function () {
                $("i").click(function () {
                    $("i").toggleClass("press", 1000);
                });
            });

            /* Initiate Magnify Function
             with the id of the image, and the strength of the magnifier glass:*/
            magnify("myimage", 3);



        </script>

    </body>
</html>
