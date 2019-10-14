<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact</title>
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
                    <h2 style="text-align: center" >Still need help?</h2>
                    <p class="lead" style="text-align: center" >Please complete the form below and we will get back to you soon.</p><hr>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-7">

                            <form method="POST" action="" class="contentregister"><br><br>
                                <input class="inputregister" type="text" id="name" name="name" placeholder="Name" style="width:84%;"><br><br>
                                <input class="inputregister" type="email" id="email" name="femail" placeholder="Email" style="width:84%;"><br><br>
                                <textarea class="inputregister" name="" id=""  rows="5"
                                          placeholder="How can we help you?" style="width:84%;"></textarea><br><br>
                                <input class="inputregistersubmit btn btn-primary" type="submit" value="REGISTER"><br><br>
                            </form>
                        </div> 
                        <div class="col-md-2"></div>

                    </div>
                </div>
            </div>
        </div>
 <br><br><br><br><br><br>
        <!-- start footer -->
        <%@ include file="frontFooter.jsp" %>
    </body>
</html>