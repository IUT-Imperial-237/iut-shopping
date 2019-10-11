 <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3><a href="#"> iut-deals</a></h3>
            </div>

            <ul class="list-unstyled components">
               <li>
                <a href="adminManagement?action=dashboard">Dashboard</a>
                </li>
                <li class="">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Catalogue</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="adminManagement?action=categories">Categories</a>
                        </li>
                        <li>
                            <a href="adminManagement?action=sub-categories">Sub-categories</a>
                        </li>
                    
                    </ul>
                </li>
                <li>
                    <a class="" href="adminManagement?action=manage-users">Users</a>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Products</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        
                        <li>
                            <a href="adminManagement?action=manage-products">Manage Products</a>
                        </li>
                      
                    </ul>
                </li>
                <li>
                    <a href="adminManagement?action=manage-orders">Orders</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="#" class="download">ADMIN</a>
                </li>
                <li>
                    <a href="#" class="article">Back to article</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Toggle Sidebar</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href=login?action=logout>Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
