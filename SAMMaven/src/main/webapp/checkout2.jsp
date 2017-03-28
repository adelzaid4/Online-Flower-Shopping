<%-- 
    Document   : checkout2
    Created on : Mar 19, 2017, 7:06:15 AM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : checkout
    Created on : Mar 19, 2017, 6:54:10 AM
    Author     : alaa
--%>


<%@include file="header.jsp" %>

<div id="content">
    <div class="container">

        <div class="col-md-12">
            <ul class="breadcrumb">
                <li><a href="index.jsp">Home</a>
                </li>
                <li>Checkout - Delivery Message </li>
            </ul>
            <div class="col-md-1"></div>

            <div class="col-md-10" id="checkout">

                <div class="box">
                    <form method="get" action="checkout3-Extras.jsp">
                        <h1>Checkout</h1>
                        <ul class="nav nav-pills nav-justified">
                            <li ><a href="checkout.jsp"><i class="fa fa-map-marker"></i><br>Address</a>
                            </li>
                            <li class="active"><a href="checkout2.jsp"><i class="fa fa-envelope"></i><br>Delivery Message</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-envelope"></i><br>Extras</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-money"></i><br>Payment Offers!</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-eye"></i><br>Order Review</a>
                            </li>
                        </ul>

                        <div class="content">
                            <div class="row"></div>
                            <div class="row"></div>
                            <center>
                                <div class="row center">
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-10">
                                        <div class="form-group">
                                            <label for="firstname">Say Somthing Nice To Write on the Bouquet : </label>
                                            <br/>
                                            <textarea  rows="10" type="text" class="form-control" id="firstname"></textarea>
                                        </div>
                                    </div>

                                </div>
                            </center>
                            <div class="row"></div>
                            <div class="row"></div>

                        </div>

                        <div class="box-footer">
                            <div class="pull-left">
                                <a href="basket.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                            </div>
                            <div class="pull-right">
                                <button type="submit" class="btn btn-primary">Continue to Extras<i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.box -->


            </div>
            <!-- /.col-md-9 -->


            <!-- /.col-md-3 -->
        </div>
    </div>
    <!-- /.container -->
</div>

<%@include file="footer.jsp" %>
