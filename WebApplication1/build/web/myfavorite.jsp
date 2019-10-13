<%@page import="java.sql.ResultSet"%>

<jsp:useBean id="product" class="adminMangement.products" />
<jsp:useBean id="favorite" class="adminBean.favoriteBean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>my favorite</title>
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
                                <%
                                if(session.getAttribute("favoriteDeletion")!=null){
           out.println("<div class='alert alert-success alert-dismissible fade show' role='alert'> <button type='button' class='close' data-dismiss='alert' aria-label='Close'>");
             out.println("<span aria-hidden='true'>&times;</span></button>");
                out.println("<strong>"+session.getAttribute("favoriteDeletion")+"</strong> </div>" );
                            }
         %>
                               
                                <h3 class="lead">My Favorite</h3><hr><br>
                                
                                
                                
       <%
                               
                                String userId =(String)session.getAttribute("authid");
                                ResultSet rss = favorite.getAllFavorites(Integer.parseInt(userId));
                                
                                 while(rss.next()){
                                 out.println("<div class='row'> <div class='col-md-4'>");
                                
                               out.println(" <img src='productPicture/"+product.getPicture(rss.getString("addId"))+"'"+  "class='img-thumbnail' alt='product image' width='150' height='150'>");
                               out.println("</div> <div class='col-sm-7'>");
                               out.println("<a href='product.jsp?action=productDetails&productId=" +rss.getString("addId")+ "' class=''>" );
                               out.println("<h4>"+product.getTitle(rss.getString("addId")) +"</h4></a><br>");
                                out.println("<span class='price_all_categories'>"+ product.getPrice(rss.getString("addId"))+" TK"+"</span>") ;
                                out.println(" </div>");
                                out.println(" <div class='col-sm-1'>");
                                
                                 out.println("<a href=usersManagement?action=deleteFavorite&id=" + rss.getString("id")+ ">" +"<button class='btn_delete'><i class='fa fa-trash'></i></button></a>");
                                 
                                 out.println("</div> </div><hr>");
                                 }
                                
                                
                                %>
                                
                                
                                
<!--                                <div class="row">
                                    <div class="col-sm-4">
                                        <img src="images/bg_2.png" class="img-thumbnail" alt="images" width="150"
                                             height="150">
                                    </div>
                                    <div class="col-sm-7">

                                        <span>Not constrained by a membership condition, rather, the database user assigns entities to a given entity set. For instance, let us assume that, after 3 months of employment, university employees are assigned to one of four work teams</span>
                                        <span class="price_all_categories">TK 5000</span>

                                    </div>

                                    <div class="col-sm-1">
                                        <button class="btn_delete"><i class="fa fa-trash"></i></button>
                                    </div>
                                </div><hr>
                                
                                
                                <div class="row">
                                    <div class="col-sm-4">
                                        <img src="images/image_3.jpg" class="img-thumbnail" alt="images" width="150"
                                             height="150">
                                    </div>
                                    <div class="col-sm-7">

                                        <span>Not constrained by a membership condition, rather, the database user assigns entities to a given entity set. For instance, let us assume that, after 3 months of employment, university employees are assigned to one of four work teams</span>
                                        <span class="price_all_categories">TK 5000</span>

                                    </div>

                                    <div class="col-sm-1">
                                        <button class="btn_delete"><i class="fa fa-trash"></i></button>
                                    </div>
                                </div><hr>-->



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
