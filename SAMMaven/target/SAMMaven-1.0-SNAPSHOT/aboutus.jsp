<%-- 
    Document   : faq
    Created on : Mar 19, 2017, 2:52:12 PM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<div id="content">
    <div class="container">

        <div class="col-md-12">
            <ul class="breadcrumb">
                <li><a href="index.jsp">Home</a>
                </li>
                <li>About us </li>
            </ul>

        </div>


        <div class="col-md-3">
            <!-- *** PAGES MENU ***
_________________________________________________________ -->
            <div class="panel panel-default sidebar-menu">

                <div class="panel-heading">
                    <h3 class="panel-title">Pages</h3>
                </div>

                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked">
                        <li class='active'>
                            <a href="aboutus.jsp">About Us</a>
                        </li>
                        <li>
                            <a href="contactus.jsp">Contact page</a>
                        </li>
                        <li>
                            <a href="faq.jsp">FAQ</a>
                        </li>

                    </ul>

                </div>
            </div>

            <!-- *** PAGES MENU END *** -->



        </div>

        <div class="col-md-9">

            <div class="box" >
                <div id="post-content">

                    <p>
                        <img src="assets/img/all.jpg" class="img-responsive img-rounded" alt="Soretnaaaa :'D">
                    </p>

                    <p>SMELL , ADMIRE AND MEDITATE! <br/>
                       
                    </p>

                </div>

                <div data-animate="fadeInUp">
                    <h4 class='center'>Developers </h4>
                    <br/>
                    <div class="row comment">
                        <div class="col-sm-3 col-md-3 text-center-xs">
                            <p>
                                <img src="assets/img/sherif.jpg" class="img-responsive img-circle" alt="">
                            </p>
                        </div>
                        <div class="col-sm-9 col-md-9">
                            <h5>Sherif Ahmed</h5>
                            <p>Jamaykaa :'D </p>
                        </div>
                    </div>
                    <!-- /.comment -->

                    <hr/>
                    <div class="row comment">
                        <div class="col-sm-3 col-md-3 text-center-xs">
                            <p>
                                <img src="assets/img/allaa.jpg" class="img-responsive img-circle" alt="">
                            </p>
                        </div>
                        <div class="col-sm-9 col-md-9">
                            <h5>Allaa Amer</h5>
                            <p>Bate5aa :'D </p>
                        </div>
                    </div>
                    <!-- /.comment -->
                    <hr/>
                    <div class="row comment">
                        <div class="col-sm-3 col-md-3 text-center-xs">
                            <p>
                                <img src="assets/img/img.jpg" class="img-responsive img-circle" alt="">
                            </p>
                        </div>
                        <div class="col-sm-9 col-md-9">
                            <h5>Adel Zain</h5>
                            <p>eh l arf dah :'D </p>
                        </div>
                    </div>
                    <!-- /.comment -->
                    <hr/>
                    <div class="row comment">
                        <div class="col-sm-3 col-md-3 text-center-xs">
                            <p>
                                <img src="assets/img/moamen.PNG" class="img-responsive img-circle" alt="">
                            </p>
                        </div>
                        <div class="col-sm-9 col-md-9">
                            <h5>Moamen Adel</h5>
                            <p>El Alsh oslob 7yah :'D</p>
                        </div>
                    </div>
                    <!-- /.comment -->

                </div>
            </div>
        </div>
        <!-- /.col-md-9 -->
    </div>
    <!-- /.container -->
</div>

<%@include file="footer.jsp" %>
