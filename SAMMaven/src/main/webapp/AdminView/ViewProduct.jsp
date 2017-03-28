
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../includes/header.jsp" />
<jsp:include page="/ViewProductServlet?ProductID=${param.ID}"></jsp:include>
<jsp:include page="../ListFlowerServlet?update=true&ProductID=${param.ID}"></jsp:include>
    <!-- page content -->
    <div class="right_col" >

        <div class="col-md-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Update Bouquet <small>Enter your Bouquet details</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>


                <br />
                <form class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/UpdateProductServlet">
                <div class="x_content">
                    <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback" hidden="hidden">
                        <input type="text" class="form-control has-feedback-left" name="id" placeholder="Bouquet Name" required="true" value="${product.id}" hidden="true" tabindex="0">
                        <span class="fa fa-gift form-control-feedback left" aria-hidden="true"></span>
                    </div>
                    <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control has-feedback-left" id="name" name="name" placeholder="Bouquet Name" required="true" value="${product.name}" tabindex="1" onblur="checkProductName()">
                        <span class="fa fa-gift form-control-feedback left" aria-hidden="true"></span>
                    </div>
                    <div  class="col-md-2 col-sm-6 col-xs-12 form-group has-feedback">
                        <label id="state" style="font-size: 18px;"></label> 
                    </div>
                    <div class="col-md-2 col-sm-12 col-xs-12 form-group has-feedback" style="position: relative; float: right; cursor: pointer;">

                        <img id="pro_img" src="<c:out value="..\\"></c:out>${product.images.get(0).url}" width="150" height="140" alt="Your photo" tabindex="8">
                            <input type="file" name="file" id="upload_img" multiple="true" onchange="viewImage(this)" tabindex="8">
                        </div>
                        <div class="col-md-3 col-sm-12 col-xs-12 form-group has-feedback">
                            <input type="number" class="form-control" name="price" value="${product.price}" placeholder="Price" required="true" tabindex="2">
                        <span class="fa fa-money form-control-feedback right" aria-hidden="true"></span>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12 form-group has-feedback">
                        <input type="number" class="form-control" name="quantity" value="${product.quantity}" placeholder="Quantity" required="true" tabindex="3">
                        <span class="fa fa-stack-exchange form-control-feedback right" aria-hidden="true"></span>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12 form-group has-feedback">
                        <input type="number" class="form-control " value="${product.rating}" name="rating" placeholder="Rating" max="10" min="1" tabindex="4">
                        <span class="fa fa-star-half-o form-control-feedback right" aria-hidden="true"></span>
                    </div>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                        <textarea class="form-control" placeholder="Write The discription of your product here" name="description" tabindex="5">${product.description}</textarea>
                    </div>
                    <div class="col-md-5 col-sm-9 col-xs-12 form-group has-feedback" >
                        <div class="ln_solid"></div>
                        <label>Flowers:</label>
                        <select class="select2_group form-control" name="flowerObtained" tabindex="6" onchange="populateFlowers()">
                            <option value="first" disabled="disabled" selected="selected">Select Flower</option>
                            <optgroup label="Flowers">
                                <c:forEach var="flower" items="${flowers}">
                                    <option> <c:out value="${flower.name}"></c:out></option>
                                </c:forEach>

                        </select>
                        </optgroup>
                    </div>

                    <div class="col-md-5 col-sm-9 col-xs-12 form-group" >
                        <div class="ln_solid"></div>
                        <label>Chosen flowers:</label>
                        <div id="chosenDiv">
                            <c:forEach var="flower" items="${product.flowers}">
                                <div class="alert alert-success alert-dismissible fade in" id="parent0" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="removeOption();"><span aria-hidden="true">x</span></button>
                                    <input id="chosenItem"  readonly="true" name="bouqet" type="text" value="${flower.name}" style="background: transparent; border: none;"></div>
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
</div>
<!-- /page content -->
<jsp:include page="../includes/footer.jsp" />