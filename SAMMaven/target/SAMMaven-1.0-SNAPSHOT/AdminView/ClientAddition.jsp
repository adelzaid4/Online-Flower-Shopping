<jsp:include page="../includes/header.jsp" />


<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Add New Client <small>Enter Client details</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_panel">
                        <br />
                        <form class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/AddClientServlet">

                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left" name="fname" placeholder="First Name" required="true">
                                <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left" name="lname" placeholder="Last Name" required="true">
                                <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                            </div>

                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="email" class="form-control has-feedback-left" name="mail" placeholder="Email@Example.com" required="true">
                                <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="password" class="form-control has-feedback-left" name="password" id="password" placeholder="Password" required="true">
                                <span class="fa fa-lock form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="password" class="form-control has-feedback-left" name="password" id="confirmPassword" placeholder="Password" required="true" onblur="validatePassword()">
                                <span class="fa fa-lock form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input  type="text" onfocus="(this.type = 'date')" class="form-control has-feedback-left" name="birthday" placeholder="Birth Date"   max="2000-01-02" required="true">
                                <span class="fa fa-calendar form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left" name="job" placeholder="your job" required="true">
                                <span class="fa fa-briefcase form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="number" class="form-control has-feedback-left no-spin" name="phone" id="phone" placeholder="(01-111-111-111)" required="true" onblur="validateMobile()">
                                <span class="fa fa-phone-square form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 form-group has-feedback">
                                <input type="number" class="form-control has-feedback-left no-spin" name="cridetlimit" id="credit" placeholder="credit limit" required="true" >
                                <span class="fa fa-usd form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7">
                                <textarea class="form-control" placeholder="where do you live  .." name="address"></textarea>
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>

                            <div class="form-group">

                                <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">  <div class="ln_solid"></div>
                                    <button type="button" class="btn btn-danger">Cancel</button>
                                    <button class="btn btn-success" type="reset" >Reset Data</button>
                                    <button type="submit" class="btn btn-primary">Add new Client</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
<!-- /page content -->
<jsp:include page="../includes/footer.jsp" />