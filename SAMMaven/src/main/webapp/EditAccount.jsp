<%-- 
    Document   : EditAccount
    Created on : Mar 14, 2017, 9:10:06 PM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="js/registerPage.js" type="text/javascript"></script>
<%@include file="header.jsp" %>
<jsp:include page="InterestServlet"></jsp:include>

<div id="all">
    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li><a href="Account.jsp">${sessionScope.user.fname}  ${sessionScope.user.lname}</a></li>
                    <li>Edit Profile</li>
                </ul>
            </div>

            <%@include file="sideBar.jsp" %>
            <div class="col-md-9">
                <div class="box">
                    <h1>${sessionScope.user.fname}  ${sessionScope.user.lname}</h1>
                    <p class="lead">Change your personal details or your password here.</p>
                    <p class="text-muted">Your data is important to help us improving the service of our products.</p>



                    <%--<c:out value="${sessionScope.PasswordDiv}" />--%>
                    <c:if test="${sessionScope.PasswordDiv}">
                        <h3>Change password</h3>
                        <form method="get" action="EditServlet" id="passwordForm" autocomplete="off">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="password_old">Old password</label>
                                        <input type="password" class="form-control" id="password_old"  value="" name="password" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="password_1">New password</label>
                                        <input  type="password" class="form-control" id="password" name="newpassword" onblur="setConfirmPassword()" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="password_2">Retype new password</label>
                                        <input type="password" class="form-control"  id="Confirmpassword" onblur="viewpassword()" required>
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->

                            <div class="col-sm-12 text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save new password</button>
                            </div>
                        </form>
                    </c:if>
                    <hr>


                    <form action="EditServlet" method="post">
                        <h3>Personal details</h3>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="company">Email</label>
                                    <input type="email" class="form-control" id="emaill"  name="mail" value="${sessionScope.user.mail}" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="street">Date Of Birth </label>
                                    <input type="date"  name="birthday" class="form-control" id="birthday" value="${sessionScope.user.birthday}" required>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="firstname">First Name</label>
                                    <input type="text" class="form-control" id="firstname"  name="fname" value="${sessionScope.user.fname}" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="lastname">Last Name</label>
                                    <input type="text" class="form-control" name="lname" value="${sessionScope.user.lname}" required>
                                </div>
                            </div>
                        </div>

                        <!-- /.row -->

                        <h3>Contact Data</h3>

                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="form-group">
                                    <label for="job">Job</label>
                                    <input type="text" class="form-control" name="job" id="job" value="${sessionScope.user.job}" required>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input type="tel" class="form-control" name="phone" id="phone" value="${sessionScope.user.phone}" required>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="form-group">
                                    <label for="state">Address</label>
                                    <input class="form-control" id="state"  name="address" value="${sessionScope.user.address}" required>
                                </div>
                            </div>
                        </div>

                        <h3>Billing Data</h3>
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="form-group">
                                    <label for="state">Credit Limit</label>
                                    <input class="form-control" id="state"  name="cridetlimit" value="${sessionScope.user.cridetlimit}" required>
                                </div>
                            </div>
                        </div>

                        <h3>Interests</h3>
                     
                        <div class="col-md-5 col-sm-9 col-xs-12 form-group has-feedback" >
                            <div class="ln_solid"></div>
                            <select class="select2_group form-control" name="interestsObtained" tabindex="6" onchange="populateInterets()">
                                <option value="first" disabled="disabled" selected="selected">Select Interest</option>
                                    <c:forEach var="inte" items="${requestScope.interests}">
                                        <option><c:out value="${inte.name}"></c:out></option>
                                    </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-5 col-sm-9 col-xs-12 form-group" >
                            <div class="ln_solid"></div>
                            <label>Chosen Interests: </label>
                            <div id="chosenDiv">
                                <c:forEach var="interest" items="${sessionScope.user.interests}">
                                    <div class="alert alert-success alert-dismissible fade in" id="parent0" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">x</span></button>
                                        <input id="chosenItem"  readonly="true" name="clientInterest" type="text" value="${interest.name}" style="background: transparent; border: none;"></div>
                                 </c:forEach>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-sm-12 text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save changes</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>

<c:choose>
    <c:when test="${param.password=='wrong'}">
        <h3> <c:out value="${param.password}"/></h3>
        <script>
            new PNotify({
                title: 'Sorry',
                text: 'Your Password is Wrong! ',
                type: 'error',
                styling: 'bootstrap3'
            });
        </script>
    </c:when>

    <c:when test="${param.update=='fail'}">
        <h3> <c:out value="${param.update}"/></h3>
        <script>
            new PNotify({
                title: 'Sorry',
                text: 'Your Edit did not complete successfully! ',
                type: 'error',
                styling: 'bootstrap3'
            });
        </script>
    </c:when>

</c:choose>