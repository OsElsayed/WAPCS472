<%@ include file="header.jsp" %>
<body>

    <div class="wrapper">

        <header>
            <div class="container">
                <div class="header-data">
                    <div class="logo">
                        <a href="index.jsp" title=""><img src="../images/logo.png" alt=""></a>
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
                                    <span><img src="../images/icon1.png" alt=""></span>
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="companies.jsp" title="">
                                    <span><img src="../images/icon2.png" alt=""></span>
                                    Companies
                                </a>
                                <ul>
                                    <li><a href="companies.jsp" title="">Companies</a></li>
                                    <li><a href="company-profile.jsp" title="">Company Profile</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="projects.jsp" title="">
                                    <span><img src="../images/icon3.png" alt=""></span>
                                    Projects
                                </a>
                            </li>
                            <li>
                                <a href="profiles.jsp" title="">
                                    <span><img src="../images/icon4.png" alt=""></span>
                                    Profiles
                                </a>
                                <ul>
                                    <li><a href="user-profile.jsp" title="">User Profile</a></li>
                                    <li><a href="my-profile-feed.jsp" title="">my-profile-feed</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="jobs.jsp" title="">
                                    <span><img src="../images/icon5.png" alt=""></span>
                                    Jobs
                                </a>
                            </li>
                            <li>
                                <a href="jobs.jsp#" title="" class="not-box-openm">
                                    <span><img src="../images/icon6.png" alt=""></span>
                                    Messages
                                </a>
                                <div class="notification-box msg" id="message">
                                    <div class="nt-title">
                                        <h4>Setting</h4>
                                        <a href="jobs.jsp#" title="">Clear all</a>
                                    </div>
                                    <div class="nott-list">
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img1.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="messages.jsp" title="">Jassica William</a></h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</p>
                                                <span>2 min ago</span>
                                            </div><!--notification-info -->
                                        </div>
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img2.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="messages.jsp" title="">Jassica William</a></h3>
                                                <p>Lorem ipsum dolor sit amet.</p>
                                                <span>2 min ago</span>
                                            </div><!--notification-info -->
                                        </div>
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img3.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="messages.jsp" title="">Jassica William</a></h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempo incididunt ut labore et dolore magna aliqua.</p>
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
                                <a href="jobs.jsp#" title="" class="not-box-open">
                                    <span><img src="../images/icon7.png" alt=""></span>
                                    Notification
                                </a>
                                <div class="notification-box noti" id="notification">
                                    <div class="nt-title">
                                        <h4>Setting</h4>
                                        <a href="jobs.jsp#" title="">Clear all</a>
                                    </div>
                                    <div class="nott-list">
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img1.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="jobs.jsp#" title="">Jassica William</a> Comment on your
                                                    project.</h3>
                                                <span>2 min ago</span>
                                            </div><!--notification-info -->
                                        </div>
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img2.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="jobs.jsp#" title="">Jassica William</a> Comment on your
                                                    project.</h3>
                                                <span>2 min ago</span>
                                            </div><!--notification-info -->
                                        </div>
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img3.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="jobs.jsp#" title="">Jassica William</a> Comment on your
                                                    project.</h3>
                                                <span>2 min ago</span>
                                            </div><!--notification-info -->
                                        </div>
                                        <div class="notfication-details">
                                            <div class="noty-user-img">
                                                <img src="../images/resources/ny-img2.png" alt="">
                                            </div>
                                            <div class="notification-info">
                                                <h3><a href="jobs.jsp#" title="">Jassica William</a> Comment on your
                                                    project.</h3>
                                                <span>2 min ago</span>
                                            </div><!--notification-info -->
                                        </div>
                                        <div class="view-all-nots">
                                            <a href="jobs.jsp#" title="">View All Notification</a>
                                        </div>
                                    </div><!--nott-list end-->
                                </div><!--notification-box end-->
                            </li>
                        </ul>
                    </nav><!--nav end-->
                    <div class="menu-btn">
                        <a href="jobs.jsp#" title=""><i class="fa fa-bars"></i></a>
                    </div><!--menu-btn end-->
                    <div class="user-account">
                        <div class="user-info">
                            <img src="../images/resources/user.png" alt="">
                            <a href="jobs.jsp#" title="">John</a>
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
                                <li><a href="jobs.jsp#" title="">Privacy</a></li>
                                <li><a href="jobs.jsp#" title="">Faqs</a></li>
                                <li><a href="jobs.jsp#" title="">Terms & Conditions</a></li>
                            </ul>
                            <h3 class="tc"><a href="sign-in.jsp" title="">Logout</a></h3>
                        </div><!--user-account-settingss end-->
                    </div>
                </div><!--header-data end-->
            </div>
        </header><!--header end-->

        <div class="search-sec">
            <div class="container">
                <div class="search-box">
                    <form>
                        <input type="text" name="search" placeholder="Search keywords">
                        <button type="submit">Search</button>
                    </form>
                </div><!--search-box end-->
            </div>
        </div><!--search-sec end-->


        <main>
            <div class="main-section">
                <div class="container">
                    <div class="main-section-data">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="filter-secs">
                                    <div class="filter-heading">
                                        <h3>Filters</h3>
                                        <a href="jobs.jsp#" title="">Clear all filters</a>
                                    </div><!--filter-heading end-->
                                    <div class="paddy">
                                        <div class="filter-dd">
                                            <div class="filter-ttl">
                                                <h3>Skills</h3>
                                                <a href="jobs.jsp#" title="">Clear</a>
                                            </div>
                                            <form>
                                                <input type="text" name="search-skills" placeholder="Search skills">
                                            </form>
                                        </div>
                                        <div class="filter-dd">
                                            <div class="filter-ttl">
                                                <h3>Availabilty</h3>
                                                <a href="jobs.jsp#" title="">Clear</a>
                                            </div>
                                            <ul class="avail-checks">
                                                <li>
                                                    <input type="radio" name="cc" id="c1">
                                                    <label for="c1">
                                                        <span></span>
                                                    </label>
                                                    <small>Hourly</small>
                                                </li>
                                                <li>
                                                    <input type="radio" name="cc" id="c2">
                                                    <label for="c2">
                                                        <span></span>
                                                    </label>
                                                    <small>Part Time</small>
                                                </li>
                                                <li>
                                                    <input type="radio" name="cc" id="c3">
                                                    <label for="c3">
                                                        <span></span>
                                                    </label>
                                                    <small>Full Time</small>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="filter-dd">
                                            <div class="filter-ttl">
                                                <h3>Job Type</h3>
                                                <a href="jobs.jsp#" title="">Clear</a>
                                            </div>
                                            <form class="job-tp">
                                                <select>
                                                    <option>Select a job type</option>
                                                    <option>Select a job type</option>
                                                    <option>Select a job type</option>
                                                    <option>Select a job type</option>
                                                </select>
                                                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                            </form>
                                        </div>
                                        <div class="filter-dd">
                                            <div class="filter-ttl">
                                                <h3>Pay Rate / Hr ($)</h3>
                                                <a href="jobs.jsp#" title="">Clear</a>
                                            </div>
                                            <div class="rg-slider">
                                                <input class="rn-slider slider-input" type="hidden" value="5,50"/>
                                            </div>
                                            <div class="rg-limit">
                                                <h4>1</h4>
                                                <h4>100+</h4>
                                            </div><!--rg-limit end-->
                                        </div>
                                        <div class="filter-dd">
                                            <div class="filter-ttl">
                                                <h3>Experience Level</h3>
                                                <a href="jobs.jsp#" title="">Clear</a>
                                            </div>
                                            <form class="job-tp">
                                                <select>
                                                    <option>Select a experience level</option>
                                                    <option>3 years</option>
                                                    <option>4 years</option>
                                                    <option>5 years</option>
                                                </select>
                                                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                            </form>
                                        </div>
                                        <div class="filter-dd">
                                            <div class="filter-ttl">
                                                <h3>Countries</h3>
                                                <a href="jobs.jsp#" title="">Clear</a>
                                            </div>
                                            <form class="job-tp">
                                                <select>
                                                    <option>Select a country</option>
                                                    <option>United Kingdom</option>
                                                    <option>United States</option>
                                                    <option>Russia</option>
                                                </select>
                                                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                            </form>
                                        </div>
                                    </div>
                                </div><!--filter-secs end-->
                            </div>
                            <div class="col-lg-6">
                                <div class="main-ws-sec">
                                    <div class="posts-section">
                                        <%--osama--%>
                                        <div class="sign_in_sec current" id="tab-1">
                                            <form method="post" action="adv">
                                                <div class="row">
                                                    <div class="col-lg-12 no-pdd">
                                                        <div class="sn-field">
                                                            <input type="text" name="advUrl"
                                                                   placeholder="Advertisement URL">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 no-pdd">
                                                        <div class="sn-field">
                                                            <input type="date" name="start" placeholder="Start Date">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 no-pdd">
                                                        <div class="sn-field">
                                                            <input type="date" name="end" placeholder="End Date">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 no-pdd">
                                                        <button type="submit" value="submit">Add Advertisement</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="right-sidebar">
                                    <div class="widget widget-about">
                                        <img src="../images/wd-logo.png" alt="">
                                        <h3>Track Time on Workwise</h3>
                                        <span>Pay only for the Hours worked</span>
                                        <div class="sign_link">
                                            <h3><a href="sign-in.jsp" title="">Sign up</a></h3>
                                            <a href="jobs.jsp#" title="">Learn More</a>
                                        </div>
                                    </div><!--widget-about end-->
                                    <div class="widget widget-jobs">
                                        <div class="sd-title">
                                            <h3>Top Jobs</h3>
                                            <i class="la la-ellipsis-v"></i>
                                        </div>
                                        <div class="jobs-list">
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Senior Product Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Senior UI / UX Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Junior Seo Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Senior PHP Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Senior Developer Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                        </div><!--jobs-list end-->
                                    </div><!--widget-jobs end-->
                                    <div class="widget widget-jobs">
                                        <div class="sd-title">
                                            <h3>Most Viewed This Week</h3>
                                            <i class="la la-ellipsis-v"></i>
                                        </div>
                                        <div class="jobs-list">
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Senior Product Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Senior UI / UX Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <h3>Junior Seo Designer</h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit..</p>
                                                </div>
                                                <div class="hr-rate">
                                                    <span>$25/hr</span>
                                                </div>
                                            </div><!--job-info end-->
                                        </div><!--jobs-list end-->
                                    </div><!--widget-jobs end-->
                                </div><!--right-sidebar end-->
                            </div>
                        </div>
                    </div><!-- main-section-data end-->
                </div>
            </div>
        </main>

    </div><!--post-project-popup end-->
    <footer>
        <div class="footy-sec mn no-margin">
            <div class="container">
                <ul>
                    <li><a href="help-center.jsp" title="">Help Center</a></li>
                    <li><a href="about.jsp" title="">About</a></li>
                    <li><a href="jobs.jsp#" title="">Privacy Policy</a></li>
                    <li><a href="jobs.jsp#" title="">Community Guidelines</a></li>
                    <li><a href="jobs.jsp#" title="">Cookies Policy</a></li>
                    <li><a href="jobs.jsp#" title="">Career</a></li>
                    <li><a href="forum.jsp" title="">Forum</a></li>
                    <li><a href="jobs.jsp#" title="">Language</a></li>
                    <li><a href="jobs.jsp#" title="">Copyright Policy</a></li>
                </ul>
                <p><img src="../images/copy-icon2.png" alt="">Copyright 2019</p>
                <img class="fl-rgt" src="../images/logo2.png" alt="">
            </div>
        </div>
    </footer>

    <%@ include file="scripts.jsp" %>
</body>
</html>