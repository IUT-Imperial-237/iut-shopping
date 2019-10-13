
<%@page import="java.sql.ResultSet"%>


<jsp:useBean id="order" class="adminBean.ordersBean" />
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
        <br><br><br><br><br><br>
        <div class="container ">
            <div class="card card_categories">
                <div class="card-body">
                    <div class="user_css">
                        <div class="row">

                            <!-- myaccount -->
                            <%@ include file="myaccount.jsp" %>

                            <div class="col-lg-9"><br>
                                <h3 class="lead">My Order</h3><hr><br>


                                <div class="row">
                                    <%
                                    if(session.getAttribute("cancelationFeedback")!=null){
                                    
                                      out.println("<div class='alert alert-success alert-dismissible fade show' role='alert'> <button type='button' class='close' data-dismiss='alert' aria-label='Close'>");
             out.println("<span aria-hidden='true'>&times;</span></button>");
                out.println("<strong>"+session.getAttribute("cancelationFeedback")+"</strong> </div>" );
                                    }
                                    %>
                                    <div class="col-md-12">
                                        
                                        <div class="table-responsive ">
                                            <table id="mytable" class="table table-bordred table-striped table-hover">
                                                <thead>
                                                <th>code</th>
                                                <th>Designation</th>
                                                <th>Date </th>
                                                <th>Amount</th>
                                                <th>Status</th>
                                                <th>Cancel</th>
                                                </thead>
                                                <tbody>

                                                    <%                                                        String userId = (String) session.getAttribute("authid");
                                                        ResultSet rss = order.getOrders(Integer.parseInt(userId));
                                                        while (rss.next()) {
                                                            out.println("<tr>");
                                                            out.println("<td>" + rss.getString("orderCode") + "</td>");
                                                            out.println("<td>" + rss.getString("designation") + "</td>");
                                                            out.println("<td>" + rss.getString("created_at") + "</td>");
                                                            out.println("<td>" + rss.getString("price") + " TK</td>");
                                                            if (rss.getString("state").equals("0")) {
                                                                out.println("<td><span class='alert-dark'>Pending</span></td>");
                                                            }
                                                            if (rss.getString("state").equals("1")) {
                                                                out.println("<td><span class='alert-dark'>Delivered</span></td>");
                                                            }
                                                            if (rss.getString("state").equals("2")) {
                                                                out.println("<td><span class='alert-dark'>Canceled</span></td>");
                                                            }

                                                            out.println("<td>");
                                                            out.println("<a href=usersManagement?action=cancelOrder&id="+ rss.getString("id") +">");
                                                            out.println("<p data-placement='top' data-toggle='tooltip' title='Cancel'>");
                                                            out.println("<button class='btn btn-primary btn-xs' data-title='Edit'  >");
                                                            out.println("<i class='far fa-window-close'></i></button></p></a>");
                                                            out.println("</td></tr>");

                                                        }
                                                    %>


                                                </tbody>
                                            </table>
                                            <div class="clearfix"></div>

                                        </div>
                                    </div>
                                </div><hr>

                            </div>



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
