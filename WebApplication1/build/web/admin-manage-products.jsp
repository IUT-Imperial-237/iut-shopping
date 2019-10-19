<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="prod" class="adminMangement.products" />
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
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"> <p data-placement="top" data-toggle="tooltip" title="Add new cetgory"><button class="btn btn-success btn-lg" data-title="Add new category" data-toggle="modal" data-target="#add" ><i class="fas fa-plus"></i>Add new Product</button></p></div>  
            </div>
            <div class="col-md-4"></div>
        </div>
        <h2 class="text-center">Products Table</h2>

        <div class="table-responsive ">
            <table id="mytable" class="table table-bordred table-striped table-hover">
                <thead>
                <th>Product Id</th>
                <th>Title</th>      
                <th>Price</th>       
                <th>Users</th>
                <th>State</th>
                <th>Active/Desactive</th>
                <th>View</th>
                <th>Delete</th>
                </thead>
                <tbody>

<%-- karim fetch du database to admin debut--%> 

                    <%
                        ResultSet rss = prod.getAllProductsToAdmin();
                        while (rss.next()) {

                            out.println(" <tr><td>" + rss.getString("id") + "</td>");
                            out.println("<td>" + rss.getString("title") + "</td>");
                            out.println("<td>" + rss.getString("price") + "</td>");
                            out.println("<td>" + rss.getString("user") + "</td>");
                            
                            if(rss.getString("isActive").equals("1"))
                            {
                            out.println("<td> Actived </td>");
                            }
                            
                             if(rss.getString("isActive").equals("0"))
                            {
                            out.println("<td> Desactived </td>");
                            }
                            
                            
                             out.println("<td><a href=adminManagement?action=ActivateProduct&id="+rss.getString("id") + ">");
                            out.println("<p data-placement='top' data-toggle='tooltip' title='Block'><button class='btn btn-success btn-xs' data-title='Edit' data-toggle='modal' data-target='#block' ><i class='fas fa-edit'></i></button></p></a></td>");
                            out.println("<td><a href=product.jsp?action=productDetails&productId=" + rss.getString("id") + ">");
                            out.println("<p data-placement='top' data-toggle='tooltip' title='Block'><button class='btn btn-success btn-xs' data-title='View' data-toggle='modal' data-target='#block' ><i class='fas fa-eye'></i></button></p></a></td>");
                            out.println("<td><a href=adminManagement?action=deleteProduct&id=" + rss.getString("id") + ">");
                            out.println("<p data-placement='top' data-toggle='tooltip' title='Delete'><button class='btn btn-danger btn-xs' data-title='Delete' data-toggle='modal' data-target='#delete' ><i class='fas fa-trash-alt'></i></button></p></a></td></tr>");

                        }
                    %>

<%-- karim fetch du database to admin fin--%> 


                </tbody>
            </table>
            <div class="clearfix"></div>
        </div>



        <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="add" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="POST" action="{{ route('updateUsers') }}">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                            <h4 class="modal-title custom_align" id="Heading">Add new category</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="first-disabled">City: </label>
                                <select id="first-disabled" class="selectpicker form-control" 
                                        data-hide-disabled="false" data-live-search="true" name="city">





                                    <optgroup label="East">

                                        <option>Abong-Mbang</option>
                                        <option>Batouri</option>
                                        <option>Bertoua</option>
                                        <option> Yokadouma </option>
                                    </optgroup>

                                    <optgroup label="Adamawa">

                                        <option>Banyo</option>
                                        <option>Meiganga</option>
                                        <option>Ngaoundere</option>
                                        <option> Tibati</option>
                                        <option>Tignere</option>
                                    </optgroup>
                                    <optgroup label="South">

                                        <option>Ambam</option>
                                        <option>Ebolowa</option>
                                        <option> Kribi</option>
                                        <option>Sangmelima</option>
                                    </optgroup>

                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Category Name: </label>

                                <input class="form-control" type="text"  id="categoryName"  name="name">
                            </div>


                        </div>
                        <div class="modal-footer ">
                            <input type="submit" class="btn btn-warning btn-lg" style="width: 100%;" value="Add"><span class="glyphicon glyphicon-ok-sign" ></span> 
                        </div>
                    </form>
                </div>
                <!-- /.modal-content --> 
            </div>
            <!-- /.modal-dialog --> 
        </div>

        <%@ include file="admin-footer.jsp" %>
    </body>

</html>


