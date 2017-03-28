
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../assets/css/custom.min.css" rel="stylesheet">
<link href="../assets/css/adminCSS.css" rel="stylesheet">
<html>
    <head>
        <title>Admin Login</title>
        
        <!-- Bootstrap -->
        <link href="../assets/css/bootstrap/bootstrapCSS/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="../assets/css/fontawesome/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body class="login">
        <!--Page Content-->
        <div>
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>

            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <form  method="post" action="j_security_check">
                            <h1>Login Here</h1>
                            <div>
                                <input name="j_username" type="text" class="form-control input-lg" placeholder="Admin User Name" required="true" />
                            </div>
                            <div>
                                <input  name="j_password" type="password" class="form-control input-lg" placeholder="Admin Password" required="true" />
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg" style="width: 100%">Log in</button>
                                
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <div class="clearfix"></div>
                                <br />

                                <div>
                                    <h1><i class="fa fa-gift"></i> Flowers Shop</h1>
                                    <p>©2017 All Rights Reserved. Flowers Shop</p>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>


            </div>
        </div>
        <!--Page Content-->
    </body>
</html>