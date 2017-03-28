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
                        <li>FAQ</li>
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
                                <li>
                                    <a href="aboutus.jsp">About Us</a>
                                </li>
                                <li>
                                    <a href="contactus.jsp">Contact page</a>
                                </li>
                                <li class='active'>
                                    <a href="faq.jsp">FAQ</a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <!-- *** PAGES MENU END *** -->


                   
                </div>
              
                  <div class="col-md-9">


                    <div class="box" id="contact">
                        <h1>Frequently asked questions</h1>

                        <p class="lead">Are you curious about something? Do you have some kind of problem with our BOUQUETS?</p>
                        <p>Please feel free to contact us, our customer service center is working for you 24/7.</p>

                        <hr>

                        <div class="panel-group" id="accordion">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#faq1">

						1. What to do if I have still not received the order?

					    </a>

					</h4>
                                </div>
                                <div id="faq1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>You would do nothing because that is a web site for a jsp project , but i will recommend you this steps </p>
                                        <ul>
                                            <li>Don't apply for ITI.</li>
                                            <li>Never Think at applying to ITI.</li>
                                            <li>Kill yourself before applying to ITI.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">

						2. What is the life time for the bouquets?

					    </a>

					</h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       It will die once it arrives you.
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->


                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">

						3. How can i get offers?

					    </a>

					</h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        By not entering our web site.
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                        </div>
                        <!-- /.panel-group -->


                    </div>


                </div>

                
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>

<%@include file="footer.jsp" %>