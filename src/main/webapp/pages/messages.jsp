<%@ include file="header.jsp"%>

<body>

<div class="wrapper">

    <header>
        <div class="container">
            <div class="header-data">
                <div class="logo">
                    <a href="index.jsp" title=""><img src="images/logo.png" alt=""></a>
                </div><!--logo end-->
                <div class="search-bar">
                    <form>
                        <input type="text" name="search" placeholder="Search...">
                        <button type="submit"><i class="la la-search"></i></button>
                    </form>
                </div><!--search-bar end-->
                <nav>
                    <ul>
                        <li>
                            <a href="index.jsp" title="">
                                <span><img src="images/icon1.png" alt=""></span>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="companies.jsp" title="">
                                <span><img src="images/icon2.png" alt=""></span>
                                Companies
                            </a>
                            <ul>
                                <li><a href="companies.jsp" title="">Companies</a></li>
                                <li><a href="company-profile.jsp" title="">Company Profile</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="projects.jsp" title="">
                                <span><img src="images/icon3.png" alt=""></span>
                                Projects
                            </a>
                        </li>
                        <li>
                            <a href="profiles.jsp" title="">
                                <span><img src="images/icon4.png" alt=""></span>
                                Profiles
                            </a>
                            <ul>
                                <li><a href="user-profile.jsp" title="">User Profile</a></li>
                                <li><a href="my-profile-feed.jsp" title="">my-profile-feed</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="jobs.jsp" title="">
                                <span><img src="images/icon5.png" alt=""></span>
                                Jobs
                            </a>
                        </li>
                        <li>
                            <a href="messages.jsp#" title="" class="not-box-openm">
                                <span><img src="images/icon6.png" alt=""></span>
                                Messages
                            </a>
                            <div class="notification-box msg" id="message">
                                <div class="nt-title">
                                    <h4>Setting</h4>
                                    <a href="messages.jsp#" title="">Clear all</a>
                                </div>
                                <div class="nott-list">
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img1.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp" title="">Jassica William</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</p>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img2.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp" title="">Jassica William</a></h3>
                                            <p>Lorem ipsum dolor sit amet.</p>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img3.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp" title="">Jassica William</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempo incididunt ut labore et dolore magna aliqua.</p>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="view-all-nots">
                                        <a href="messages.jsp" title="">View All Messsages</a>
                                    </div>
                                </div><!--nott-list end-->
                            </div><!--notification-box end-->
                        </li>
                        <li>
                            <a href="messages.jsp#" title="" class="not-box-open">
                                <span><img src="images/icon7.png" alt=""></span>
                                Notification
                            </a>
                            <div class="notification-box noti" id="notification">
                                <div class="nt-title">
                                    <h4>Setting</h4>
                                    <a href="messages.jsp#" title="">Clear all</a>
                                </div>
                                <div class="nott-list">
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img1.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp#" title="">Jassica William</a> Comment on your
                                                project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img2.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp#" title="">Jassica William</a> Comment on your
                                                project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img3.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp#" title="">Jassica William</a> Comment on your
                                                project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="images/resources/ny-img2.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="messages.jsp#" title="">Jassica William</a> Comment on your
                                                project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="view-all-nots">
                                        <a href="messages.jsp#" title="">View All Notification</a>
                                    </div>
                                </div><!--nott-list end-->
                            </div><!--notification-box end-->
                        </li>
                    </ul>
                </nav><!--nav end-->
                <div class="menu-btn">
                    <a href="messages.jsp#" title=""><i class="fa fa-bars"></i></a>
                </div><!--menu-btn end-->
                <div class="user-account">
                    <div class="user-info">
                        <img src="images/resources/user.png" alt="">
                        <a href="messages.jsp#" title="">John</a>
                        <i class="la la-sort-down"></i>
                    </div>
                    <div class="user-account-settingss">
                        <h3>Online Status</h3>
                        <ul class="on-off-status">
                            <li>
                                <div class="fgt-sec">
                                    <input type="radio" name="cc" id="c5">
                                    <label for="c5">
                                        <span></span>
                                    </label>
                                    <small>Online</small>
                                </div>
                            </li>
                            <li>
                                <div class="fgt-sec">
                                    <input type="radio" name="cc" id="c6">
                                    <label for="c6">
                                        <span></span>
                                    </label>
                                    <small>Offline</small>
                                </div>
                            </li>
                        </ul>
                        <h3>Custom Status</h3>
                        <div class="search_form">
                            <form>
                                <input type="text" name="search">
                                <button type="submit">Ok</button>
                            </form>
                        </div><!--search_form end-->
                        <h3>Setting</h3>
                        <ul class="us-links">
                            <li><a href="profile-account-setting.jsp" title="">Account Setting</a></li>
                            <li><a href="messages.jsp#" title="">Privacy</a></li>
                            <li><a href="messages.jsp#" title="">Faqs</a></li>
                            <li><a href="messages.jsp#" title="">Terms & Conditions</a></li>
                        </ul>
                        <h3 class="tc"><a href="sign-in.jsp" title="">Logout</a></h3>
                    </div><!--user-account-settingss end-->
                </div>
            </div><!--header-data end-->
        </div>
    </header><!--header end-->


    <section class="messages-page">
        <div class="container">
            <div class="messages-sec">
                <div class="row">
                    <div class="col-lg-4 col-md-12 no-pdd">
                        <div class="msgs-list">
                            <div class="msg-title">
                                <h3>Messages</h3>
                                <ul>
                                    <li><a href="messages.jsp#" title=""><i class="fa fa-cog"></i></a></li>
                                    <li><a href="messages.jsp#" title=""><i class="fa fa-ellipsis-v"></i></a></li>
                                </ul>
                            </div><!--msg-title end-->
                            <div class="messages-list">
                                <ul>
                                    <li class="active">
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img1.png" alt="">
                                                <span class="msg-status"></span>
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>John Doe</h3>
                                                <p>Lorem ipsum dolor <img src="images/smley.png" alt=""></p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                            <span class="msg-notifc">1</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                    <li>
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img2.png" alt="">
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>David Vane</h3>
                                                <p>Vestibulum ac diam..</p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                    <li>
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img3.png" alt="">
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>Nancy Dilan</h3>
                                                <p>Quam vehicula.</p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                    <li>
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img4.png" alt="">
                                                <span class="msg-status"></span>
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>Norman Kenney</h3>
                                                <p>Nulla quis lorem ut..</p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                    <li>
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img5.png" alt="">
                                                <span class="msg-status"></span>
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>James Dilan</h3>
                                                <p>Vivamus magna just..</p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                    <li>
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img6.png" alt="">
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>Mike Dorn</h3>
                                                <p>Praesent sapien massa.</p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                    <li>
                                        <div class="usr-msg-details">
                                            <div class="usr-ms-img">
                                                <img src="images/resources/m-img7.png" alt="">
                                            </div>
                                            <div class="usr-mg-info">
                                                <h3>Patrick Morison</h3>
                                                <p>Convallis a pellente...</p>
                                            </div><!--usr-mg-info end-->
                                            <span class="posted_time">1:55 PM</span>
                                        </div><!--usr-msg-details end-->
                                    </li>
                                </ul>
                            </div><!--messages-list end-->
                        </div><!--msgs-list end-->
                    </div>
                    <div class="col-lg-8 col-md-12 pd-right-none pd-left-none">
                        <div class="main-conversation-box">
                            <div class="message-bar-head">
                                <div class="usr-msg-details">
                                    <div class="usr-ms-img">
                                        <img src="images/resources/m-img1.png" alt="">
                                    </div>
                                    <div class="usr-mg-info">
                                        <h3>John Doe</h3>
                                        <p>Online</p>
                                    </div><!--usr-mg-info end-->
                                </div>
                                <a href="messages.jsp#" title=""><i class="fa fa-ellipsis-v"></i></a>
                            </div><!--message-bar-head end-->
                            <div class="messages-line">
                                <div class="main-message-box">
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img1.png" alt="">
                                    </div><!--messg-usr-img end-->
                                    <div class="message-dt">
                                        <div class="message-inner-dt img-bx">
                                            <img src="images/resources/mt-img1.png" alt="">
                                            <img src="images/resources/mt-img2.png" alt="">
                                            <img src="images/resources/mt-img3.png" alt="">
                                        </div><!--message-inner-dt end-->
                                        <span>Sat, Aug 23, 1:08 PM</span>
                                    </div><!--message-dt end-->
                                </div><!--main-message-box end-->
                                <div class="main-message-box ta-right">
                                    <div class="message-dt">
                                        <div class="message-inner-dt">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum
                                                congue leo eget malesuada. Vivamus suscipit tortor eget felis
                                                porttitor.</p>
                                        </div><!--message-inner-dt end-->
                                        <span>Sat, Aug 23, 1:08 PM</span>
                                    </div><!--message-dt end-->
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img2.png" alt="">
                                    </div><!--messg-usr-img end-->
                                </div><!--main-message-box end-->
                                <div class="main-message-box st3">
                                    <div class="message-dt st3">
                                        <div class="message-inner-dt">
                                            <p>Cras ultricies ligula.<img src="images/smley.png" alt=""></p>
                                        </div><!--message-inner-dt end-->
                                        <span>5 minutes ago</span>
                                    </div><!--message-dt end-->
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img1.png" alt="">
                                    </div><!--messg-usr-img end-->
                                </div><!--main-message-box end-->
                                <div class="main-message-box ta-right">
                                    <div class="message-dt">
                                        <div class="message-inner-dt">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum
                                                congue leo eget malesuada. Vivamus suscipit tortor eget felis
                                                porttitor.</p>
                                        </div><!--message-inner-dt end-->
                                        <span>Sat, Aug 23, 1:08 PM</span>
                                    </div><!--message-dt end-->
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img2.png" alt="">
                                    </div><!--messg-usr-img end-->
                                </div><!--main-message-box end-->
                                <div class="main-message-box st3">
                                    <div class="message-dt st3">
                                        <div class="message-inner-dt">
                                            <p>Lorem ipsum dolor sit amet</p>
                                        </div><!--message-inner-dt end-->
                                        <span>2 minutes ago</span>
                                    </div><!--message-dt end-->
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img1.png" alt="">
                                    </div><!--messg-usr-img end-->
                                </div><!--main-message-box end-->
                                <div class="main-message-box ta-right">
                                    <div class="message-dt">
                                        <div class="message-inner-dt">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum
                                                congue leo eget malesuada. Vivamus suscipit tortor eget felis
                                                porttitor.</p>
                                        </div><!--message-inner-dt end-->
                                        <span>Sat, Aug 23, 1:08 PM</span>
                                    </div><!--message-dt end-->
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img2.png" alt="">
                                    </div><!--messg-usr-img end-->
                                </div><!--main-message-box end-->
                                <div class="main-message-box st3">
                                    <div class="message-dt st3">
                                        <div class="message-inner-dt">
                                            <p>....</p>
                                        </div><!--message-inner-dt end-->
                                        <span>Typing...</span>
                                    </div><!--message-dt end-->
                                    <div class="messg-usr-img">
                                        <img src="images/resources/m-img1.png" alt="">
                                    </div><!--messg-usr-img end-->
                                </div><!--main-message-box end-->
                            </div><!--messages-line end-->
                            <div class="message-send-area">
                                <form>
                                    <div class="mf-field">
                                        <input type="text" name="message" placeholder="Type a message here">
                                        <button type="submit">Send</button>
                                    </div>
                                    <ul>
                                        <li><a href="messages.jsp#" title=""><i class="fa fa-smile-o"></i></a></li>
                                        <li><a href="messages.jsp#" title=""><i class="fa fa-camera"></i></a></li>
                                        <li><a href="messages.jsp#" title=""><i class="fa fa-paperclip"></i></a></li>
                                    </ul>
                                </form>
                            </div><!--message-send-area end-->
                        </div><!--main-conversation-box end-->
                    </div>
                </div>
            </div><!--messages-sec end-->
        </div>
    </section><!--messages-page end-->


    <footer>
        <div class="footy-sec mn no-margin">
            <div class="container">
                <ul>
                    <li><a href="help-center.jsp" title="">Help Center</a></li>
                    <li><a href="about.jsp" title="">About</a></li>
                    <li><a href="messages.jsp#" title="">Privacy Policy</a></li>
                    <li><a href="messages.jsp#" title="">Community Guidelines</a></li>
                    <li><a href="messages.jsp#" title="">Cookies Policy</a></li>
                    <li><a href="messages.jsp#" title="">Career</a></li>
                    <li><a href="forum.jsp" title="">Forum</a></li>
                    <li><a href="messages.jsp#" title="">Language</a></li>
                    <li><a href="messages.jsp#" title="">Copyright Policy</a></li>
                </ul>
                <p><img src="images/copy-icon2.png" alt="">Copyright 2019</p>
                <img class="fl-rgt" src="images/logo2.png" alt="">
            </div>
        </div>
    </footer>

</div><!--theme-layout end-->
<%@include file="scripts.jsp" %>

</body>
</html>