<%-- 
    Document   : checkout5-review
    Created on : Mar 19, 2017, 7:54:45 AM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<script src="js/checkOutReview.js" type="text/javascript"></script>
<body onload="getProductsDetails()">
    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>Checkout - Order Review </li>
                </ul>
            </div>

            <div class="col-md-9" id="checkout">
                <a href="checkout5-review.jsp"></a>

                <div class="box">
                    <form method="post" action="checkout5-review.jsp">
                        <h1>Checkout</h1>
                        <ul class="nav nav-pills nav-justified">
                            <li ><a href="checkout.jsp"><i class="fa fa-map-marker"></i><br>Address</a>
                            </li>
                            <li ><a href="checkout2.jsp"><i class="fa fa-envelope"></i><br>Delivery Message</a>
                            </li>
                            <li ><a href="checkout3-Extras.jsp"><i class="fa fa-envelope"></i><br>Extras</a>
                            </li>
                            <li ><a href="checkout4-Offers.jsp"><i class="fa fa-money"></i><br>Payment Offers!</a>
                            </li>
                            <li class="active"><a href="checkout5-review.jsp"><i class="fa fa-eye"></i><br>Order Review</a>
                            </li>
                        </ul>

                        <div class="content">
                            <br/>
                            <br/>
                            <div class="table-responsive" >
                                <div id="checkouterror"></div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Product</th>
                                            <th>Quantity</th>
                                            <th>Unit price</th>
                                            <th>Discount</th>
                                            <th colspan="2">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody id="orderReviewTable">
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="5">Total</th>
                                            <th colspan="2"><div id="totalPrice"></div></th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>

                        <div class="box-footer">
                            <!--                        <div class="pull-left">
                                                        <a href="checkout3.html" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to Payment method</a>
                                                    </div>-->
                            <div class="pull-right">
                                <button type="button" onclick="checkoutQuantity()" id="buyButton" class="btn btn-primary">Place an order<i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!-- /.box -->

<div class="col-md-3">

            <div class="box" id="order-summary">
                <div class="box-header">
                    <h3>Order summary</h3>
                </div>
                <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>Bouquets total</td>
                                <th id="bouquetsTotal"></th>
                            </tr>
                            <tr>
                                <td>Extras Total</td>
                                <th id="ExtrasTotal"></th>
                            </tr>
                            <tr>
                                <td >Total</td>
                                <th id="totalBefore"></th>
                            </tr>
                            <tr>
                                <td>Discount</td>
                                <th id="DiscountTotal"></th>
                            </tr>
                            
                            <tr class="total" >
                                <td>Total after discount</td>
                                <th id="TotalReceipt"></th>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>
        </div>
        <!-- /.col-md-9 -->

        
        
        <!-- /.col-md-3 -->
        <form hidden="true"  action="index.jsp" method="GET">
            <input type="submit" id="goToIndexPage"/>
        </form>
    </div>
    <!-- /.container -->
</div>
<%@include file="footer.jsp" %>
</body>

