<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="stylesheet" type="text/css" href="../css/animate.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/line-awesome.css">
    <link rel="stylesheet" type="text/css" href="../css/line-awesome-font-awesome.min.css">
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../lib/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/responsive.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css">
</head>

<body class="sign-in">


    <div class="wrapper">

        <div class="sign-in-page">
            <div class="signin-popup">
                <div class="signin-pop">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="cmp-info">
                                <div class="cm-logo">
                                    <img src="images/cm-logo.png" alt="">
                                    <a><h2>Not allowed to access this page!!!</h2>
                                        <br/><img src="../images/smley.png" alt=""></a>
                                </div><!--cm-logo end-->
                                <img src="images/cm-main-img.png" alt="">
                            </div><!--cmp-info end-->
                        </div>
                        <div class="col-lg-6">
                            <div class="login-sec">
                            </div><!--login-sec end-->
                        </div>
                    </div>
                </div><!--signin-pop end-->
            </div><!--signin-popup end-->
            <div class="footy-sec">
                <div class="container">
                    <ul>
                        <li><a href="help-center.jsp" title="">Help Center</a></li>
                        <li><a href="about.jsp" title="">About</a></li>
                        <li><a href="sign-in.jsp#" title="">Privacy Policy</a></li>
                        <li><a href="sign-in.jsp#" title="">Community Guidelines</a></li>
                        <li><a href="sign-in.jsp#" title="">Cookies Policy</a></li>
                        <li><a href="sign-in.jsp#" title="">Career</a></li>
                        <li><a href="forum.jsp" title="">Forum</a></li>
                        <li><a href="sign-in.jsp#" title="">Language</a></li>
                        <li><a href="sign-in.jsp#" title="">Copyright Policy</a></li>
                    </ul>
                    <p><img src="images/copy-icon.png" alt="">Copyright 2019</p>
                </div>
            </div><!--footy-sec end-->
        </div><!--sign-in-page end-->


    </div>
    <%@ include file="scripts.jsp" %>
    <script type="text/javascript" src="../js/pages/register.js"></script>
    <script>
        $(document).ready(function () {
            reg.init();
        });
    </script>

</body>
</html>