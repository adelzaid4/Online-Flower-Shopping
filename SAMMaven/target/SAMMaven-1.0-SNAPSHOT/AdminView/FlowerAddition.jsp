
<jsp:include page="../includes/header.jsp" />

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../ListFlowerServlet"></jsp:include>

    <link href="../assets/css/custom.min.css" rel="stylesheet">
    <!-- page content -->
    <div class="right_col" >
        <div class="col-md-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Add Flower <small>Enter your Flower details</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <br />
                    <form  class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/AddFlowerServlet">

                    <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback">
                        <input type="text" class="form-control has-feedback-left" id="name" name="name" placeholder="Flower Name" required="true" onblur="checkFlowerName()">
                        <span class="fa fa-gift form-control-feedback left" aria-hidden="true"></span>
                    </div>

                    <div  class="col-md-2 col-sm-6 col-xs-12 form-group has-feedback">
                        <label id="state" style="font-size: 18px;"></label> 
                    </div>
                    <div class="col-md-10 col-sm-9 col-xs-12 form-group has-feedback" >

                        <label>Country:</label>
                        <select class="select2_group form-control" name="country"  >
                            <option name="country" disabled="true">Choose country</option>
                            <option name="country" value="eg"> Egypt</option>
                            <option name="country" value="en"> England</option>
                            <option name="country" value="ger"> Germany</option>
                            <option name="country" value="usa"> USA</option>

                        </select>
                    </div>

            </div>

            <div class="ln_solid"></div>
            <div class="form-group">
                <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                    <button id="cancel" type="button" class="btn btn-danger"  tabindex="10">Cancel</button>
                    <button class="btn btn-success" type="reset" tabindex="11">Reset Data</button>
                    <button type="submit" class="btn btn-primary" tabindex="12">Add Flower</button>
                </div>
            </div>

            </form>
        </div>
    </div>
</div>
</div>
<!-- /page content -->

<jsp:include page="../includes/footer.jsp" />
