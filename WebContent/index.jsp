<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		
		<title>SuperStaff | Home</title>
		<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="css/animate.min.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/home-style.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.singlePageNav.min.js"></script>
		<script src="js/typed.js"></script>
		<script src="js/wow.min.js"></script>
		<script src="js/custom.js"></script>
	</head>
	<body id="top">

		<!-- start preloader -->
		<div class="preloader">
			<div class="sk-spinner sk-spinner-wave">
     	 		<div class="sk-rect1"></div>
       			<div class="sk-rect2"></div>
       			<div class="sk-rect3"></div>
      	 		<div class="sk-rect4"></div>
      			<div class="sk-rect5"></div>
     		</div>
    	</div>
    	<!-- end preloader -->


    	<!-- start navigation -->
		<nav class="navbar navbar-default templatemo-nav" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon icon-bar"></span>
						<span class="icon icon-bar"></span>
						<span class="icon icon-bar"></span>
					</button>
					<a href="#" class="navbar-brand"><img src="images/home/logo.png" height="40px" ></a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#top">HOME</a></li>
						<li><a href="#about">ABOUT</a></li>
						<li><a href="#team">TEAM</a></li>
						<li><a href="#service">SERVICE</a></li>
						<li><a href="#portfolio">PORTFOLIO</a></li>
						<li><a href="#contact">CONTACT</a></li>
						<li>
							<%if(session.getAttribute("smUname") == null && session.getAttribute("mgrUname") == null){%>
								<a href="login.jsp" class="external">LOGIN</a>
							<%}
							else{
								if(session.getAttribute("mgrUname") != null){%>
									<a href="mgrDashboard.jsp" class="external">DASHBOARD</a>
								<%}
								else if(session.getAttribute("smUname") != null){%>
									<a href="smDashboard.jsp" class="external">DASHBOARD</a>
								<%}
							}	
							%>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- end navigation -->

    	<!-- start home -->
    	<section id="home">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-offset-2 col-md-8">
    					<h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.9s">Dreams and teams work <span>together</span></h1>
    					<div class="element">
                            <div class="sub-element">You are as strong as we all are as a team.</div>
                            <div class="sub-element">We power innovation because we are innovators.</div>
                            <div class="sub-element">Visions are realized under multiple eyes.</div>
                        </div>
    					<a data-scroll href="#about" class="btn btn-default wow fadeInUp" data-wow-offset="50" data-wow-delay="0.6s">GET STARTED</a>
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- end home -->

    	<!-- start about -->
		<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
    					<h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">WE ARE <img src="images/home/logo.png" height="60px"></h2>
    				</div>
					<div class="col-md-4 col-sm-4 col-xs-12 wow fadeInLeft" data-wow-offset="50" data-wow-delay="0.6s">
						<div class="media">
							<div class="media-heading-wrapper">
								<div class="media-object pull-left">
									<img src="images/home/gs.png" height="40px">
								</div>
								<h3 class="media-heading">GROWTH STRATEGY</h3>
							</div>
							<div class="media-body">
								<p>Helping staff members to improve skills for their current job and acquire knowledge and skills for new roles and responsibilities in the organization</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-offset="50" data-wow-delay="0.9s">
						<div class="media">
							<div class="media-heading-wrapper">
								<div class="media-object pull-left">
									<img src="images/home/exp.png" height="40px">
								</div>
								<h3 class="media-heading">QUALITY EXPERISE</h3>
							</div>
							<div class="media-body">
								<p>Strengthening the staff member experience has numerous benefits that are all associated with staff member job satisfaction leading to higher profits and better marketplace positioning</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 wow fadeInRight" data-wow-offset="50" data-wow-delay="0.6s">
						<div class="media">
							<div class="media-heading-wrapper">
								<div class="media-object pull-left">
									<img src="images/home/support.png" height="40px">
								</div>
								<h3 class="media-heading">SUPPORT 24/7</h3>
							</div>
							<div class="media-body">
								<p>Providing 24/7 support to help staff members in need and to offer reliable service</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end about -->

    	<!-- start team -->
    	<section id="team">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
    					<h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s"><img src="images/home/logo.png" height="60px"> TEAM</h2>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="1.3s">
    					<div class="team-wrapper">
    						<img src="images/home/person1.jpg" class="img-responsive" alt="Benny Theobald">
    							<div class="team-des">
    								<h4>Benny Theobald</h4>
    								<span>Executive Director</span>
    								<p>Maintain and guide the organization's mission as determined by the board of directors</p>
    							</div>
    					</div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="1.6s">
    					<div class="team-wrapper">
    						<img src="images/home/person2.jpg" class="img-responsive" alt="Tahlia Leona">
    							<div class="team-des">
    								<h4>Tahlia Leona</h4>
    								<span>Chief Information Officer</span>
    								<p>Offer innovative technological solutions to the organization<br><br><br></p>
    							</div>
    					</div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="1.3s">
    					<div class="team-wrapper">
    						<img src="images/home/person3.jpg" class="img-responsive" alt="Siddharth Sundar">
    							<div class="team-des">
    								<h4>Siddharth Sundar</h4>
    								<span>Chief Operating Officer</span>
    								<p>Oversee daily operations to ensure the efficiency of the organization<br><br><br></p>
    							</div>
    					</div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="1.6s">
    					<div class="team-wrapper">
    						<img src="images/home/person4.jpg" class="img-responsive" alt="Hagen Sofia">
    							<div class="team-des">
    								<h4>Hagen Sofia</h4>
    								<span>Chief Financial Officer</span>
    								<p>Predict the organization's financial gains and losses to determine where and when to spend money<br><br></p>
    							</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- end team -->

    	<!-- start service -->
    	<section id="service">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
    					<h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s"><img src="images/home/logo.png" height="60px">  SERVICE</h2>
    				</div>
    				<div class="col-md-4 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
    					<img src="images/home/incentive.png" height="100px">
    					<h4>Incentives</h4>
    					<p>Range from variable pay added to a base rate of pay, prizes for accomplishing specific outcomes or recognition ceremonies to congratulate for exhibiting desired behaviors</p>
    				</div>
    				<div class="col-md-4 active wow fadeIn" data-wow-offset="50" data-wow-delay="0.9s">
    					<img src="images/home/feedback.png" height="100px">
    					<h4>Feedbacks</h4>
    					<p>Discuss possible ways to effectively work together to achieve organisational goals<br><br><br></p>
    				</div>
    				<div class="col-md-4 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
    					<img src="images/home/leaves.png" height="100px">
    					<h4>Leaves</h4>
    					<p>Inform the number of leaves available, the types of leaves eligible for, and how to apply for leaves<br><br><br></p>
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- end servie -->

    	<!-- start portfolio -->
    	<section id="portfolio">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
    					<h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s"><img src="images/home/logo.png" height="60px"> PORTFOLIO</h2>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port1.png" class="img-responsive" alt="portfolio img 1">
                        </div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port2.jpg" class="img-responsive" alt="portfolio img 2">
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port3.jpg" class="img-responsive" alt="portfolio img 3">
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port4.jpg" class="img-responsive" alt="portfolio img 4">
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port5.jpeg" class="img-responsive" alt="portfolio img 5">
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port6.jpg" class="img-responsive" alt="portfolio img 6">
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port7.png" class="img-responsive" alt="portfolio img 7">
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                        <div class="portfolio-thumb">
    					   <img src="images/home/portfolio/port8.jpg" class="img-responsive" alt="portfolio img 8">
                        </div>
                    </div>
    			</div>
    		</div>
    	</section>
    	<!-- end portfolio -->

    	<!-- start contact -->
    	<section id="contact">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
    					<h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">CONTACT  <img src="images/home/logo.png" height="60px"></h2>
    				</div>
    				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInLeft" data-wow-offset="50" data-wow-delay="0.9s">
    					<form action="contactSubmit" method="post">
    						<label>NAME</label>
    						<input name="fullname" type="text" class="form-control" id="fullname">
   						  	
                            <label>EMAIL</label>
    						<input name="email" type="email" class="form-control" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
   						  	
                            <label>MESSAGE</label>
    						<textarea name="message" rows="4" class="form-control" id="message"></textarea>
    						
                            <input type="submit" class="form-control">
    					</form>
    				</div>
    				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInRight" data-wow-offset="50" data-wow-delay="0.6s">
    					<address>
    						<p class="address-title">OUR ADDRESS</p>
    						<span>Want to get in touch ? We'd love to hear from you.<br>Here's how you can reach us...</span>
    						<p><i class="fa fa-phone"></i> +94 112 125 125</p>
    						<p><i class="fa fa-envelope-o"></i> superstaff@gmail.com</p>
    						<p><i class="fa fa-map-marker"></i> 99 Galle Rd, Colombo 00300</p>
    					</address>
    					<ul class="social-icon">
    						<li><h4>WE ARE SOCIAL</h4></li>
    						<li><a href="https://www.facebook.com/" class="fa fa-facebook"></a></li>
    						<li><a href="https://twitter.com/" class="fa fa-twitter"></a></li>
    						<li><a href="https://www.youtube.com/" class="fa fa-youtube"></a></li>
    					</ul>
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- end contact -->

        <!-- start copyright -->
        <footer id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">
                        SuperStaff &copy; Copyright 2022. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end copyright -->

	</body>
</html>