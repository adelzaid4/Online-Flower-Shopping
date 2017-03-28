<%-- 
    Document   : index
    Created on : Mar 12, 2017, 6:03:20 PM
    Author     : Sheko
--%>

<%@include file="header.jsp" %>
<jsp:include  page="HomeServlet" />

<div id="all">
    <div id="content">
        <div class="container">
            <div class="col-md-12">
                <div id="main-slider">
                    <div class="item">
                        <img src="img/11.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="img/12.jpg" alt="">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="img/13.jpg" alt="">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="img/14.jpg" alt="">
                    </div>
                </div>
                <!-- /#main-slider -->
            </div>
        </div>

        <!-- *** ADVANTAGES HOMEPAGE ***
_________________________________________________________ -->
        <div id="advantages">
            <div class="container">
                <div class="same-height-row">
                    <div class="col-sm-4">
                        <div class="box same-height clickable">
                            <div class="icon"><i class="fa fa-heart"></i>
                            </div>

                            <h3><a href="#">We love our customers</a></h3>
                            <p>We are known to provide best possible Flowers ever</p>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="box same-height clickable">
                            <div class="icon"><i class="fa fa-tags"></i>
                            </div>

                            <h3><a href="#">Best prices</a></h3>
                            <p>You can check that the height of the boxes adjust when longer text like this one is used in one of them.</p>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="box same-height clickable">
                            <div class="icon"><i class="fa fa-thumbs-up"></i>
                            </div>

                            <h3><a href="#">100% satisfaction guaranteed</a></h3>
                            <p>Free returns on everything for 3 months.</p>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#advantages -->

        <!-- *** ADVANTAGES END *** -->

        <div id="hot">

            <div class="box">
                <div class="container">
                    <div class="col-md-12">
                        <h2><a href="HighRatedBouquets.jsp" style="text-decoration: none;" title="show all bouquets"> High Rated</a></h2>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="product-slider">
                    <c:forEach items="${requestScope.highRated}" var="highrated" end="6">
                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="ShowDetails?b=${highrated.id}">
                                                <img src="${highrated.images.get(0).url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="ShowDetails?b=${highrated.id}">
                                                <img src="${highrated.images.get(0).url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="ribbon sale">
                                        <div class="theribbon">BEST</div>
                                        <div class="ribbon-background"></div>
                                    </div>
                                    <!-- /.ribbon -->

                                    <div class="ribbon new">
                                        <!--                                        <div class="theribbon">NEW</div>
                                                                                <div class="ribbon-background"></div>-->
                                    </div>
                                </div>
                                <a href="ShowDetails?b=${highrated.id}" class="invisible">
                                    <img src="assets/img/bouques/Alstroemeria-AnyThing For You.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="ShowDetails?b=${highrated.id}">${highrated.name}</a></h3>
                                    <p class="price"> $ ${highrated.price}</p>
<!--                                    <strong><a class="item_add" href="cartServlet?id=${highrated.id}"  </p>-->
                                    <p class="buttons">
                                        <a href="ShowDetails?b=${highrated.id}" class="btn btn-default">View detail</a>

                                        <c:if test="${highrated.quantity > 0}">
                                            <a class="btn btn-primary" onclick="addToCart(${highrated.id})" ><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </c:if>
                                        <c:if test="${highrated.quantity == 0}">
                                            <a class="btn btn-warning disabled" ><i class="fa fa-outdent"></i>Out of stock</a>
                                        </c:if>
                                    </p>
                                </div>

                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                    </c:forEach>
                </div>
                <!-- /.product-slider -->
            </div>
            <!-- /.container -->

        </div>

        <!-- *** HOT PRODUCT SLIDESHOW ***
_________________________________________________________ -->

        <!-- /#hot -->

        <!-- ***Bouquets END *** -->
        <!-- *** Flower Start *** -->
        <div id="hot">
            <div class="box">
                <div class="container">
                    <div class="col-md-12">
                        <h2><a href="AllFlowers.jsp" style="text-decoration: none;" >Flowers</a></h2>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="product-slider">
                    <c:forEach items="${requestScope.flowers}" var="flower" end="6">
                        <div class="item">
                            <div class="product" >
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="flowerBouquests?f=${flower.id}&n=${flower.name}">
                                                <img src="${flower.image.url}" alt="" class="img-responsive" >
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="flowerBouquests?f=${flower.id}&n=${flower.name}">
                                                <img src="${flower.image.url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="flowerBouquests?f=${flower.id}&n=${flower.name}" class="invisible">
                                    <img src="${flower.image.url}" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="flowerBouquests?f=${flower.id}&n=${flower.name}">${flower.name}</a></h3>
                                    <p class="price">${flower.country}</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.flower -->
                        </div>

                    </c:forEach>
                </div>
                <!-- /.flower-slider -->
            </div>
            <!-- /.container -->

        </div>

        <!-- *** BLOG HOMEPAGE ***
_________________________________________________________ -->

        <div id="hot">

            <div class="box">
                <div class="container">
                    <div class="col-md-12">
                        <h2><a href="AllBouquets.jsp" style="text-decoration: none;" title="show all bouquets"> Bouquets</a></h2>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="product-slider">
                    <c:forEach items="${requestScope.products}" var="product" end="6">
                        <div class="item">
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
                                    <p class="price"> $ ${product.price}</p>
<!--                                    <strong><a class="item_add" href="cartServlet?id=${product.id}"  </p>-->
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
                </div>
                <!-- /.product-slider -->
            </div>
            <!-- /.container -->

        </div>


    </div>
    <!-- /#content -->

    <%@include file="footer.jsp" %>

    <c:choose>
        <c:when test="${param.fail=='true'}">
            <h3> <c:out value="${param.password}"/></h3>
            <script>
                new PNotify({
                    title: 'Sorry',
                    text: 'Your email or password are wrong!',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            </script>
        </c:when>

        <c:when test="${param.loggedin=='true'}">
            <h3> <c:out value="${param.loggedin}"/></h3>
            <script>
                new PNotify({
                    title: 'Sorry',
                    text: 'You are already logged in somewhere else, please sign out first to login again! ',
                    type: 'error',
                    styling: 'bootstrap3'
                });
            </script>
        </c:when>

    </c:choose>