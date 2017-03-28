<%-- 
    Document   : footer
    Created on : Mar 12, 2017, 5:57:24 PM
    Author     : Sheko
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include  page="HomeServlet" ></jsp:include>
    <!-- *** FOOTER ***
_________________________________________________________ -->
    <div id="footer" data-animate="fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4>Pages</h4>

                    <ul>
                        <li><a href="aboutus.jsp">About us</a>
                        </li>
                        <li><a href="faq.jsp">FAQ</a>
                        </li>
                        <li><a href="contactus.jsp">Contact us</a>
                        </li>
                    </ul>

                    <hr>

                    <h4>User section</h4>

                    <ul>
                    <c:if test="${!sessionScope.LoggedIn}">
                        <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                        </li>
                        <li><a href="register.jsp" >Register</a>
                        </li>

                    </c:if>
                    <c:if test="${sessionScope.LoggedIn}">
                        <li><a href="Account.jsp"> ${sessionScope.user.fname} ${sessionScope.user.lname}</a>
                        </li>
                    </c:if>
                </ul>

                <hr class="hidden-md hidden-lg hidden-sm">

            </div>
            <!-- /.col-md-3 -->

            <div class="col-md-3 col-sm-6">
                <h4>Top categories</h4>
                <div class="panel-body">
                    <ul>
                        <c:forEach items="${requestScope.categories}" var="category">
                            <li><a href="categoryBouquets?c=${category.id}&n=${category.name}">${category.name}</a>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <hr class="hidden-md hidden-lg">

            </div>
            <!-- /.col-md-3 -->

            <div class="col-md-3 col-sm-6">

                <h4>Where to find us</h4>

                <p><strong>25 Ahmed Tayseer St.</strong>
                    <br>ISI
                    <br>ITI
                    <br>Cairo
                    <br>
                    <strong>Egypt</strong>
                </p>

                <a href="contactus.jsp">Go to contact page</a>

                <hr class="hidden-md hidden-lg">

            </div>
            <!-- /.col-md-3 -->

            <div class="col-md-3 col-sm-6">

                <h4>Get the news</h4>
                <p class="text-muted">We will close our store soon :D </p>
                

                

            </div>
            <!--/.col-md-3--> 

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
</div>
<!-- /#footer -->

<!-- *** FOOTER END *** -->




<!-- *** COPYRIGHT ***
_________________________________________________________ -->
<div id="copyright">
    <div class="container">
        <div class="col-md-6">
            <p class="pull-left">© 2017 SAAM TEAM.</p>

        </div>
       
    </div>
</div>
<!-- *** COPYRIGHT END *** -->



</div>
<!-- /#all -->






</div>
<!-- /#all -->




<!-- *** SCRIPTS TO INCLUDE ***
_________________________________________________________ -->
<script src="js/jquery-1.11.0.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap-hover-dropdown.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/front.js"></script>

<!-- PNotify -->

<script src="assets/js/pnotify.js"></script>
<script src="assets/js/pnotify.buttons.js"></script>


</body>

</html>
