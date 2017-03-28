<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../includes/header.jsp" />
<jsp:include page="../ListProductServlet"></jsp:include>
<jsp:include page="../ListClientServlet"></jsp:include>
<jsp:include page="../ListFlowerServlet"></jsp:include>
<jsp:include page="../ListCategoryServlet"></jsp:include>
    <!-- page content -->
    <div class="right_col" role="main">
        <!-- top tiles -->
        <div class="row tile_count">

            <div class="row top_tiles">
                <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="tile-stats">
                        <div class="icon"><i class="fa fa-gift"></i></div>
                        <div class="count">${products.size()}</div>
                    <h3>Total Bouquets</h3>
                    <p>Your Bouquets in the system</p>
                </div>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <div class="icon"><i class="fa fa-leaf"></i></div>
                    <div class="count">${flowers.size()}</div>
                    <h3>Total Flowers</h3>
                    <p>Your Flowers in the system</p>
                </div>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <div class="icon"><i class="fa fa-check-square-o"></i></div>
                    <div class="count">${categories.size()}</div>
                    <h3>Total Categories</h3>
                    <p>Saved Categories in the system</p>
                </div>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                    <div class="icon"><i class="fa fa-users"></i></div>
                    <div class="count">${allClients.size()}</div>
                    <h3>Total Clients</h3>
                    <p>Registered Clients in the system</p>
                </div>
            </div>

        </div>

    </div>
    <!-- /top tiles -->


    <br />
    <div hidden="true">
        <select id="obtainedCats">
            <c:forEach var="item" items="${categories}">
                <option id="catName">${item.name}</option>
            </c:forEach>
        </select>
        <select id="obtainedCatsNo">
            <c:forEach var="item" items="${categories}">
                <option id="catName">${item.productList.size()}</option>
            </c:forEach>
        </select>
    </div>



    <div class="row">

        <div id="echart_pie" style="height:450px;"></div>

    </div>

</div>
<!-- /page content -->

<jsp:include page="../includes/footer.jsp" />
