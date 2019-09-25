<header>
    <div class="container">
        <div class="header-data">
            <div class="logo">
                <a href="Timeline" title=""><img src="../images/logo.png" alt=""></a>
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
                        <a href="Timeline" title="">
                            <span><img src="../images/icon1.png" alt=""></span>
                            Timeline
                        </a>
                    </li>
                    <c:if test="${user.admin eq true}">
                        <li>
                            <a href="users" title="">
                                <span><img src="../images/icon4.png" alt=""></span>
                                Profiles
                            </a>
                        </li>
                        <li>
                            <a href="jobs.jsp" title="">
                                <span><img src="../images/icon5.png" alt=""></span>
                                Advertisement
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav><!--nav end-->
            <div class="menu-btn">
                <a href="index.html#" title=""><i class="fa fa-bars"></i></a>
            </div><!--menu-btn end-->
            <div class="user-account">
                <div class="user-info">
                    <img src="${user.image.imageUrl}" alt="" style="height: 35px;width: 35px">
                    <a href="#" title="">${user.username}</a>
                    <i class="la la-sort-down"></i>
                </div>
                <div class="user-account-settingss" id="users">
                    <h3>Setting</h3>
                    <ul class="us-links">
                        <li><a href="profile-account-setting.html" title="">Account Setting</a></li>
                        <li><a href="index.html#" title="">Privacy</a></li>
                        <li><a href="index.html#" title="">Faqs</a></li>
                        <li><a href="index.html#" title="">Terms & Conditions</a></li>
                    </ul>
                    <h3 class="tc"><a href="login" title="">Logout</a></h3>
                </div><!--user-account-settingss end-->
            </div>
        </div><!--header-data end-->
    </div>
</header>
<!--header end-->