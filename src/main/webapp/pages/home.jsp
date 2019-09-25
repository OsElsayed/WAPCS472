<%@include file="head.jsp"%>

<body>

<div class="wrapper">
   <%@ include file="header.jsp"%>

    <main>
        <div class="main-section">
            <div class="container">
                <div class="main-section-data">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 pd-left-none no-pd">
                            <div class="main-left-sidebar no-margin">
                                <div class="user-data full-width">
                                    <div class="user-profile">
                                        <div class="username-dt">
                                            <div class="usr-pic">
                                                <img src="${user.image.imageUrl}" alt="">
                                            </div>
                                        </div><!--username-dt end-->
                                        <div class="user-specs">
                                            <h3>${user.username}</h3>
                                        </div>
                                    </div><!--user-profile end-->
                                    <ul class="user-fw-status">
                                        <li>
                                            <h4>Following</h4>
                                            <span>34</span>
                                        </li>
                                        <li>
                                            <h4>Followers</h4>
                                            <span>155</span>
                                        </li>
                                        <li>
                                            <a href="http://gambolthemes.net/workwise-new/my-profile.html" title="">View
                                                Profile</a>
                                        </li>
                                    </ul>
                                </div><!--user-data end-->
                                <div class="suggestions full-width">
                                    <div class="sd-title">
                                        <h3>Suggestions</h3>
                                        <i class="la la-ellipsis-v"></i>
                                    </div><!--sd-title end-->
                                    <div class="suggestions-list">
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s1.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Jessica William</h4>
                                                <span>Graphic Designer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s2.png" alt="">
                                            <div class="sgt-text">
                                                <h4>John Doe</h4>
                                                <span>PHP Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s3.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Poonam</h4>
                                                <span>Wordpress Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s4.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Bill Gates</h4>
                                                <span>C & C++ Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s5.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Jessica William</h4>
                                                <span>Graphic Designer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s6.png" alt="">
                                            <div class="sgt-text">
                                                <h4>John Doe</h4>
                                                <span>PHP Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="view-more">
                                            <a href="index.html#" title="">View More</a>
                                        </div>
                                    </div><!--suggestions-list end-->
                                </div><!--suggestions end-->
                                <div class="tags-sec full-width">
                                    <ul>
                                        <li><a href="index.html#" title="">Help Center</a></li>
                                        <li><a href="index.html#" title="">About</a></li>
                                        <li><a href="index.html#" title="">Privacy Policy</a></li>
                                        <li><a href="index.html#" title="">Community Guidelines</a></li>
                                        <li><a href="index.html#" title="">Cookies Policy</a></li>
                                        <li><a href="index.html#" title="">Career</a></li>
                                        <li><a href="index.html#" title="">Language</a></li>
                                        <li><a href="index.html#" title="">Copyright Policy</a></li>
                                    </ul>
                                    <div class="cp-sec">
                                        <img src="../images/logo2.png" alt="">
                                        <p><img src="../images/cp.png" alt="">Copyright 2019</p>
                                    </div>
                                </div><!--tags-sec end-->
                            </div><!--main-left-sidebar end-->
                        </div>
                        <div class="col-lg-6 col-md-8 no-pd">
                            <div class="main-ws-sec">
                                <div class="post-topbar">
                                    <img src="${user.image.imageUrl}" alt="" style="width: 50px;border-radius: 80%;" height="50px" >
                                    <div class="post-st">
                                        <ul>
                                            <div id="img">

                                            </div>
                                            <li><a class="post-jb active" href="index.html#" title="">Post a Job</a>
                                            </li>
                                        </ul>
                                    </div><!--post-st end-->
                                </div><!--post-topbar end-->
                                <div class="posts-section">
                                    <c:forEach var="post" items="${posts}">
                                        <c:if test="${post.visible == true}">
                                        <div class="post-bar">
                                            <div class="post_topbar">
                                                <div class="usy-dt">
                                                    <img src="${post.user.image.imageUrl}" alt="" style="width: 50px" height="50px">
                                                    <div class="usy-name">
                                                        <h3>${post.user.username}</h3>
                                                        <span id="timeStart"><img src="../images/clock.png" alt="">${post.creationDate}</span>
                                                    </div>
                                                </div>
                                                <div class="ed-opts">
                                                    <a href="index.html#" title="" class="ed-opts-open"><i
                                                            class="la la-ellipsis-v"></i></a>
                                                    <ul class="ed-options">
                                                        <li><a href="" class="remove" title="">Edit Post</a></li>
                                                        <li><a href="" class="remove" title="">Unsaved</a></li>
                                                        <li><a href="" class="remove" title="">Unbid</a></li>
                                                        <li><a href="" class="remove" title="">Remove</a></li>
                                                        <c:if test="${user.admin eq true}">
                                                        <li><a href="" class="remove" id="${post.id}" title="">Block</a></li>
                                                        </c:if>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="epi-sec">
                                                <ul class="bk-links">
                                                    <li><a href="" title=""><i
                                                            class="la la-bookmark"></i></a></li>
                                                    <li><a href="" title=""><i
                                                            class="la la-envelope"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="job_descp">
                                                <p>${post.description}</p>
                                                <c:if test="${post.images != null}">
                                                    <img src="${post.images.imageUrl}" alt="Image not found" onerror="this.src='http://leeford.in/wp-content/uploads/2017/09/image-not-found.jpg';" />
                                                </c:if>
                                                <ul class="skill-tags">
                                                </ul>
                                            </div>
                                            <div class="job-status-bar">
                                                <ul class="like-com">
                                                    <li>
                                                        <a href="index.html#"><i class="fas fa-heart"></i> Like</a>
                                                        <img src="../images/liked-img.png" alt="">
                                                        <span>25</span>
                                                    </li>
                                                    <li><a href="index.html#" class="com"><i
                                                            class="fas fa-comment-alt"></i> Comment 15</a></li>
                                                </ul>
                                                <a href="index.html#"><i class="fas fa-eye"></i>Views 50</a>
                                            </div>
                                        </div>
                                        </c:if>
                                    </c:forEach><!--post-bar end-->
                                    <div class="top-profiles">
                                        <div class="pf-hd">
                                            <h3>Top Profiles</h3>
                                            <i class="la la-ellipsis-v"></i>
                                        </div>
                                        <div class="profiles-slider">
                                            <div class="user-profy">
                                                <img src="../images/resources/user1.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>
                                                    <li><a href="index.html#" title="" class="envlp"><img
                                                            src="../images/envelop.png" alt=""></a></li>
                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="index.html#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="../images/resources/user2.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>
                                                    <li><a href="index.html#" title="" class="envlp"><img
                                                            src="../images/envelop.png" alt=""></a></li>
                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="index.html#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="../images/resources/user3.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>
                                                    <li><a href="index.html#" title="" class="envlp"><img
                                                            src="../images/envelop.png" alt=""></a></li>
                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="index.html#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="../images/resources/user1.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>
                                                    <li><a href="index.html#" title="" class="envlp"><img
                                                            src="../images/envelop.png" alt=""></a></li>
                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="index.html#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="../images/resources/user2.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>
                                                    <li><a href="index.html#" title="" class="envlp"><img
                                                            src="../images/envelop.png" alt=""></a></li>
                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="index.html#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="../images/resources/user3.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>
                                                    <li><a href="index.html#" title="" class="envlp"><img
                                                            src="../images/envelop.png" alt=""></a></li>
                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="index.html#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                        </div><!--profiles-slider end-->
                                    </div><!--top-profiles end-->
                                    <!--post-bar end-->

                                    <div class="process-comm">
                                        <div class="spinner">
                                            <div class="bounce1"></div>
                                            <div class="bounce2"></div>
                                            <div class="bounce3"></div>
                                        </div>
                                    </div><!--process-comm end-->
                                </div><!--posts-section end-->
                            </div><!--main-ws-sec end-->
                        </div>
                        <div class="col-lg-3 pd-right-none no-pd">
                            <div class="right-sidebar">
                                <div class="widget widget-about">
                                    <img src="../images/wd-logo.png" alt="">
                                    <h3>Track Time on Workwise</h3>
                                    <span>Pay only for the Hours worked</span>
                                    <div class="sign_link">
                                        <h3><a href="sign-in.html" title="">Sign up</a></h3>
                                        <a href="index.html#" title="">Learn More</a>
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
                                <div class="widget suggestions full-width">
                                    <div class="sd-title">
                                        <h3>Most Viewed People</h3>
                                        <i class="la la-ellipsis-v"></i>
                                    </div><!--sd-title end-->
                                    <div class="suggestions-list">
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s1.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Jessica William</h4>
                                                <span>Graphic Designer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s2.png" alt="">
                                            <div class="sgt-text">
                                                <h4>John Doe</h4>
                                                <span>PHP Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s3.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Poonam</h4>
                                                <span>Wordpress Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s4.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Bill Gates</h4>
                                                <span>C &amp; C++ Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s5.png" alt="">
                                            <div class="sgt-text">
                                                <h4>Jessica William</h4>
                                                <span>Graphic Designer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="suggestion-usd">
                                            <img src="../images/resources/s6.png" alt="">
                                            <div class="sgt-text">
                                                <h4>John Doe</h4>
                                                <span>PHP Developer</span>
                                            </div>
                                            <span><i class="la la-plus"></i></span>
                                        </div>
                                        <div class="view-more">
                                            <a href="index.html#" title="">View More</a>
                                        </div>
                                    </div><!--suggestions-list end-->
                                </div>
                            </div><!--right-sidebar end-->
                        </div>
                    </div>
                </div><!-- main-section-data end-->
            </div>
        </div>
    </main>




    <div class="post-popup job_post">
        <div class="post-project">
            <h3>Post</h3>
            <div class="post-project-fields">
                <form method="post" enctype="multipart/form-data" id="form">
                    <div class="row">
                        <div class="col-lg-12">
                            <textarea id="comment" placeholder="Description" name="comment"></textarea>
                        </div>
                        <div class="col-lg-12">
                            <input type="text" id="photo" name="photo">
                            <%--                            <input type="file" id="photo" name="photo">--%>
                        </div>
                        <div>
                            <ul>
                                <li>
                                    <button id="submit_btn" class="active" type="submit" value="post">Post</button>
                                </li>
                                <li><a href="index.html#" title="">Cancel</a></li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div><!--post-project-fields end-->
            <a href="index.html#" title=""><i class="la la-times-circle-o"></i></a>
        </div><!--post-project end-->
    </div><!--post-project-popup end-->


    <div class="chatbox-list">
        <div class="chatbox">
            <div class="chat-mg">
                <a href="index.html#" title=""><img src="../images/resources/usr-img1.png" alt=""></a>
                <span>2</span>
            </div>
            <div class="conversation-box">
                <div class="con-title mg-3">
                    <div class="chat-user-info">
                        <img src="../images/resources/us-img1.png" alt="">
                        <h3>John Doe <span class="status-info"></span></h3>
                    </div>
                    <div class="st-icons">
                        <a href="index.html#" title=""><i class="la la-cog"></i></a>
                        <a href="index.html#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                        <a href="index.html#" title="" class="close-chat"><i class="la la-close"></i></a>
                    </div>
                </div>
                <div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget
                            malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                    <div class="date-nd">
                        <span>Sunday, August 24</span>
                    </div>
                    <div class="chat-msg st2">
                        <p>Cras ultricies ligula.</p>
                        <span>5 minutes ago</span>
                    </div>
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget
                            malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                </div><!--chat-list end-->
                <div class="typing-msg">
                    <form>
                        <textarea placeholder="Type a message here"></textarea>
                        <button type="submit"><i class="fa fa-send"></i></button>
                    </form>
                    <ul class="ft-options">
                        <li><a href="index.html#" title=""><i class="la la-smile-o"></i></a></li>
                        <li><a href="index.html#" title=""><i class="la la-camera"></i></a></li>
                        <li><a href="index.html#" title=""><i class="fa fa-paperclip"></i></a></li>
                    </ul>
                </div><!--typing-msg end-->
            </div><!--chat-history end-->
        </div>
        <div class="chatbox">
            <div class="chat-mg">
                <a href="index.html#" title=""><img src="../images/resources/usr-img2.png" alt=""></a>
            </div>
            <div class="conversation-box">
                <div class="con-title mg-3">
                    <div class="chat-user-info">
                        <img src="../images/resources/us-img1.png" alt="">
                        <h3>John Doe <span class="status-info"></span></h3>
                    </div>
                    <div class="st-icons">
                        <a href="index.html#" title=""><i class="la la-cog"></i></a>
                        <a href="index.html#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                        <a href="index.html#" title="" class="close-chat"><i class="la la-close"></i></a>
                    </div>
                </div>
                <div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget
                            malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                    <div class="date-nd">
                        <span>Sunday, August 24</span>
                    </div>
                    <div class="chat-msg st2">
                        <p>Cras ultricies ligula.</p>
                        <span>5 minutes ago</span>
                    </div>
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget
                            malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                </div><!--chat-list end-->
                <div class="typing-msg">
                    <form>
                        <textarea placeholder="Type a message here"></textarea>
                        <button type="submit"><i class="fa fa-send"></i></button>
                    </form>
                    <ul class="ft-options">
                        <li><a href="index.html#" title=""><i class="la la-smile-o"></i></a></li>
                        <li><a href="index.html#" title=""><i class="la la-camera"></i></a></li>
                        <li><a href="index.html#" title=""><i class="fa fa-paperclip"></i></a></li>
                    </ul>
                </div><!--typing-msg end-->
            </div><!--chat-history end-->
        </div>
        <div class="chatbox">
            <div class="chat-mg bx">
                <a href="index.html#" title=""><img src="../images/chat.png" alt=""></a>
                <span>2</span>
            </div>
            <div class="conversation-box">
                <div class="con-title">
                    <h3>Messages</h3>
                    <a href="index.html#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                </div>
                <div class="chat-list">
                    <div class="conv-list active">
                        <div class="usrr-pic">
                            <img src="../images/resources/usy1.png" alt="">
                            <span class="active-status activee"></span>
                        </div>
                        <div class="usy-info">
                            <h3>John Doe</h3>
                            <span>Lorem ipsum dolor <img src="../images/smley.png" alt=""></span>
                        </div>
                        <div class="ct-time">
                            <span>1:55 PM</span>
                        </div>
                        <span class="msg-numbers">2</span>
                    </div>
                    <div class="conv-list">
                        <div class="usrr-pic">
                            <img src="../images/resources/usy2.png" alt="">
                        </div>
                        <div class="usy-info">
                            <h3>John Doe</h3>
                            <span>Lorem ipsum dolor <img src="../images/smley.png" alt=""></span>
                        </div>
                        <div class="ct-time">
                            <span>11:39 PM</span>
                        </div>
                    </div>
                    <div class="conv-list">
                        <div class="usrr-pic">
                            <img src="../images/resources/usy3.png" alt="">
                        </div>
                        <div class="usy-info">
                            <h3>John Doe</h3>
                            <span>Lorem ipsum dolor <img src="../images/smley.png" alt=""></span>
                        </div>
                        <div class="ct-time">
                            <span>0.28 AM</span>
                        </div>
                    </div>
                </div><!--chat-list end-->
            </div><!--conversation-box end-->
        </div>
    </div><!--chatbox-list end-->

</div><!--theme-layout end-->

<%@ include file="scripts.jsp"%>
<script type="text/javascript" src="../js/timeline.js"></script>
</body>
</html>