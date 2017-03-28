<%-- 
    Document   : sideBar
    Created on : Mar 13, 2017, 4:49:52 PM
    Author     : Sheko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include  page="HomeServlet" ></jsp:include>
    <div class="col-md-3">
        <!-- *** MENUS AND FILTERS ***
        
        
    _________________________________________________________ -->

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="listing listing-radius listing-warning">
                    <div class="shape">
                        <div class="shape-text">20%</div>
                    </div>
                    <div class="listing-content">
                        <h3 class="lead">IF order is Over $500! </h3>
                        <p>You Have - 20% off.</p>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="panel panel-default sidebar-menu">

            <div class="panel-heading">
                <h3 class="panel-title">Categories</h3>
            </div>

            <div class="panel-body">
                <ul class="nav nav-pills nav-stacked category-menu">
                    <li>
                        <ul>
                        ${category.id}
                        <c:forEach items="${requestScope.categories}" var="category">
                            <li><a href="categoryBouquets?c=${category.id}&n=${category.name}">${category.name}</a>
                            </li>
                        </c:forEach>

                    </ul>
                </li>

            </ul>     

        </div>
    </div>




    <!--
        <div class="panel panel-default sidebar-menu">
    
            <div class="panel-heading">
                <h3 class="panel-title">Colours <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
            </div>
    
            <div class="panel-body">
    
                <form>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> <span class="colour white"></span> White (14)
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> <span class="colour green"></span> Green (20)
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> <span class="colour red"></span> Red (10)
                            </label>
                        </div>
                    </div>
    
                    <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>
    
                </form>
    
            </div>
        </div> -->

    <!-- *** MENUS AND FILTERS END *** -->
    <div class="banner col-lg-12">
        <div  class="mainImage">

            <img src="assets/img/icons/fbaa.jpg" alt="Flowers 2017" class="img-responsive">

        </div>
        <div class="ribbon sale">
            <div class="theribbon">SALE</div>
            <div class="ribbon-background"></div>
        </div>
        <!-- /.ribbon -->

        <div class="ribbon new">
            <div class="theribbon">NEW</div>
            <div class="ribbon-background"></div>
        </div>
    </div>
</div>