<%@include file="head.jsp" %>
<style>
    #myImg {
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }

    #myImg:hover {
        opacity: 0.7;
    }

    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0, 0, 0); /* Fallback color */
        background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
    }

    /* Modal Content (Image) */
    .modal-content {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
    }

    /* Caption of Modal Image (Image Text) - Same Width as the Image */
    #caption {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
        text-align: center;
        color: #ccc;
        padding: 10px 0;
        height: 150px;
    }

    /* Add Animation - Zoom in the Modal */
    .modal-content, #caption {
        animation-name: zoom;
        animation-duration: 0.6s;
    }

    @keyframes zoom {
        from {
            transform: scale(0)
        }
        to {
            transform: scale(1)
        }
    }

    /* The Close Button */
    .close {
        position: absolute;
        top: 15px;
        right: 35px;
        color: #f1f1f1;
        font-size: 40px;
        font-weight: bold;
        transition: 0.3s;
    }

    .close:hover,
    .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
    }

    /* 100% Image Width on Smaller Screens */
    @media only screen and (max-width: 700px) {
        .modal-content {
            width: 100%;
        }
    }
</style>
<body>

<div class="wrapper">
    <%@ include file="header.jsp" %>

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
                                                <img src="${user.image.imageUrl}" alt=""
                                                     style="width: 150px;height: 100px">
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
                                            <a href="../pages/Profile" title="">View
                                                Profile</a>
                                        </li>
                                    </ul>
                                </div><!--user-data end-->
                                <div class="suggestions full-width">
                                    <div class="sd-title">
                                        <h3>Weather</h3>
                                        <i class="la la-ellipsis-v"></i>
                                    </div><!--sd-title end-->
                                    <div id="weather" data-loc="${user.geoLocation}"></div>
                                </div>
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

                            </div><!--main-left-sidebar end-->
                        </div>
                        <div class="col-lg-6 col-md-8 no-pd">
                            <div class="main-ws-sec">
                                <div class="post-topbar">
                                    <img src="${user.image.imageUrl}" alt="" style="width: 50px;border-radius: 80%;"
                                         height="50px">
                                    <div class="post-st">
                                        <ul>
                                            <div id="img">

                                            </div>
                                            <li><a class="post-jb active" href="index.html#" title="">New Post</a>
                                            </li>
                                        </ul>
                                    </div><!--post-st end-->
                                </div><!--post-topbar end-->
                                <div class="top-profiles">
                                    <div class="pf-hd">
                                        <h3>People You May Know</h3>
                                        <i class="la la-ellipsis-v"></i>
                                    </div>
                                    <div class="profiles-slider">
                                        <c:set var="currentUser" value="${user.username}"></c:set>
                                        <c:forEach var="u" items="${allusers}">
                                            <c:if test="${u.username != currentUser}">
                                                <div class="user-profy">
                                                    <img src="${u.image.imageUrl}"
                                                         style="width: 50px; height: 50px; border-radius: 30px;">
                                                    <h3>${u.username}</h3>
                                                    <c:if test="${!u.following}">
                                                        <ul style="color: #1e7e34;">
                                                            <li><a class="follow idFollow" id="${u.id}" name="${u.username}">Follow</a></li>
                                                        </ul>
                                                    </c:if>
                                                    <c:if test="${u.following}">
                                                        <ul style="color: #e44d3a;">
                                                            <li ><a class="follow idFollow" id="${u.id}" name="${u.username}">Unfollow</a></li>
                                                        </ul>
                                                    </c:if>
                                                    <a href="index.html#" title="">View Profile</a>
                                                </div>
                                                <!--user-profy end-->
                                            </c:if>
                                        </c:forEach>
                                    </div><!--profiles-slider end-->
                                </div>
                                <div class="posts-section">
                                    <c:forEach var="post" items="${posts}">
                                        <c:if test="${post.visible == true}">
                                            <div class="post-bar">
                                                <div class="post_topbar">
                                                    <div class="usy-dt">
                                                        <img src="${post.user.image.imageUrl}" alt=""
                                                             style="width: 50px" height="50px">
                                                        <div class="usy-name">
                                                            <h3><a href="Profile?id=${post.user.id}" title="${post.user.username}"> ${post.user.username}</a></h3>
                                                            <span id="timeStart"><img src="../images/clock.png"
                                                                                      alt="">${post.creationDate}</span>
                                                        </div>
                                                    </div>
                                                    <div class="ed-opts">
                                                        <a href="index.html#" title="" class="ed-opts-open"><i
                                                                class="la la-ellipsis-v"></i></a>
                                                        <ul class="ed-options">
                                                            <c:if test="${user.admin eq true}">
                                                                <li><a href="" class="remove" id="${post.id}" title="">Block</a>
                                                                </li>
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
                                                        <!-- Start modal here-->
                                                        <!-- Trigger the Modal -->
                                                        <%--                                                    <img id="myImg" src="img_snow.jpg" alt="Snow" style="width:100%;max-width:300px">--%>
                                                        <img id="${post.id}" src="${post.images.imageUrl}"
                                                             alt="${post.description}"
                                                             onerror="this.src='http://leeford.in/wp-content/uploads/2017/09/image-not-found.jpg';"
                                                             data-id="${post.id}"/>

                                                        <!-- The Modal -->
                                                        <div id="myModal" class="modal">

                                                            <!-- The Close Button -->
                                                            <span class="close">&times;</span>

                                                            <!-- Modal Content (The Image) -->
                                                            <img id="img01" src="${post.images.imageUrl}"
                                                                 alt="Image not found"
                                                                 onerror="this.src='http://leeford.in/wp-content/uploads/2017/09/image-not-found.jpg';"/>

                                                            <!-- Modal Caption (Image Text) -->
                                                            <div id="caption"></div>
                                                        </div>

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
                                    <%--                                    <div class="top-profiles">--%>
                                    <%--                                        <div class="pf-hd">--%>
                                    <%--                                            <h3>Top Profiles</h3>--%>
                                    <%--                                            <i class="la la-ellipsis-v"></i>--%>
                                    <%--                                        </div>--%>
                                    <%--                                        <div class="profiles-slider">--%>
                                    <%--                                            <div class="user-profy">--%>
                                    <%--                                                <img src="../images/resources/user1.png" alt="">--%>
                                    <%--                                                <h3>John Doe</h3>--%>
                                    <%--                                                <span>Graphic Designer</span>--%>
                                    <%--                                                <ul>--%>
                                    <%--                                                    <li><a href="index.html#" title="" class="followw">Follow</a></li>--%>
                                    <%--                                                    <li><a href="index.html#" title="" class="envlp"><img--%>
                                    <%--                                                            src="../images/envelop.png" alt=""></a></li>--%>
                                    <%--                                                    <li><a href="index.html#" title="" class="hire">hire</a></li>--%>
                                    <%--                                                </ul>--%>
                                    <%--                                                <a href="index.html#" title="">View Profile</a>--%>
                                    <%--                                            </div><!--user-profy end-->--%>
                                    <%--                                        </div><!--profiles-slider end-->--%>
                                    <%--                                    </div>--%>


                                </div><!--posts-section end-->
                                <div class="process-comm" id="loader" style="display: none;">
                                    <div class="spinner">
                                        <div class="bounce1"></div>
                                        <div class="bounce2"></div>
                                        <div class="bounce3"></div>
                                    </div>
                                </div><!--process-comm end-->
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
                                        <h3>Advertisements</h3>
                                        <i class="la la-ellipsis-v"></i>
                                    </div>
                                    <div class="jobs-list">
                                        <c:forEach var="advertisement" items="${advertisements}">
                                            <div class="job-info">
                                                <div class="job-details">
                                                    <a href="https://${advertisement.adURL}"
                                                       style="color:#e44d3a;">${advertisement.adURL}</a>
                                                    <p>${advertisement.description}</p>
                                                </div>
                                            </div>
                                            <!--job-info end-->
                                        </c:forEach>
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
                    <a href="index.html#" title=""><img src="../images/notify.ico" alt=""></a>
                    <span id="myCount">0</span>
                </div>
                <div class="conversation-box">
                    <div class="con-title">
                        <h3>Messages</h3>
                        <a href="index.html#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                    </div>
                    <div class="chat-list" id="notify">
                        <c:forEach items="${notifs}" var="user">
                            <div class="conv-list active">
                                <div class="usy-info">
                                    <h3>${user.username}</h3>
                                    <span>you started following him <img src="../images/ic5.png" alt=""></span>
                                </div>
                                <div class="ct-time">
                                    <span>1:55 PM</span>
                                </div>
                                <br/>
                            </div>
                        </c:forEach>
                    </div><!--chat-list end-->
                </div><!--conversation-box end-->
            </div>
        </div><!--chatbox-list end-->

    </div><!--theme-layout end-->

    <%@ include file="scripts.jsp" %>
    <script type="text/javascript" src="../js/timeline.js"></script>
    <script type="text/javascript" src="../js/weather.js"></script>
    <script>
        $(() => {
            weather.init();
        });
    </script>
</body>
</html>