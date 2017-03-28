
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator</title>

        <!-- Bootstrap -->
        <link href="../assets/css/bootstrap/bootstrapCSS/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="../assets/css/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../assets/css/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../assets/css/pink.css" rel="stylesheet">

        <!-- bootstrap-progressbar -->
        <link href="../assets/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="../assets/css/jqvmap.min.css" rel="stylesheet"/>
        <!-- bootstrap-daterangepicker -->
        <link href="../assets/css/daterangepicker.css" rel="stylesheet">

        <!-- PNotify -->
        <link href="../assets/css/pnotify.css" rel="stylesheet">
        <link href="../assets/css/pnotify.buttons.css" rel="stylesheet">
        <!-- Datatables -->
        <link href="../assets/css/bootstrap/bootstrapCSS/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/bootstrap/bootstrapCSS/buttons.bootstrap.min.css" rel="stylesheet">

        <!-- jQuery Knob -->
        <script src="../assets/js/jquery.knob.min.js"></script>
        <!-- Custom Theme Style -->
        <link href="../assets/css/custom.min.css" rel="stylesheet">

        <!-- Custom Admin Style -->
        <link href="../assets/css/adminCSS.css" rel="stylesheet">
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="MainAdmin.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Administrator Page</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile clearfix">
                            <div class="profile_pic">
                                <img src="../assets/img/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2>Adel Zaid</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->
                        <br />
                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-thumbs-o-up"></i> Products <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="ProductAddition.jsp">Add Product</a></li>
                                            <li><a href="ProductDetails.jsp">Product Details</a></li>
                                            <li><a href="FlowerAddition.jsp">Add Flower</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-users"></i> Clients <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <!--<li><a href="form.html">View Client</a></li>-->
                                            <li><a href="ClientAddition.jsp">Add Client</a></li>
                                            <li><a href="ListClient.jsp">List Users</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-check-square-o"></i>Category<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="CategoryAddition.jsp">Add Category</a></li>
                                            <li><a href="CategoryDetails.jsp">Category Details</a></li>

                                        </ul>
                                    </li>

                            </div>

                        </div>
                        <!-- /sidebar menu -->

                        <!-- /menu footer buttons -->
                        <div class="sidebar-footer">
                            <a data-toggle="tooltip" data-placement="top" title="Logout" href="Login.jsp"  style="width: 100%">
                                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                            </a>
                        </div>
                        <!-- /menu footer buttons -->
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="../assets/img/img.jpg" alt="">Adel Zaid
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu pull-right">

                                        <li><a href="Login.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->
