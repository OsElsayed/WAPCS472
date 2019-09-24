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
								<a href="profiles.jsp#" title="" class="not-box-openm">
									<span><img src="images/icon6.png" alt=""></span>
									Messages
								</a>
								<div class="notification-box msg" id="message">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="profiles.jsp#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.jsp" title="">Jassica William</a> </h3>
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
							  					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempo incididunt ut labore et dolore magna aliqua.</p>
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
								<a href="profiles.jsp#" title="" class="not-box-open">
									<span><img src="images/icon7.png" alt=""></span>
									Notification
								</a>
								<div class="notification-box noti" id="notification">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="profiles.jsp#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="profiles.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="profiles.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="profiles.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="profiles.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="profiles.jsp#" title="">View All Notification</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
						</ul>
					</nav><!--nav end-->
					<div class="menu-btn">
						<a href="profiles.jsp#" title=""><i class="fa fa-bars"></i></a>
					</div><!--menu-btn end-->
					<div class="user-account">
						<div class="user-info">
							<img src="images/resources/user.png" alt="">
							<a href="profiles.jsp#" title="">John</a>
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
								<li><a href="profiles.jsp#" title="">Privacy</a></li>
								<li><a href="profiles.jsp#" title="">Faqs</a></li>
								<li><a href="profiles.jsp#" title="">Terms & Conditions</a></li>
							</ul>
							<h3 class="tc"><a href="sign-in.jsp" title="">Logout</a></h3>
						</div><!--user-account-settingss end-->
					</div>
				</div><!--header-data end-->
			</div>
		</header><!--header end-->		



		<section class="companies-info">
			<div class="container">
				<div class="company-title">
					<h3>All Companies</h3>
				</div><!--company-title end-->
				<div class="companies-list">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon1.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon2.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon3.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon4.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon5.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon6.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon7.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon8.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon9.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon10.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon11.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="images/resources/pf-icon12.png" alt="">
									<h3>John Doe</h3>
									<h4>Graphic Designer</h4>
									<ul>
										<li><a href="profiles.jsp#" title="" class="follow">Follow</a></li>
										<li><a href="profiles.jsp#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
										<li><a href="profiles.jsp#" title="" class="hire-us">Hire</a></li>
									</ul>
								</div>
								<a href="user-profile.jsp" title="" class="view-more-pro">View Profile</a>
							</div><!--company_profile_info end-->
						</div>
					</div>
				</div><!--companies-list end-->
				<div class="process-comm">
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
					<p><img src="images/copy-icon2.png" alt="">Copyright 2019</p>
					<img class="fl-rgt" src="images/logo2.png" alt="">
				</div>
			</div>
		</footer>

	</div><!--theme-layout end-->
<%@ include file="scripts.jsp"%>
</body>
</html>