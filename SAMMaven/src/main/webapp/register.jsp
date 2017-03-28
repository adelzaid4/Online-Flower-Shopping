<%-- 
    Document   : register
    Created on : Mar 13, 2017, 4:16:38 PM
    Author     : Sheko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="js/registerPage.js" type="text/javascript"></script>
<jsp:include page="InterestServlet"></jsp:include>

<%@include file="header.jsp" %>
<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">

                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>New account / Sign in</li>
                </ul>

            </div>
            <%@include file="sideBar.jsp" %>
            <div class="col-md-9 center" >
                <form action="RegisterServlet" method="post">

                    <div class="box">
                        <h1>New account</h1>
                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contactus.jsp">contact us</a>, our customer service center is working for you 24/7.</p>
                        <hr>
                        <div class="form-group">
                            <label for="name">First Name<sup>*</sup></label>
                            <input type="text" class="form-control" id="name" name="fname" maxlength="50" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Last Name<sup>*</sup></label>
                            <input type="text" class="form-control" id="name" name="lname" maxlength="50" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email<sup>*</sup></label>
                            <input type="email" class="form-control" id="email"  name="mail" maxlength="100" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password<sup>*</sup></label>
                            <input type="password" class="form-control" id="password" name="password" maxlength="50" onblur="setConfirmPassword()" required>
                        </div>
                        <div class="form-group">
                            <label for="password">confirm Password<sup>*</sup></label>
                            <input type="password" class="form-control" id="Confirmpassword" maxlength="50" onblur="viewpassword()" required>
                        </div>
                        <div class="form-group">
                            <label  for="birthday">Date of Birth <sup>*</sup></label>
                            <input type="date"  name="birthday"  class="form-control"   required>
                        </div>
                    </div>

                    <div class="well" style="background-color: white;">
                        <h3>Your Contact Details</h3>
                        <div class="form-group">
                            <label  for="job">Job <sup>*</sup></label>
                            <input type="text" name="job" placeholder="Job"class="form-control" maxlength="50"  required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="phone">Phone <sup>*</sup></label>
                            <input type="tel" name="phone" placeholder="Phone" class="form-control"  maxlength="50" pattern="^01[0-2]\d{8}$" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="address">Address <sup>*</sup></label>
                            <input type="text" name="address" placeholder="Address" class="form-control" maxlength="50"  required>
                        </div>
                    </div>

                    <div class="well" style="background-color: white;">
                        <h3>Your Billing Data</h3>
                        <div class="form-group">
                            <label class="control-label"  for="cridetlimit">Credit Limit <sup>*</sup></label>

                            <input type="number" name="cridetlimit" max="9999999999999999999999999999999999999999" class="form-control" placeholder="Credit Limit" required>
                        </div>
                    </div>

                    <div class="well" style="background-color: white;">
                        <h3 >Your Interests</h3>
                        <!--<div class="col-md-5 col-sm-9 col-xs-12 form-group has-feedback" >-->
                            <div class="ln_solid"></div>
                            <select class="select2_group form-control" name="interestsObtained" tabindex="6" onchange="populateInterets()">
                                <option value="first" disabled="disabled" selected="selected">Select Interest</option>
                                <c:forEach var="inte" items="${requestScope.interests}">
                                    <option><c:out value="${inte.name}"></c:out></option>
                                </c:forEach>
                            </select>
                        <!--</div>-->
                        <!--<div class="col-md-5 col-sm-9 col-xs-12 form-group" >-->
                        <br/><br/>
                            <div class="ln_solid"></div>
                            <label>Chosen Interests: </label>
                            <div id="chosenDiv">

                            </div>
                        <!--</div>-->
                    </div>

                    <div class="well" style="background-color: white;">
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


</div>
<!-- /#content -->




<%@include file="footer.jsp" %>




<c:choose>
    <c:when test="${param.fail==true}">
        <h3> <c:out value="${param.fail}"/></h3>
        <script>
            new PNotify({
                title: 'Sorry',
                text: 'Your Registration did not complete successfully! ',
                type: 'error',
                styling: 'bootstrap3'
            });
        </script>
    </c:when>
</c:choose>