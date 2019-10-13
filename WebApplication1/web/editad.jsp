<%@page import="java.sql.ResultSet"%>

<jsp:useBean id="product" class="adminMangement.products" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Ad</title>
        <!-- linked-files -->
        <%@ include file="linked-files.jsp" %>

    </head>
    <body>
        <%! String title = ""; String phone = "";String price = ""; String description = "";String adId = ""; %>  
        
      
        <!-- Header -->
        <%@ include file="header.jsp" %>
        <br><br>
        <div class="container">
              <%
                                if(session.getAttribute("editadFeedback")!=null){
           out.println("<div class='alert alert-success alert-dismissible fade show' role='alert'> <button type='button' class='close' data-dismiss='alert' aria-label='Close'>");
             out.println("<span aria-hidden='true'>&times;</span></button>");
                out.println("<strong>"+session.getAttribute("editadFeedback")+"</strong> </div>" );
                            }
         %>
            <div class="card card_categories">
                <div class="card-body">
                    <h2 class="lead" style="text-align: center" >Edit Your Ad</h2><hr>
   <%

            ResultSet rss = product.getMyAddsById(request.getParameter("adId"));
            while (rss.next()) {
                 title = rss.getString("title");
                System.out.println(" iam the first "+ title);
                 phone = rss.getString("phone");
                 price = rss.getString("price");
                 description = rss.getString("description");
                 adId = rss.getString("id");
                break;

            }

        %>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">

                            <form class="login100-form validate-form" action="usersManagement?action=editad" method="post" >
                                <div class="form-group">
                                    <label for="title">Title:</label>
                                    <input type="text" required class='form-control' value='<%= title%>' id="title"  name="title">
                                    <input type="hidden" value=<%= adId%> name='adId'> 
                                </div>

                                <div class="form-group">
                                    <label for="price">Price:</label>
                                    <input type="number" required value='<%= price%>' class='form-control' id="price"  name="price">
                                </div>
                                <div class="form-group">
                                    <label for="num">Phone Number:</label>
                                    <input type="tel"  required value='<%= phone%>' class='form-control' id="num" pattern="[0-9]{11}"  name="phone">
                                </div>

                                <label for="description">Description:</label>
                                <textarea class="form-control"  required rows="3" id="description" name="description"><%= description%></textarea><br>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>

                        </div>
                        <div class="col-md-2"></div>

                    </div>

                </div>
            </div>
        </div>
        <br><br><br>

        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>
    </body>
</html>
