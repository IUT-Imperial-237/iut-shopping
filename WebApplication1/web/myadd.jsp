<%@page import="java.sql.ResultSet"%>


<jsp:useBean id="product" class="adminMangement.products" />
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
        <br><br>
        <div class="container ">
            <div class="card card_categories">
                <div class="card-body">
                    <div class="user_css">
                        <div class="row">

                            <!-- myaccount -->
                            <%@ include file="myaccount.jsp" %>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-8"><br>
                                <h3 class="lead">My Ads</h3><hr><br>
                                
                                <% 
                                 if(session.getAttribute("deleteMyAdFeedback")!=null){
                                      System.out.println("do not try me");
           out.println("<div class='alert alert-success alert-dismissible fade show' role='alert'> <button type='button' class='close' data-dismiss='alert' aria-label='Close'>");
             out.println("<span aria-hidden='true'>&times;</span></button>");
                out.println("<strong>"+session.getAttribute("deleteMyAdFeedback")+"</strong> </div>" );
                            }
                                 session.removeAttribute("deleteMyAdFeedback");
                                
                                %>
                                
                                
                                <%
                                System.out.println("i am tester " + request.getParameter("_userId"));
                                String userId =(String)session.getAttribute("authid");
                                ResultSet rss = product.getMyAdds(userId);
                                
                                 while(rss.next()){
                                 out.println("<div class='row'> <div class='col-sm-4'>");
                               out.println(" <img src='productPicture/"+rss.getString("picture")+"'"+  "class='img-thumbnail' alt='product image' width='150' height='150'>");
                               out.println("</div> <div class='col-sm-7'>");
                               out.println("<a href='product.jsp?action=productDetails&productId=" +rss.getString("id")+ "' class=''>" );
                               out.println("<h4>"+rss.getString("title")+"</h4></a><br>");
                                out.println("<span class='price_all_categories'>"+ rss.getString("price")+" TK"+"</span>") ;
                                out.println(" </div>");
                                out.println(" <div class='col-sm-1'>");
                                out.println("<a href=editad.jsp?adId="+rss.getString("id")+">" + "<button class='btn_edite'><i class='fa fa-edit'></i></button><br><br></a>");
                                  out.println("<a href=usersManagement?action=deleteMyAd&id=" + rss.getString("id")+ ">" +"<button class='btn_delete'><i class='fa fa-trash'></i></button></a>");
                                 out.println("</div> </div><hr>");
                                 }
                                
                                
                                %>
        
                                   

                                   
                                        
                                        
                                    
                                
                                
                                
<!--                                
                                <div class="row">
                                    <div class="col-sm-4">
                                        <img src="images/image_3.jpg" class="img-thumbnail" alt="images" width="150"
                                             height="150">
                                    </div>
                                    <div class="col-sm-7">

                                        <h4>Summer old Beijing cloth shoes men</h4><br>
                                        <span class="price_all_categories">TK 5000</span>

                                    </div>

                                    <div class="col-sm-1">
                                        <button class="btn_edite"><i class="fa fa-edit"></i></button><br><br>
                                        <button class="btn_delete"><i class="fa fa-trash"></i></button>
                                    </div>
                                </div><hr>
                                
                                
                                
                                
                                
                                
                                <div class="row">
                                    <div class="col-sm-4">
                                        <img src="images/image_2.jpg" class="img-thumbnail" alt="images" width="150"
                                             height="150">
                                    </div>
                                    <div class="col-sm-7">

                                        <h4>Summer old Beijing cloth shoes men</h4><br>
                                        <span class="price_all_categories">TK 5000</span>

                                    </div>

                                    <div class="col-sm-1">
                                        <button class="btn_edite"><i class="fa fa-edit"></i></button><br><br>
                                        <button class="btn_delete"><i class="fa fa-trash"></i></button>
                                    </div>
                                </div><hr>                                                   -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<br><br>




        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>

    </body>
</html>
