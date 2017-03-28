<%-- 
    Document   : Account
    Created on : Mar 14, 2017, 11:12:24 AM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">

                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>${sessionScope.user.fname}  ${sessionScope.user.lname}</li>
                </ul>

            </div>

            <%@include file="sideBar.jsp" %>
            <div class="col-md-9">
                <div class="box">
                    <h1>${sessionScope.user.fname}  ${sessionScope.user.lname}</h1>
                    <p class="lead">Here is Your Profile.</p>
                    <p class="text-muted">Your data is important to help us improving the service of our products.</p>
                    <div class="col-sm-12 text-center">
                        <a class="btn btn-primary" href="EditAccount.jsp" ><i class="fa fa-edit"></i> Edit Profile</a>
                    </div>
                    <hr>


                    <form>
                        <h3>Personal details</h3>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>First Name </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.fname}</p>
                                    </div>
                                </div>    
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>Last Name </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.lname}</p>
                                    </div>
                                </div>    
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>Email </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.mail}</p>
                                    </div>
                                </div>   
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>Date Of Birth </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.birthday}</p>
                                    </div>
                                </div>   
                            </div>
                        </div>
                        <!-- /.row -->

                        <h3>Contact Data</h3>

                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>Job </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.job}</p>
                                    </div>
                                </div>                                  
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>Phone </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.phone}</p>
                                    </div>
                                </div>   
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="row">
                                    <div class="col-md-3"> 
                                        <strong>Address </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.address}</p>
                                    </div>
                                </div>   
                            </div>
                        </div>

                        <h3>Billing Data</h3>
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="row">
                                    <div class="col-md-5"> 
                                        <strong>Credit Limit </Strong>
                                    </div>
                                    <div class="col-md-6"> 
                                        <p>${sessionScope.user.cridetlimit}</p>
                                    </div>
                                </div>   
                            </div>
                        </div>

                        <h3>Interests</h3>
                        <div class="row">
                            <c:forEach items="${sessionScope.user.interests}" var="interest" >
                                <ul>
                                    <li>${interest.name}</li>
                                </ul>
                            </c:forEach>
                        </div>
                </div>
                </form>
            </div>
        </div>

        <%--<%@include file="footer.jsp" %>--%>