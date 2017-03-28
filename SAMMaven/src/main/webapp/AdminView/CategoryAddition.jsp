
<jsp:include page="../includes/header.jsp" />

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../ListProductServlet"></jsp:include>

    <link href="../assets/css/custom.min.css" rel="stylesheet">
    <!-- page content -->

    <div id="main" class="right_col">

        <div class="col-md-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Add Category <small>Enter your Category details</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <br />
                    <form class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/AddCategoryServlet">

                    <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control has-feedback-left" id="name" name="name" placeholder="Category Name" required="true" tabindex="1" onblur="checkCategoryName()">
                        <span class="fa fa-bars form-control-feedback left" aria-hidden="true"></span>
                    </div>
                    <div  class="col-md-2 col-sm-6 col-xs-12 form-group has-feedback">
                        <label id="state" style="font-size: 18px;"></label> 
                    </div>
                    <div class="col-md-5 col-sm-9 col-xs-12 form-group has-feedback" >
                        <div class="ln_solid"></div>
                        <label>Bouquets:</label>
                        <select class="select2_group form-control" name="productsObtained" tabindex="6" onchange="populateProducts()">
                            <option value="first" disabled="disabled" selected="selected">Select Bouquet</option>
                            <optgroup label="Bouquets">
                                <c:forEach var="product" items="${products}">
                                    <option> <c:out value="${product.name}"></c:out></option>
                                </c:forEach>

                        </select>
                        </optgroup>
                    </div>
                    <div class="col-md-5 col-sm-9 col-xs-12 form-group" >
                        <div class="ln_solid"></div>
                        <label>Chosen Bouquets:</label>
                        <div id="chosenDiv" >

                        </div>
                    </div>

                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

                            <button id="cancel" type="button" class="btn btn-danger" tabindex="10">Cancel</button>
                            <button class="btn btn-success" type="reset" tabindex="11">Reset Data</button>
                            <button type="submit" class="btn btn-primary" tabindex="12">Add Category</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->

<jsp:include page="../includes/footer.jsp" />

<c:choose>
    <c:when test="${param.add==true}">
        <h3> <c:out value="${param.add}"/></h3>
        <script>
            new PNotify({title: 'Success',
                text: 'Your Category has been saved into the system',
                type: 'success',
                styling: 'bootstrap3'});
        </script>
    </c:when>
    <c:when test="${param.add==false}">
        <h3> <c:out value="${param.add}"/></h3>
        <script>
            new PNotify({
                title: 'Sorry',
                text: 'Your category has not been saved',
                type: 'error',
                styling: 'bootstrap3'
            });
        </script>
    </c:when>
</c:choose>