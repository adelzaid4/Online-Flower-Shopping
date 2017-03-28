<%-- 
    Document   : checkout3-Extras
    Created on : Mar 19, 2017, 7:54:00 AM
    Author     : alaa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<jsp:include page="ExtrasServlet"></jsp:include>
<script src="js/Extra.js" type="text/javascript"></script>
    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>Checkout - Extras </li>
                </ul>
                <div class="col-md-1" ></div>

            <div class="col-md-10" id="checkout">
                <div class="box">
                    <form method="post" action="checkout4-Offers.jsp">
                        <h1>Checkout</h1>
                        <ul class="nav nav-pills nav-justified">
                            <li ><a href="checkout.jsp"><i class="fa fa-map-marker"></i><br>Address</a>
                            </li>
                            <li ><a href="checkout2.jsp"><i class="fa fa-envelope"></i><br>Delivery Message</a>
                            </li>
                            <li class="active"><a href="checkout3-Extras.jsp"><i class="fa fa-envelope"></i><br>Extras</a>
                            </li>
                            <li class="disabled"><a ><i class="fa fa-money"></i><br>Payment Offers!</a>
                            </li>
                            <li class="disabled"><a><i class="fa fa-eye"></i><br>Order Review</a>
                            </li>
                        </ul>

                        <div class="content">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th >Extras</th>
                                            <th>Name</th>
                                            <th>Quantity</th>
                                            <th>Unit price</th>
                                            <th colspan="2">Total</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody id='cartData'>
                                    <c:forEach items="${requestScope.extras}" var="extra">
                                        <tr>
                                            <td >
                                                <a>
                                                    <img src="${extra.image.url}" alt="Extra Image" class="img-container">
                                                </a>
                                            </td>
                                            <td>
                                                <a><c:out value="${extra.name}"/></a>
                                            </td>
                                            <td>
                                                <input type="number" value="0" min="0" max="${extra.quantity}" onchange="calcExtraPrice(${extra.id}, this)"  class="form-control">
                                            </td>
                                            <td><div id="price${extra.id}"> <c:out value="${extra.price}"/></td>
                                            <!--<td>$0.00</td>-->
                                            <td><div id="ExtratotalPrice${extra.id}" name="ExtratotalPrice">0.00</div></td>
                                        </tr>
                                    </c:forEach>
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
                        <div class="pull-left">
                            <a href="basket.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                        </div>
                        <div class="pull-right">
                            <button type="submit" class="btn btn-primary">Continue to Todays Offers!<i class="fa fa-chevron-right"></i>
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

