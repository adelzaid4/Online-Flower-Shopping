
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../includes/header.jsp" />
<jsp:include page="/ViewCategoryServlet?CategoryID=${param.ID}"></jsp:include>
<jsp:include page="../ListProductServlet?update=true&CategoryID=${param.ID}"></jsp:include>

    <!-- page content -->
    <div class="right_col" >

        <div class="col-md-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Update Category <small>Enter your Category details</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <form class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/UpdateCategoryServlet">
                <div class="x_content">
                    <br />
                    <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback" hidden="hidden">
                        <input type="text" class="form-control has-feedback-left" name="id" placeholder="Bouquet Name" required="true" value="${category.id}" hidden="true" tabindex="0">
                        <span class="fa fa-gift form-control-feedback left" aria-hidden="true"></span>
                    </div>
                    <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback" >
                        <input type="text" class="form-control has-feedback-left" id="name" name="name" placeholder="Category Name" required="true" value="${category.name}" hidden="true" tabindex="0" onblur="checkCategoryName()">
                        <span class="fa fa-gift form-control-feedback left" aria-hidden="true"></span>
                    </div>
                    <div  class="col-md-2 col-sm-6 col-xs-12 form-group has-feedback">
                        <label id="state" style="font-size: 18px;"></label> 
                    </div>
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
                    <div id="chosenDiv">
                        <c:forEach var="cat" items="${category.productList}" varStatus="loop">
                            <div class="alert alert-success alert-dismissible fade in" id="parent${loop.index}" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="removeProductOption('parent${loop.index}', '${cat.name}');"><span aria-hidden="true">x</span></button>
                                <input id="chosenItem"  readonly="true" name="bouqet" type="text" value="${cat.name}" style="background: transparent; border: none;"></div>
                            </c:forEach>
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
                        <button id="cancel" type="button" class="btn btn-danger"  tabindex="10">Cancel</button>
                        <button class="btn btn-success" type="reset" tabindex="11">Reset Data</button>
                        <button type="submit" class="btn btn-primary" tabindex="12">Update Bouquet</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<!-- /page content -->
<jsp:include page="../includes/footer.jsp" />
