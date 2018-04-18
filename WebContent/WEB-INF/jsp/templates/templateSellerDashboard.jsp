<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>Profile Settings | Unify - Responsive Website Template</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='../../../fonts.googleapis.com/css@family=Open+Sans%253A400,300,600&amp;subset=cyrillic,latin.css'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/style.css">

	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/headers/header-default.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/footers/footer-v1.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/scrollbar/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/sky-forms-pro/skyforms/css/sky-forms.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/plugins/profileSellerPlugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

	<!-- CSS Page Style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/pages/profile.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/theme-skins/dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/user/css/profileSellerCSS/custom.css">
</head>
<body>
	<div class="wrapper">
		<!--=== Header ===-->
		<header class="wrapper dark_scheme" id="header"
			data-stellar-background-ratio="0.5">			
		</header>	
		<!--=== End Header ===-->
		
		<!--=== Profile ===-->
		<div class="container content profile">
		
		
		
		
		
		
		<tiles:insertAttribute name="contentDashboard"></tiles:insertAttribute>
		
		
		
		
		
		
		</div>
		<!--=== End Profile ===-->
		
		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="https://htmlstream.com/preview/unify-v1.9.9/index.html"><img id="logo-footer" class="footer-logo" src="assets/img/logo2-default.png" alt=""></a>
							<p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
							<p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>
						</div><!--/col-md-3-->
						<!-- End About -->

						<!-- Latest -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="posts">
								<div class="headline"><h2>Latest Posts</h2></div>
								<ul class="list-unstyled latest-list">
									<li>
										<a href="page_profile_settings.html#">Incredible content</a>
										<small>May 8, 2014</small>
									</li>
									<li>
										<a href="page_profile_settings.html#">Best shoots</a>
										<small>June 23, 2014</small>
									</li>
									<li>
										<a href="page_profile_settings.html#">New Terms and Conditions</a>
										<small>September 15, 2014</small>
									</li>
								</ul>
							</div>
						</div><!--/col-md-3-->
						<!-- End Latest -->

						<!-- Link List -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="headline"><h2>Useful Links</h2></div>
							<ul class="list-unstyled link-list">
								<li><a href="page_profile_settings.html#">About us</a><i class="fa fa-angle-right"></i></li>
								<li><a href="page_profile_settings.html#">Portfolio</a><i class="fa fa-angle-right"></i></li>
								<li><a href="page_profile_settings.html#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
								<li><a href="page_profile_settings.html#">Community</a><i class="fa fa-angle-right"></i></li>
								<li><a href="page_profile_settings.html#">Contact us</a><i class="fa fa-angle-right"></i></li>
							</ul>
						</div><!--/col-md-3-->
						<!-- End Link List -->

						<!-- Address -->
						<div class="col-md-3 map-img md-margin-bottom-40">
							<div class="headline"><h2>Contact Us</h2></div>
							<address class="md-margin-bottom-40">
								25, Lorem Lis Street, Orange <br />
								California, US <br />
								Phone: 800 123 3456 <br />
								Fax: 800 123 3456 <br />
								Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
							</address>
						</div><!--/col-md-3-->
						<!-- End Address -->
					</div>
				</div>
			</div><!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved.
								<a href="page_profile_settings.html#">Privacy Policy</a> | <a href="page_profile_settings.html#">Terms of Service</a>
							</p>
						</div>

						<!-- Social Links -->
						<div class="col-md-6">
							<ul class="footer-socials list-inline">
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
										<i class="fa fa-facebook"></i>
									</a>
								</li>
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
										<i class="fa fa-skype"></i>
									</a>
								</li>
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
										<i class="fa fa-google-plus"></i>
									</a>
								</li>
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
										<i class="fa fa-linkedin"></i>
									</a>
								</li>
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
										<i class="fa fa-pinterest"></i>
									</a>
								</li>
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
										<i class="fa fa-twitter"></i>
									</a>
								</li>
								<li>
									<a href="page_profile_settings.html#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
										<i class="fa fa-dribbble"></i>
									</a>
								</li>
							</ul>
						</div>
						<!-- End Social Links -->
					</div>
				</div>
			</div><!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	</div><!--/style-switcher-->
	<!--=== End Style Switcher ===-->
	
</body>
</html>