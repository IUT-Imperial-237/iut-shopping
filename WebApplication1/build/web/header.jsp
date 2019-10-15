<nav class="navbar navbar-expand-sm bg-dark navbar-dark first_backg" style=" background: url(images/back.jpg) !important;">
    <!-- Links -->
    <ul class="navbar-nav first_nav ">
        <li class="nav-item">
            <a class=" navbar-brand" href=""><span class="text-center icon-phone2">+017 9626 7213</span></a>
        </li>

        <li class="nav-item">
            <a class="navbar-brand" href=""><span class="text-center icon-paper-plane"> iutonlineshop@gmail.com</span></a>
        </li>

        <li class="nav-item">
            <a class="text-center navbar-brand" href="">3-5 Business days delivery</a>
        </li>

    </ul>
</nav>

<!--Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" style=" background: url(images/back.jpg) !important;">
    <div class="container">
        <a class="navbar-brand logo_nav" href="index.jsp">Iut Deals</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href=postAddServelet class="nav-link"><b>Post Your Ad</b></a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">Catetoyies</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal=All">All Categories</a>
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal='ELECTRONIC'">Electronic</a>
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal='MOBILE PHONES'">Mobile Phone</a>
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal='EDUCATION'">Education</a>
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal='LEISURE, SPORTS'">Sport</a>
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal='FASHION AND CLOTHING'">Fashion &amp; Clothing</a>
                        <a class="dropdown-item" href="usersManagement?action=queryByCat&catVal='SERVICES'">Services</a>
                    </div>
                </li>
                <% session = request.getSession();
                    if (session.getAttribute("email") != null) {
                        out.println("<li class='nav-item cta cta-colored'><a href='profile.jsp' class='nav-link'>My Account</a></li>");

                    }
                %>

                <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact Us</a></li>
                <li class="nav-item"><a href="" class="nav-link"></a></li>
                <li class="nav-item"><a href="" class="nav-link"></a></li>
                <li class="nav-item"><a href="" class="nav-link"></a></li>
                <li class="nav-item"><a href="" class="nav-link"></a></li>
                    <% session = request.getSession();
                        if (session.getAttribute("email") != null) {
                            out.println("<li class='nav-item'><a href=usersLogin?action=logout class='nav-link'>Logout</a></li>");

                        } else {
                            out.println("<li class='nav-item'><a href=usersLogin?action=login class='nav-link'>Login</a></li>");
                            out.println("<li class='nav-item'><a href='registerUser.jsp' class='nav-link'>Register</a></li>");

                        }
                    %>



            </ul>
        </div>
    </div>
</nav>