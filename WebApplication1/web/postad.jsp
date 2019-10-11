
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Ad</title>
        <!-- linked-files -->
        <%@ include file="linked-files.jsp" %>

    </head>
    <body>

        <!-- Header -->
        <%@ include file="header.jsp" %>
        <br><br>
        <div class="container">
            <div class="card card_categories">
                <div class="card-body">
                    <h2 class="lead" style="text-align: center" >Post Your Ad</h2><hr>

                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">

                             <form class="login100-form validate-form" action="usersManagement?action=postad" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="title">Title:</label>
                                    <input type="text" required class="form-control" id="title" placeholder="Enter the title" name="title">
                                   <%
                                       
                                   out.println("  <input type='hidden' value='"+session.getAttribute("authid")+"' name='user'>");
                                   %>
                                 
                                </div>
                                <div class="form-group">
                                    <label for="price">Price:</label>
                                    <input type="number" required class="form-control" id="price" placeholder="Enter the price in TK" name="price">
                                </div>
                                <div class="form-group">
                                    <label for="num">Phone Number:</label>
                                    <input type="number" required class="form-control" id="num" placeholder="Enter the phone number" name="phone">
                                </div>
                                <div class="form-group">
                                     <label for="file">include a clear Picture of the product</label>
                                    <input type="file" required class="form-control-file border" name="picture">
                                </div>
                                <label for="description">Description:</label>
                                <textarea class="form-control" required rows="3" id="description" name="description"></textarea><br>
                                <button type="submit" class="btn btn-primary">Submit</button>
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
