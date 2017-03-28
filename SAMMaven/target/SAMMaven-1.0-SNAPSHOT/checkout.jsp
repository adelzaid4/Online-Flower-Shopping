
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>

<div id="content">
    <div class="container">

        <div class="col-md-12">
            <ul class="breadcrumb">
                <li><a href="index.jsp">Home</a>
                </li>
                <li>Checkout - Address</li>
            </ul>

            <div class="col-md-1" ></div>

            <div class="col-md-10" id="checkout">

                <div class="box">
                    <form method="post" action="checkout2.jsp">
                        <h1>Checkout</h1>
                        <ul class="nav nav-pills nav-justified">
                            <li class="active"><a href="checkout.jsp"><i class="fa fa-map-marker"></i><br>Address</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-envelope"></i><br>Delivery Message</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-envelope"></i><br>Extras</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-money"></i><br>Payment Offers!</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-eye"></i><br>Order Review</a>
                            </li>
                        </ul>

                        <div class="content">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">Name of the Reciever : </label>
                                        <input type="text" class="form-control" id="firstname">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="company">Name of the Company : </label>
                                        <input type="text" class="form-control" id="company">
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="company">Address : </label>
                                        <input type="text" class="form-control" id="company">
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="phone">Telephone</label>
                                        <input type="text" class="form-control" id="phone">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email">
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>

                        <div class="box-footer">
                            <div class="pull-left">
                                <a href="basket.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                            </div>
                            <div class="pull-right">
                                <button type="submit" class="btn btn-primary">Continue to Delivery Message<i class="fa fa-chevron-right"></i>
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