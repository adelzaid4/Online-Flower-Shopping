<jsp:include page="../includes/header.jsp" />
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/ViewOrderDetailsServlet?ID=${param.ID}&clientid=${sessionScope.client.id}"></jsp:include>

    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>View ${sessionScope.client.fname}'s orders <small> all details</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_panel">
                        <h2>View Order Details</h2>
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                                <tr>

                                    <th>Order ID</th>
                                    <th>product</th>
                                    <th>Quantity</th>

                                </tr>
                            </thead>


                            <tbody>


                                <c:forEach var="orderd" items="${ordersDetails}">
                                    <tr>
                                        <td> <c:out value="${orderd.orderId}"></c:out></td>
                                        <td><c:out value="${orderd.pname}"></c:out></td>
                                        <td><c:out value="${orderd.quantity}"></c:out></td>
                                        </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="x_panel">
                        <h2>View Order Extras Details</h2>
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                                <tr>

                                    <th>Order ID</th>
                                    <th>Extra Item</th>
                                    <th>Quantity</th>

                                </tr>
                            </thead>


                            <tbody>


                                <c:forEach var="extra" items="${extras}">
                                    <tr>
                                        <td> <c:out value="${extra.orderId}"></c:out></td>
                                        <td><c:out value="${extra.eName}"></c:out></td>
                                        <td><c:out value="${extra.quantity}"></c:out></td>
                                        </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>


<!-- /page content -->
<jsp:include page="../includes/footer.jsp" />