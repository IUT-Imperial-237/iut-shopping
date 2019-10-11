
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="users" class="adminMangement.users" />

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/admin/admin_style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>

<body>
        <%@ include file="admin-sidebar.jsp" %>


          <h2 class="text-center">Users Table</h2>

            <div class="table-responsive ">
                        <table id="mytable" class="table table-bordred table-striped table-hover">
                           <thead>
                              <th>User Id</th>
                              <th>Name</th>
                              <th>Email</th>
                              <th>created_at</th>
                              <th>isBlocked</th>
                              
                              <th>Block/Unblock</th>
                              <th>Delete</th>
                           </thead>
                           <tbody>
                             
                               <%
                                   ResultSet rss =users.getAllUsers();
                                   while(rss.next()){
                            out.println("<tr> <td>");  
                            out.println(rss.getString("id")+ "</td>");
                                
                            out.println("<td>"+ rss.getString("name")+ "</td>");
                            
                             out.println("<td>"+ rss.getString("email")+ "</td>");
                             
                             out.println("<td>"+ rss.getString("created_at")+ "</td>");
                             
                              out.println("<td>"+ rss.getString("isBlocked")+ "</td>");
                                                                                        
                                
                                out.println("<td><a href=adminManagement?action=blockUser&id="+rss.getString("id") + ">");
                                 out.println(" <p data-placement='top' data-toggle='tooltip' title='Block'><button class='btn btn-success btn-xs' data-title='Edit'  ><i class='fas fa-lock'></i></button></p></a></td>");
                                   
                                  out.println("<td><a href=adminManagement?action=deleteUser&id="+rss.getString("id") + ">"); 
                                 out.println(" <p data-placement='top' data-toggle='tooltip' title='Delete'><button class='btn btn-danger btn-xs' data-title='Delete'><i class='fas fa-trash-alt'></i></button></p></a></td></tr>");
                       }
                             
                               %>
                           </tbody>
                        </table>
                        <div class="clearfix"></div>
                     </div>

 <%@ include file="admin-footer.jsp" %>
</body>

</html>