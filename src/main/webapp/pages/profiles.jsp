<%@ include file="head.jsp" %>
<body>


<div class="wrapper">


    <%@ include file="header.jsp"%>


    <section class="companies-info">
        <div class="container">
            <div class="company-title">
                <h3><i class="la la-user"></i> All Users</h3>
            </div><!--company-title end-->
            <div class="companies-list">
                <div class="row">
                    <c:forEach items="${users}" var="user">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12" data-id="${user.id}">
                            <div class="company_profile_info">
                                <div class="company-up-info">
									<c:choose>
										<c:when test="${not empty user.image.imageUrl}">
											<img src="${user.image.imageUrl}" alt="${user.username}">
										</c:when>
										<c:otherwise>
											<img src="http://simpleicon.com/wp-content/uploads/user1.png" alt="${user.username}">
										</c:otherwise>
									</c:choose>
                                    <h3>${user.username}</h3>
                                    <h4>${user.email}</h4>
                                    <ul>
                                        <c:choose>
                                            <c:when test="${user.active}">
                                                <li><button class="message-us" data-enable="false"><i
                                                        class="la la-user-times"></i>Disable</button></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><button class="message-us" data-enable="true"><i
                                                        class="la la-user"></i>Activate</button></li>
                                            </c:otherwise>
                                        </c:choose>
										<c:choose>
											<c:when test="${user.admin eq true}">
												<li><button class="hire-us" data-admin="false"><i class="la la-minus-circle"></i> Remove Admin</button></li>
											</c:when>
											<c:otherwise>
												<li><button class="hire-us" data-admin="true"><i class="la la-user-secret"></i>Make Admin</button></li>
											</c:otherwise>
										</c:choose>
                                    </ul>
                                </div>
                                <a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
                            </div><!--company_profile_info end-->
                        </div>
                    </c:forEach>
                </div>
            </div><!--companies-list end-->
            <div class="process-comm loader" style="display: none;">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div><!--process-comm end-->
        </div>
    </section><!--companies-info end-->
    <footer>
        <div class="footy-sec mn no-margin">
            <div class="container">
                <ul>
                    <li><a href="help-center.jsp" title="">Help Center</a></li>
                    <li><a href="about.jsp" title="">About</a></li>
                    <li><a href="profiles.jsp#" title="">Privacy Policy</a></li>
                    <li><a href="profiles.jsp#" title="">Community Guidelines</a></li>
                    <li><a href="profiles.jsp#" title="">Cookies Policy</a></li>
                    <li><a href="profiles.jsp#" title="">Career</a></li>
                    <li><a href="forum.jsp" title="">Forum</a></li>
                    <li><a href="profiles.jsp#" title="">Language</a></li>
                    <li><a href="profiles.jsp#" title="">Copyright Policy</a></li>
                </ul>
                <p><img src="../images/copy-icon2.png" alt="">Copyright 2019</p>
                <img class="fl-rgt" src="../images/logo2.png" alt="">
            </div>
        </div>
    </footer>

</div><!--theme-layout end-->
<%@ include file="scripts.jsp" %>
<script src="../js/pages/users.js" ></script>
<script>
    $(() => {
        users.init();
    });
</script>
</body>
</html>