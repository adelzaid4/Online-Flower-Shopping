<%-- 
    Document   : AllBouquets
    Created on : Mar 13, 2017, 6:31:40 AM
    Author     : alaa
--%>

<%@include file="header.jsp" %>
<jsp:include  page="HomeServlet" />


<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>All Bouquets</li>
                </ul>
            </div>

            <%@include file="sideBar.jsp" %>

            <div class="col-md-9">
                <div class="box">
                    <h1>Bouquets</h1>
                    <p>Every flower is a soul blossoming in nature.</p>
                </div>



                <div class="row products">
                    <c:forEach items="${requestScope.products}" var="product" >
                        <div class="col-md-4 col-sm-6">
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
                                    <p class="buttons">
                                        <a href="ShowDetails?b=${product.id}" class="btn btn-default">View detail</a>
                                        <c:if test="${product.quantity > 0}">
                                            <a class="btn btn-primary" onclick="addToCart(${product.id})" ><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </c:if>
                                        <c:if test="${product.quantity == 0}">
                                            <a class="btn btn-warning disabled" ><i class="fa fa-outdent"></i>Out of stock</a>
                                        </c:if>
                                    </p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>
                    </c:forEach>
                    <!-- /.col-md-4 -->
                </div>
                <!-- /.products -->




            </div>
            <!-- /.col-md-9 -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->


    <%@include file="footer.jsp" %>
