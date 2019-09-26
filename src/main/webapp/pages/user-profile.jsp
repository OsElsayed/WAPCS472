<%@ include file="head.jsp" %>

<body>
<div class="wrapper">
    <%@ include file="header.jsp" %>


    <section class="cover-sec">
        <img src="../images/resources/cover-img.jpg" alt="">
    </section>


    <main>
        <div class="main-section">
            <div class="container">
                <div class="main-section-data">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="main-left-sidebar">
                                <div class="user_profile">
                                    <div class="user-pro-img">
                                        <img height="150px" width="150px" src="${user.image.imageUrl}" alt="">
                                    </div><!--user-pro-img end-->
                                    <div class="user_pro_status">
                                        <ul class="flw-hr">
                                            <li><a href="user-profile.html#" title="" class="flww"><i
                                                    class="la la-plus"></i> Follow</a></li>
                                        </ul>
                                        <ul class="flw-status">
                                            <li>
                                                <span>Following</span>
                                                <b>34</b>
                                            </li>
                                            <li>
                                                <span>Followers</span>
                                                <b>155</b>
                                            </li>
                                        </ul>
                                    </div><!--user_pro_status end-->
                                    <ul class="social_links">
                                        <li><a href="user-profile.html#" title=""><i class="la la-globe"></i>
                                            www.example.com</a></li>
                                        <li><a href="user-profile.html#" title=""><i class="fa fa-facebook-square"></i>
                                            Http://www.facebook.com/john...</a></li>
                                        <li><a href="user-profile.html#" title=""><i class="fa fa-twitter"></i>
                                            Http://www.Twitter.com/john...</a></li>
                                        <li><a href="user-profile.html#" title=""><i
                                                class="fa fa-google-plus-square"></i> Http://www.googleplus.com/john...</a>
                                        </li>
                                        <li><a href="user-profile.html#" title=""><i class="fa fa-behance-square"></i>
                                            Http://www.behance.com/john...</a></li>
                                        <li><a href="user-profile.html#" title=""><i class="fa fa-pinterest"></i>
                                            Http://www.pinterest.com/john...</a></li>
                                        <li><a href="user-profile.html#" title=""><i class="fa fa-instagram"></i>
                                            Http://www.instagram.com/john...</a></li>
                                        <li><a href="user-profile.html#" title=""><i class="fa fa-youtube"></i>
                                            Http://www.youtube.com/john...</a></li>
                                    </ul>
                                </div><!--user_profile end-->
                                <div class="suggestions full-width">
                                    <div class="sd-title">
                                        <h3>Followings</h3>
                                        <i class="la la-ellipsis-v"></i>
                                    </div><!--sd-title end-->
                                    <div class="suggestions-list">
                                        <c:forEach var="f" items="${followings}">
                                            <div class="suggestion-usd">
                                                <img src="../images/resources/s1.png" alt="">
                                                <div class="sgt-text">
                                                    <h4>${f.username}</h4>
                                                </div>
                                                <span><i class="la la-plus"></i></span>
                                            </div>
                                        </c:forEach>
                                        <%--                                        <div class="view-more">--%>
                                        <%--                                            <a href="user-profile.html#" title="">View More</a>--%>
                                        <%--                                        </div>--%>
                                    </div><!--suggestions-list end-->
                                </div><!--suggestions end-->
                            </div><!--main-left-sidebar end-->
                        </div>
                        <div class="col-lg-6">
                            <div class="main-ws-sec">
                                <div class="user-tab-sec">
                                    <h3>${user.username}</h3>
                                    <div class="tab-feed">
                                        <ul>
                                            <li data-tab="feed-dd" class="active">
                                                <a href="#" title="">
                                                    <img src="../images/ic1.png" alt="">
                                                    <span>Feed</span>
                                                </a>
                                            </li>
                                            <li data-tab="info-dd">
                                                <a href="#" title="">
                                                    <img src="../images/ic2.png" alt="">
                                                    <span>Info</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div><!-- tab-feed end-->
                                </div><!--user-tab-sec end-->
                                <div class="product-feed-tab current" id="feed-dd">
                                    <div class="post-topbar">
                                        <%--                                        <div class="user-picy">--%>
                                        <img src="${user.image.imageUrl}" alt="" style="width: 50px;border-radius: 80%;"
                                             height="50px">
                                        <%--                                        </div>--%>
                                        <div class="post-st">
                                            <ul>
                                                <li><a class="post-jb active" href="index.html#" title="">Post</a></li>
                                            </ul>
                                        </div><!--post-st end-->
                                    </div><!--post-topbar end-->
                                    <div class="posts-section">
                                        <c:forEach var="p" items="${posts}">
                                            <div class="post-bar">
                                                <div class="post_topbar">
                                                    <div class="usy-dt">
                                                        <img src="${user.image.imageUrl}" alt="" height="50px">
                                                        <div class="usy-name">
                                                            <h3>${user.username}</h3>
                                                            <span id="timeStart"><img src="../images/clock.png"
                                                                                      alt="">${post.creationDate}</span>
                                                        </div>
                                                    </div>
                                                    <div class="ed-opts">
                                                        <a href="user-profile.html#" title="" class="ed-opts-open"><i
                                                                class="la la-ellipsis-v"></i></a>
                                                        <ul class="ed-options">
                                                            <li><a href="user-profile.html#" title="">Edit Post</a></li>
                                                            <c:if test="${user.admin eq true}">
                                                                <li><a href="" class="remove" id="${post.id}" title="">Block</a>
                                                                </li>
                                                            </c:if>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="job_descp">
                                                    <p>${p.description} </p>
                                                    <img src="${p.images.imageUrl}">
                                                </div>
                                                <div class="job-status-bar">
                                                    <ul class="like-com">
                                                        <li>
                                                            <a href="user-profile.html#"><i class="fas fa-heart"></i>
                                                                Like</a>
                                                            <img src="../images/liked-img.png" alt="">
                                                            <span>25</span>
                                                        </li>
                                                        <li><a href="user-profile.html#" class="com"><i
                                                                class="fas fa-comment-alt"></i> Comments 15</a></li>
                                                    </ul>
                                                    <a href="user-profile.html#"><i class="fas fa-eye"></i>Views 50</a>
                                                </div>
                                            </div>
                                            <!--post-bar end-->
                                        </c:forEach>
                                        <div class="process-comm">
                                            <div class="spinner">
                                                <div class="bounce1"></div>
                                                <div class="bounce2"></div>
                                                <div class="bounce3"></div>
                                            </div>
                                        </div><!--process-comm end-->
                                    </div><!--posts-section end-->
                                </div><!--product-feed-tab end-->
                                <div class="product-feed-tab " id="info-dd">
                                    <div class="post-project-fields">
                                        <form>
                                            <div class="col-lg-12">
                                                <h3>Edit your profile info:</h3>
                                            </div>
                                            <br/>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <input type="text" id="username" name="username"
                                                           placeholder="User Name" value="${user.username}">
                                                </div>
                                                <div class="col-lg-12">
                                                    <input type="text" id="imageUrl" name="imageUrl"
                                                           placeholder="Image URL " value="${user.image.imageUrl}">
                                                </div>
                                                <div class="col-lg-12">
                                                    <ul>
                                                        <li>
                                                            <button id="btnSave" type="submit" value="post">Save
                                                            </button>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </form>
                                    </div><!--post-project-fields end-->
                                </div><!--product-info-tab end-->

                            </div><!--main-ws-sec end-->
                        </div>
                        <div class="col-lg-3">
                            <div class="right-sidebar">
                                <div class="message-btn">
                                    <a href="user-profile.html#" title=""><i class="fa fa-envelope"></i> Message</a>
                                </div>
                                <div class="widget widget-portfolio">
                                    <div class="wd-heady">
                                        <h3>Portfolio</h3>
                                        <img src="../images/photo-icon.png" alt="">
                                    </div>
                                    <div class="pf-gallery">
                                        <ul>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery1.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery2.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery3.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery4.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery5.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery6.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery7.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery8.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery9.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery10.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery11.png" alt=""></a></li>
                                            <li><a href="user-profile.html#" title=""><img
                                                    src="../images/resources/pf-gallery12.png" alt=""></a></li>
                                        </ul>
                                    </div><!--pf-gallery end-->
                                </div><!--widget-portfolio end-->
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
                                <%--                                <li><a href="#" title="">Cancel</a></li>--%>
                            </ul>
                        </div>
                    </div>
                </form>
            </div><!--post-project-fields end-->
            <a href="index.html#" title=""><i class="la la-times-circle-o"></i></a>
        </div><!--post-project end-->
    </div><!--post-project-popup end-->

    <footer>
        <div class="footy-sec mn no-margin">
            <div class="container">
                <ul>
                    <li><a href="help-center.html" title="">Help Center</a></li>
                    <li><a href="about.html" title="">About</a></li>
                    <li><a href="user-profile.html#" title="">Privacy Policy</a></li>
                    <li><a href="user-profile.html#" title="">Community Guidelines</a></li>
                    <li><a href="user-profile.html#" title="">Cookies Policy</a></li>
                    <li><a href="user-profile.html#" title="">Career</a></li>
                    <li><a href="forum.html" title="">Forum</a></li>
                    <li><a href="user-profile.html#" title="">Language</a></li>
                    <li><a href="user-profile.html#" title="">Copyright Policy</a></li>
                </ul>
                <p><img src="../images/copy-icon2.png" alt="">Copyright 2019</p>
                <img class="fl-rgt" src="../images/logo2.png" alt="">
            </div>
        </div>
    </footer><!--footer end-->


    <div class="overview-box" id="create-portfolio">
        <div class="overview-edit">
            <h3>Create Portfolio</h3>
            <form>
                <input type="text" name="pf-name" placeholder="Portfolio Name">
                <div class="file-submit">
                    <input type="file" name="file">
                </div>
                <div class="pf-img">
                    <img src="../images/resources/np.png" alt="">
                </div>
                <input type="text" name="website-url" placeholder="htp://www.example.com">
                <button type="submit" class="save">Save</button>
                <button type="submit" class="cancel">Cancel</button>
            </form>
            <a href="user-profile.html#" title="" class="close-box"><i class="la la-close"></i></a>
        </div><!--overview-edit end-->
    </div><!--overview-box end-->


</div><!--theme-layout end-->


<%@ include file="scripts.jsp" %>
<script type="text/javascript" src="../js/pages/profile.js"></script>
</body>
</html>