<%@ include file="header.jsp"%>
<body>

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
								<a href="about.jsp#" title="" class="not-box-openm">
									<span><img src="images/icon6.png" alt=""></span>
									Messages
								</a>
								<div class="notification-box msg" id="message">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="about.jsp#" title="">Clear all</a>
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
								<a href="about.jsp#" title="" class="not-box-open">
									<span><img src="images/icon7.png" alt=""></span>
									Notification
								</a>
								<div class="notification-box noti" id="notification">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="about.jsp#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="about.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="about.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="about.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="about.jsp#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="about.jsp#" title="">View All Notification</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
						</ul>
					</nav><!--nav end-->
					<div class="menu-btn">
						<a href="about.jsp#" title=""><i class="fa fa-bars"></i></a>
					</div><!--menu-btn end-->
					<div class="user-account">
						<div class="user-info">
							<img src="images/resources/user.png" alt="">
							<a href="about.jsp#" title="">John</a>
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
								<li><a href="about.jsp#" title="">Privacy</a></li>
								<li><a href="about.jsp#" title="">Faqs</a></li>
								<li><a href="about.jsp#" title="">Terms & Conditions</a></li>
							</ul>
							<h3 class="tc"><a href="sign-in.jsp" title="">Logout</a></h3>
						</div><!--user-account-settingss end-->
					</div>
				</div><!--header-data end-->
			</div>
		</header><!--header end-->
		<section class="banner">
			<div class="bannerimage">
			<img src="images/about.png" alt="image">
		</div>
			<div class="bennertext">
			<div class="innertitle">
				<h2>World's largest freelancing and job portal<br> 
                social networking marketplace.</h2>                
                <p>We connect over 3 Million employers and freelancers globally from over 237<br> countries, regions, and territories</p>
            </div>
            </div>
            <span class="banner-title">About us</span>
		</section>	
		<section class="Company-overview">
			<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<h2>
						Company Overview
					</h2>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean felis massa, commodo sed fringilla id, dignissim ut eros. Aliquam at lacinia diam, eget scelerisque massa. Nunc ut porta ante. Praesent blandit, neque nec hendrerit luctus, sem urna imperdiet ligula, eu egestas purus massa dictum arcu. Integer cursus enim nec magna dapibus laoreet. Donec egestas fringilla risus quis volutpat. Aliquam semper massa ut sollicitudin consectetur. Suspendisse ac iaculis ligula. Duis ut velit id nisi vulputate dapibus.
					</p>
				</div>
				<div class="col-md-6 col-sm-12">
					<img src="images/about3.png" alt="image">
				</div>
			</div>
		</div>
		</section>
		<section>
			<div class="mapouter"><div class="gmap_canvas"><iframe id="gmap_canvas" src="https://maps.google.com/maps?q=university%20of%20san%20francisco&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe><a href="https://www.pureblack.de"></a></div></div>
		</section>
		<section class="services">
			<div class="container">
				<div class="video">
					<iframe class="video-iframe"  src="https://www.youtube.com/embed/jzCwiu22C_c"  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-12">
						<div class="blog">
							<img src="images/blog.png" alt="image">
							<h2>Our Blog</h2>
							<a href="about.jsp#">View Blog</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="blog">
							<img src="images/career.png" alt="image">
							<h2>Career Opportunites</h2>
							<a href="about.jsp#">Join Our Team</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="blog">
							<img src="images/forum.png" alt="image">
							<h2>Help Forum</h2>
							<a href="about.jsp#">Visit Help Forum</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer>
			<div class="footy-sec mn no-margin">
				<div class="container">
					<ul>
						<li><a href="help-center.jsp" title="">Help Center</a></li>
						<li><a href="about.jsp" title="">About</a></li>
						<li><a href="about.jsp#" title="">Privacy Policy</a></li>
						<li><a href="about.jsp#" title="">Community Guidelines</a></li>
						<li><a href="about.jsp#" title="">Cookies Policy</a></li>
						<li><a href="about.jsp#" title="">Career</a></li>
						<li><a href="forum.jsp" title="">Forum</a></li>
						<li><a href="about.jsp#" title="">Language</a></li>
						<li><a href="about.jsp#" title="">Copyright Policy</a></li>
					</ul>
					<p><img src="images/copy-icon2.png" alt="">Copyright 2019</p>
					<img class="fl-rgt" src="images/logo2.png" alt="">
				</div>
			</div>
		</footer><!--footer end-->



<%@ include file="scripts.jsp"%>
</body>
</html>