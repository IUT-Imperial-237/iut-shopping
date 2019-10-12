<%@page import="java.sql.ResultSet"%>
<%@page import="users.DateUtil"%>

<jsp:useBean id="product" class="adminMangement.products" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IUT</title>

        <!-- linked-files -->
        <%@ include file="linked-files.jsp" %>

    </head>
    <body>

        <!-- Header -->
        <%@ include file="header.jsp" %>

        <!-- all categories debut -->
        <br><br><br>
        <div class="container ">
            <div class="card card_categories">
                <div class="card-body">
                    <hr>
                    <div class="row ">
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <form action="">
                                <p><b>Sort By Price:</b></p>
                                <div class="row row_form_allcat">

                                    <div class="col-20">
                                        <label for="min">min</label>
                                    </div>
                                    <div class="col-70">
                                        <input class="inp_all_cat" type="number" id="min" name="min" placeholder="min">
                                    </div>
                                </div>
                                <div class="row row_form_allcat">
                                    <div class="col-20">
                                        <label for="max">max</label>
                                    </div>
                                    <div class="col-70">
                                        <input class="inp_all_cat" type="number" id="max" name="max" placeholder="max">
                                    </div>
                                </div>
                                <div class="row row_form_allcat"><br>
                                    <input class="sub_all_cat" type="submit" value="Submit">
                                </div>
                            </form>
                            <hr>

                            <h6><b>All Categories : </b></h6><br>

                            <a href="#demo1" class="btn dropdown-toggle color_all_categories" data-toggle="collapse"> <i
                                    class="material-icons icons_all_categories">&#xe324; </i><b
                                    class="color_all_categories">&nbsp;&nbsp;Mobile Phones</b></a>
                            <div id="demo1" class="collapse">
                                <a class="dropdown-item hover_all_categories" href="#">Smartphones</a>
                                <a class="dropdown-item hover_all_categories" href="#">Tablets</a>
                                <a class="dropdown-item hover_all_categories" href="#">Phone Accessories</a>
                            </div><br>

                            <a href="#demo3" class="btn dropdown-toggle color_all_categories" data-toggle="collapse"> <i
                                    class="material-icons icons_all_categories">&#xe30a; </i><b
                                    class="color_all_categories"> &nbsp;&nbsp;Electronic</b></a>
                            <div id="demo3" class="collapse">
                                <a class="dropdown-item hover_all_categories" href="#">Laptop &amp; Desktop</a>
                                <a class="dropdown-item hover_all_categories" href="#">Computer Accessories</a>
                                <a class="dropdown-item hover_all_categories" href="#">Cameras, Camcorders &amp;
                                    Accessories</a>
                                <a class="dropdown-item hover_all_categories" href="#">TVs &amp; Accessories</a>
                                <a class="dropdown-item hover_all_categories" href="#">Audio &amp; Sound Systems</a>
                                <a class="dropdown-item hover_all_categories" href="#">Video Game Consoles &amp;
                                    Accessories</a>
                                <a class="dropdown-item hover_all_categories" href="#">Other electronic equipment</a>
                            </div><br>


                            <a href="#demo8" class="btn dropdown-toggle color_all_categories" data-toggle="collapse"> <i
                                    class="material-icons icons_all_categories fas">&#xf1e3;</i><b
                                    class="color_all_categories">&nbsp;&nbsp;Leisure, Sports</b></a>
                            <div id="demo8" class="collapse">
                                <a class="dropdown-item hover_all_categories" href="#">Sport &amp; Fitness</a>
                                <a class="dropdown-item hover_all_categories" href="#">Outdoors</a>
                                <a class="dropdown-item hover_all_categories" href="#">Sport Swear</a>
                                <a class="dropdown-item hover_all_categories" href="#">Sport Shoes</a>
                            </div><br>

                            <a href="#demo9" class="btn dropdown-toggle color_all_categories" data-toggle="collapse"> <i
                                    class="material-icons icons_all_categories fas">&#xf6e3; </i><b
                                    class="color_all_categories">&nbsp;&nbsp;Services</b></a>
                            <div id="demo9" class="collapse">
                                <a class="dropdown-item hover_all_categories" href="#">Travel And Visa</a>
                                <a class="dropdown-item hover_all_categories" href="#">Business &amp; Technical Services</a>
                                <a class="dropdown-item hover_all_categories" href="#">Tickets</a>
                                <a class="dropdown-item hover_all_categories" href="#">Events &amp; Hospitality</a>
                                <a class="dropdown-item hover_all_categories" href="#">Health &amp; Lifestyle</a>
                                <a class="dropdown-item hover_all_categories" href="#">Domestic &amp; Personal</a>
                            </div><br>


                            <a href="#demo11" class="btn dropdown-toggle color_all_categories" data-toggle="collapse"> <span
                                    class="material-icons icons_all_categories glyphicon glyphicon-education">&#xe233;</span><b
                                    class="color_all_categories">&nbsp;&nbsp;Education</b></a>
                            <div id="demo11" class="collapse">
                                <a class="dropdown-item hover_all_categories" href="#">Tuition</a>
                                <a class="dropdown-item hover_all_categories" href="#">Study Abroad</a>
                                <a class="dropdown-item hover_all_categories" href="#">Textbooks</a>
                                <a class="dropdown-item hover_all_categories" href="#">Courses</a>
                                <a class="dropdown-item hover_all_categories" href="#">Other Education</a>
                            </div><br>


                            <a href="#demo13" class="btn dropdown-toggle color_all_categories" data-toggle="collapse"> <i
                                    class="material-icons icons_all_categories">&#xe334;</i><b
                                    class="color_all_categories">&nbsp;&nbsp;Fashion and Clothing</b></a>
                            <div id="demo13" class="collapse">
                                <a class="dropdown-item hover_all_categories" href="#">Men's clothes</a>
                                <a class="dropdown-item hover_all_categories" href="#">Men's Shoes</a>
                                <a class="dropdown-item hover_all_categories" href="#">Women's Clothing</a>
                                <a class="dropdown-item hover_all_categories" href="#">Women's shoes</a>
                                <a class="dropdown-item hover_all_categories" href="#">Kids clothing</a>
                                <a class="dropdown-item hover_all_categories" href="#">Bags and Luggage</a>
                                <a class="dropdown-item hover_all_categories" href="#">Jewelry and Watches</a>
                                <a class="dropdown-item hover_all_categories" href="#">Fashion Accessories</a>
                            </div><br><br>


                        </div>

                        <div class="col-md-1"></div>

                        <div class="col-md-5">
                            
                            <%
                            ResultSet rss = product.getAllProducts();
                            
                              
                                   while(rss.next()){
                                        
            out.println(" <a href='product.jsp?action=productDetails&productId=" +rss.getString("id")+ "' class='border_all_categories'>" );
            out.println("<div class='row'><div class='col-sm-4'>");
          out.println(" <img src='productPicture/"+rss.getString("picture")+"'"+  "class='img-thumbnail' alt='product image' width='100' height='100'>");
                        out.println("</div><div class='col-sm-8'><h5><b>"+ rss.getString("title")+"</b></h5><br>");           
                         out.println("<span class='price_all_categories'> TK  "+rss.getString("price")+"</span></div></div>");
                         out.println("<span class='time_all_categories'>"+  rss.getString("created_at")+"</span><br></a><hr>");
                                   }
                            %>
                          
                            
                 
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <br><br><br>


        <!-- all categories fin -->

        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>
    </body>
</html>
