<%-- 
    Document   : AllFlowers
    Created on : Mar 14, 2017, 8:33:01 PM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<jsp:include  page="HomeServlet" />

<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>All Flowers</li>
                </ul>
            </div>

            <%@include file="sideBar.jsp" %>

            <div class="col-md-9">
                <div class="box">
                    <h1>Bouquets</h1>
                    <p>Every flower is a soul blossoming in nature.</p>
                </div>

              

                <div class="row products">
                    <c:forEach items="${requestScope.flowers}" var="flower" >
                        <div class="col-md-3 col-sm-6">
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
                                    <img src="assets/img/flowers/Rose.jpg" alt="" class="img-responsive">
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
               


            </div>
            <!-- /.col-md-9 -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->



    <%@include file="footer.jsp" %>