<jsp:include page="../includes/header.jsp" />
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/ViewClientServlet?ClientID=${param.ID}"></jsp:include>

    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>View Client  <small> all details</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_panel">
                            <br />
                            <form class="form-horizontal form-label-left input_mask" >

                                <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                    <input disabled="true" type="text" class="form-control has-feedback-left" name="fname" placeholder="First Name" required="true" value="${client.fname}">
                                <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input disabled="true" type="text" class="form-control has-feedback-left" name="lname" placeholder="Last Name" required="true" value="${client.lname}">
                                <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                            </div>

                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input  disabled="true" type="email" class="form-control has-feedback-left" name="mail" placeholder="Email@Example.com" required="true" value="${client.mail}">
                                <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                            </div>

                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input  disabled="true"  type="text" onfocus="(this.type = 'date')" class="form-control has-feedback-left" name="birthday" placeholder="Birth Date"   max="2000-01-02" required="true" value="${client.birthday}">
                                <span class="fa fa-calendar form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input disabled="true" type="text" class="form-control has-feedback-left" name="job" placeholder="your job" required="true" value="${client.job}">
                                <span class="fa fa-briefcase form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input  disabled="true" type="number" class="form-control has-feedback-left no-spin" name="phone" id="phone" placeholder="(01-111-111-111)" required="true" onblur="validateMobile()" value="${client.phone}">
                                <span class="fa fa-phone-square form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input  disabled="true" type="number" class="form-control has-feedback-left no-spin" name="cridetlimit" id="credit" placeholder="credit limit" required="true" value="${client.cridetlimit}">
                                <span class="fa fa-usd form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input  disabled="true" type="text" class="form-control has-feedback-left no-spin" name="cridetlimit" id="credit"  required="true" value="${client.address}">
                                <span class="fa fa-home form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>


                        </form>
                        <br>
                        <br>
                        <br>
                        <h2>Orders</h2>
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                                <tr>

                                    <th>ID</th>
                                    <th>order Date</th>
                                    <th>Price</th>

                                </tr>
                            </thead>


                            <tbody>


                                <c:forEach var="order" items="${orders}">
                                    <tr>
                                        <td> <c:out value="${order.ID}"></c:out></td>
                                        <td><c:out value="${order.stamp}"></c:out></td>
                                        <td><c:out value="${order.price}"></c:out></td>
                                            <td class=" last" onclick="location.href = 'ViewClientOrderDetails.jsp?ID=' + $(this).parents('tr').find('td:eq(0)').html()">
                                                <a class="btn btn-block" >
                                                    <i class="fa fa-pencil-square-o fa-lg"></i> View details</a> </td>
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