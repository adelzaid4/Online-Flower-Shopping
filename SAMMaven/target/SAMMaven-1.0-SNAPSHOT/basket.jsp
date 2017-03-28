<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include  page="CartServlet" ></jsp:include>
<jsp:include  page="HomeServlet" ></jsp:include>

<%@include file="header.jsp" %>

    <body onload="basketOnLoad()">
    

        <div id="all">

            <div id="content">
                <div class="container">

                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="index.jsp">Home</a>
                            </li>
                            <li>Shopping cart</li>
                        </ul>
                    </div>
                    <%@include  file="sideBar.jsp" %>
                    <div class="col-md-9" id="basket">
                        <div class="box">

                            <form method="post" action="checkout.jsp">
                                <h1>Shopping cart</h1>
                                <div id="invalidQuantity"></div>
                                <div class="table-responsive">
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
                                        <tbody id='cartData'>
                                            <%--<c:forEach items="${userCart.products}"  var="product">
                                                <tr>
                                                <td>
                                                    <a href="#">
                                                        <img src="img/basketsquare.jpg" alt="Black Blouse Armani">
                                                    </a>
                                                </td>
                                                <td><a href="#"><c:out value="${product.name}"/></a>
                                                </td>
                                                <td>
                                                    <input type="number" value="1" min="1" max="${product.quantity}" onchange="calcProductPrice(${product.id}, this)"  class="form-control">
                                                </td>
                                                <td><div id="price${product.id}"> <c:out value="${product.price}.00"/></td>
                                                <td>$0.00</td>
                                                <td><div id="ProducttotalPrice${product.id}" name="ProducttotalPrice"><c:out value="${product.price}"/></td>
                                                <td><a><div  id="test1" class="fa fa-trash-o"  onclick="remove(this,'ProducttotalPrice${product.id}')"  style="cursor: pointer;" ></div></a>
                                                </td>
                                            </tr>
                                            </c:forEach>--%>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">Total</th>
                                                <th colspan="2"><div id="totalPrice"></div></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>
                                <!-- /.table-responsive -->

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="AllBouquets.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i> Continue shopping</a>
                                    </div>
                                    <div class="pull-right">
                                        <!--<button class="btn btn-default"><i class="fa fa-refresh"></i> Update basket</button>-->
                                        <button type="submit" id="checkoutButton" class="btn btn-primary" disabled="true">Proceed to checkout <i class="fa fa-chevron-right"></i>
                                        </button>  
                                    </div>
                                </div>

                            </form>

                        </div>
                        <!-- /.box -->


                       <div class="row same-height-row">
                    <div class="col-md-3 col-sm-6">
                        <div class="box same-height">
                            <h3>Bouquets With the same type of  Flower</h3>
                            <img src="assets/img/bouques/Alstroemeria-AnyThing For You.jpg" alt="" class="img-responsive invisible" >
                        </div>
                    </div>
                    <c:forEach items="${requestScope.products}" var="product" end="9" begin="7">
                        <div class="col-md-3 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="ShowDetails?b=${product.id}">
                                                <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="ShowDetails?b=${product.id}">
                                                <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="ShowDetails?b=${product.id}" class="invisible">
                                    <img src="assets/img/bouques/Alstroemeria-AnyThing For You.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="ShowDetails?b=${product.id}">${product.name}</a></h3>
                                    <p class="price">$ ${product.price}</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>
                    </c:forEach>
                </div>

                    </div>
                    <!-- /.col-md-9 -->

<!--                    <div class="col-md-3">
                        <div class="box" id="order-summary">
                            <div class="box-header">
                                <h3>Order summary</h3>
                            </div>
                            <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>Order subtotal</td>
                                            <th>$446.00</th>
                                        </tr>
                                        <tr>
                                            <td>Shipping and handling</td>
                                            <th>$10.00</th>
                                        </tr>
                                        <tr>
                                            <td>Tax</td>
                                            <th>$0.00</th>
                                        </tr>
                                        <tr class="total">
                                            <td>Total</td>
                                            <th>$456.00</th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>


                        <div class="box">
                            <div class="box-header">
                                <h4>Coupon code</h4>
                            </div>
                            <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                            <form>
                                <div class="input-group">

                                    <input type="text" class="form-control">

                                    <span class="input-group-btn">

                                        <button class="btn btn-primary" type="button"><i class="fa fa-gift"></i></button>

                                    </span>
                                </div>
                                 /input-group 
                            </form>
                        </div>

                    </div>-->
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.container -->
            </div>
            <!-- /#content -->

            <jsp:include page="footer.jsp"></jsp:include>
</body>