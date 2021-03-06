<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:choose>
        <c:when test="${not empty title}">
            <title>Social WAPCS472 - ${title}</title>
        </c:when>
        <c:otherwise>
            <title>Social WAPCS472</title>
        </c:otherwise>
    </c:choose>


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
                                <p>Workwise, is a global freelancing platform and social networking where businesses and
                                    independent professionals connect and collaborate remotely</p>
                            </div><!--cm-logo end-->
                            <img src="images/cm-main-img.png" alt="">
                        </div><!--cmp-info end-->
                    </div>
                    <div class="col-lg-6">
                        <div class="login-sec">
                            <ul class="sign-control">
                                <li data-tab="tab-1" class="current"><a href="sign-in.jsp#" title="">Sign in</a></li>
                                <li data-tab="tab-2"><a href="sign-in.jsp#" title="">Sign up</a></li>
                            </ul>
                            <div class="sign_in_sec current" id="tab-1">

                                <h3>Sign in</h3>
                                <form method="post" action="login">
                                    <div class="row">
                                        <div class="col-lg-12 no-pdd">
                                            <div class="sn-field">
                                                <input type="text" name="email" placeholder="Email">
                                                <i class="la la-user"></i>
                                            </div><!--sn-field end-->
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <div class="sn-field">
                                                <input type="password" name="password" placeholder="Password">
                                                <i class="la la-lock"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <div class="checky-sec">
                                                <div class="fgt-sec">
                                                    <input type="checkbox" name="cc" id="c1">
                                                    <label for="c1">
                                                        <span></span>
                                                    </label>
                                                    <small>Remember me</small>
                                                </div><!--fgt-sec end-->
                                                <a href="sign-in.jsp#" title="">Forgot Password?</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <button type="submit" value="submit">Sign in</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="login-resources">
                                    <h4>Login Via Social Account</h4>
                                    <ul>
                                        <li><a href="sign-in.jsp#" title="" class="fb"><i class="fa fa-facebook"></i>Login
                                            Via Facebook</a></li>
                                        <li><a href="sign-in.jsp#" title="" class="tw"><i class="fa fa-twitter"></i>Login
                                            Via Twitter</a></li>
                                    </ul>
                                </div><!--login-resources end-->
                            </div><!--sign_in_sec end-->
                            <div class="sign_in_sec" id="tab-2">
                                <div class="dff-tab current" id="tab-3">
                                    <form method="post">
                                        <div class="row">
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="text" name="name" id="username" placeholder="Full Name"
                                                           data-required="true" required>
                                                    <i class="la la-user"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="email" name="email" placeholder="Email"
                                                           data-required="true" required>
                                                    <i class="la la-envelope"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="url" name="image" id="img" placeholder="Url of the image" multiple>
                                                    <i class="la la-image"></i>
                                                </div>
                                                <div id="imgPlace"></div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="password" name="password" placeholder="Password"
                                                           data-required="true" required>
                                                    <i class="la la-lock"></i>
                                                    <span>
														<i class="la la-eye reg-pass float-right"></i>
													</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="password" name="repeat-password"
                                                           placeholder="Repeat Password" data-required="true" required>
                                                    <i class="la la-lock"></i>
                                                    <span>
														<i class="la la-eye reg-pass float-right"></i>
													</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="checky-sec st2">
                                                    <div class="fgt-sec">
                                                        <input type="checkbox" name="loc" id="loc">
                                                        <label for="loc">
                                                            <span></span>
                                                        </label>
                                                        <small>Yes, I want to share my location.
                                                                With the Website</small>
                                                    </div><!--fgt-sec end-->
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="checky-sec st2">
                                                    <div class="fgt-sec">
                                                        <input type="checkbox" name="term" id="c2" data-required="true">
                                                        <label for="c2">
                                                            <span></span>
                                                        </label>
                                                        <small>Yes, I understand and agree to the workwise Terms &
                                                            Conditions.</small>
                                                    </div><!--fgt-sec end-->
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <button type="button" value="submit" id="register">Get Started</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
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
<%@ include file="scripts.jsp"%>
<script type="text/javascript" src="../js/pages/register.js"></script>
<script>
    $(document).ready(function () {
       reg.init();
    });
</script>

</body>
</html>