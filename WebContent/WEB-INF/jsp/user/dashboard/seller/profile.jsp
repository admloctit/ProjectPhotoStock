<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<!-- Middle Content Start -->

	<div class="vd_content-wrapper">
		<div class="vd_container">
			<div class="vd_content clearfix">
				<div class="vd_head-section clearfix">
					<div class="vd_panel-header">
						<div class="vd_panel-menu hidden-sm hidden-xs"
							data-intro="<strong>Expand Control</strong><br/>To expand content page horizontally, vertically, or Both. If you just need one button just simply remove the other button code."
							data-step=5 data-position="left">
							<div data-action="remove-navbar"
								data-original-title="Remove Navigation Bar Toggle"
								data-toggle="tooltip" data-placement="bottom"
								class="remove-navbar-button menu">
								<i class="fa fa-arrows-h"></i>
							</div>
							<div data-action="remove-header"
								data-original-title="Remove Top Menu Toggle"
								data-toggle="tooltip" data-placement="bottom"
								class="remove-header-button menu">
								<i class="fa fa-arrows-v"></i>
							</div>
							<div data-action="fullscreen"
								data-original-title="Remove Navigation Bar and Top Menu Toggle"
								data-toggle="tooltip" data-placement="bottom"
								class="fullscreen-button menu">
								<i class="glyphicon glyphicon-fullscreen"></i>
							</div>

						</div>

					</div>
				</div>
				<div class="vd_title-section clearfix">
					<div class="vd_panel-header no-subtitle">
						<h1>User Profile Page - ${success }</h1>
					</div>
				</div>
				<div class="vd_content-section clearfix">
					<div class="row">
						<div class="col-sm-3" style="width: 30%">
							<div class="panel widget light-widget panel-bd-top">
								<div class="panel-heading no-title"></div>
								<div class="panel-body">
									<div class="text-center vd_info-parent">
										<img alt="example image" 
											src="${pageContext.request.contextPath }/assets/user/images/avatarAccount/${sessionScope.seller.photo }">
									</div>
									<div class="row">
										<div class="col-xs-12">
											<a class="btn vd_btn vd_bg-green btn-xs btn-block no-br"><i
												class="fa fa-check-circle append-icon"></i>Friends</a>
										</div>
										<div class="col-xs-12">
											<a class="btn vd_btn vd_bg-grey btn-xs btn-block no-br"><i
												class="fa fa-envelope append-icon"></i>Send Message</a>
										</div>
									</div>
									<h2 class="font-semibold mgbt-xs-5">${sessionScope.seller.firstName } ${sessionScope.seller.lastName }</h2>
									<div class="mgtp-20">
										<table class="table table-striped table-hover">
											<tbody>
												<tr>
													<td style="width: 60%;">Status</td>
													<c:if test="${sessionScope.seller.enabled == true}">
														<td><span class="label label-success">Active</span></td>
													</c:if>
													<c:if test="${sessionScope.seller.enabled == false}">
														<td><span class="label" style="background-color: red;">Block</span></td>
													</c:if>
												</tr>
												<tr>
													<td>User Rating</td>
													<td><i class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i></td>
												</tr>
												<tr>
													<td>Member Since</td>
													<td>${sessionScope.seller.joinDate }</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-9" style="width: 70%">
							<div class="tabs widget">
								<ul class="nav nav-tabs widget">
									<li class="active"><a data-toggle="tab"
										href="pages-user-profile.php.html#profile-tab"> Profile <span
											class="menu-active"><i class="fa fa-caret-up"></i></span>
									</a></li>
									<li><a data-toggle="tab"
										href="pages-user-profile.php.html#projects-tab"> Projects
											<span class="menu-active"><i class="fa fa-caret-up"></i></span>
									</a></li>
									<li><a data-toggle="tab"
										href="pages-user-profile.php.html#photos-tab"> Photos <span
											class="menu-active"><i class="fa fa-caret-up"></i></span>
									</a></li>
									<li><a data-toggle="tab"
										href="pages-user-profile.php.html#friends-tab"> Friends <span
											class="menu-active"><i class="fa fa-caret-up"></i></span>
									</a></li>
									<li><a data-toggle="tab"
										href="pages-user-profile.php.html#groups-tab"> Groups <span
											class="menu-active"><i class="fa fa-caret-up"></i></span>
									</a></li>
								</ul>
								<div class="tab-content">
									<div id="profile-tab" class="tab-pane active">
										<div class="pd-20">
											<div class="vd_info tr">
												<a class="btn vd_btn btn-xs vd_bg-yellow" 
														href="${pageContext.request.contextPath }/dashboardSeller/settingProfile.html"> <i
													class="fa fa-pencil append-icon"></i> Edit
												</a>
											</div>
											<h3 class="mgbt-xs-15 mgtp-10 font-semibold">
												<i class="icon-user mgr-10 profile-icon"></i> ABOUT
											</h3>
											<div class="row">
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">First Name:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.firstName }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Last Name:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.lastName }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">User Name:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.username }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Email:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.email }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Gender:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.gender }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Birthday</label>
														<div class="col-xs-7 controls">
															${sessionScope.seller.birthday }
														</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Address:</label>
														<div class="col-xs-7 controls">
															${sessionScope.seller.address }
														</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Phone:</label>
														<div class="col-xs-7 controls">
															${sessionScope.seller.phone }
														</div>
														<!-- col-sm-10 -->
													</div>
												</div>
											</div>
											<hr class="pd-10" />
										</div>
										<!-- pd-20 -->
									</div>
									<!-- home-tab -->

									<div id="projects-tab" class="tab-pane">
										<div class="pd-20">
											<div class="vd_info tr">
												<a class="btn vd_btn btn-xs vd_bg-yellow"> <i
													class="fa fa-plus append-icon"></i> Add Project
												</a>
											</div>
											<h3 class="mgbt-xs-15 mgtp-10 font-semibold">
												<i class="fa fa-bolt mgr-10 profile-icon"></i> PROJECTS
											</h3>
											<table class="table table-striped table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th>Logo / Photos</th>
														<th>Clients</th>
														<th>Start Date</th>
														<th>Status</th>
														<th>Revenue</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td><img height="80" src="img/avatar/avatar.jpg"
															alt="example image"></td>
														<td>Zoe Corp</td>
														<td class="center">2010/02/03</td>
														<td class="center"><span class="label label-success">Finish</span>
														</td>
														<td class="center"><strong>$ 250</strong></td>
														<td class="menu-action rounded-btn"><a
															class="btn menu-icon vd_bg-green" data-placement="top"
															data-toggle="tooltip" data-original-title="view"> <i
																class="fa fa-eye"></i>
														</a> <a class="btn menu-icon vd_bg-yellow"
															data-placement="top" data-toggle="tooltip"
															data-original-title="edit"> <i class="fa fa-pencil"></i>
														</a> <a class="btn menu-icon vd_bg-red" data-placement="top"
															data-toggle="tooltip" data-original-title="delete"> <i
																class="fa fa-times"></i>
														</a></td>
													</tr>
													<tr>
														<td>2</td>
														<td><img height="80" src="img/avatar/avatar-2.jpg"
															alt="example image"></td>
														<td>Zoe Corp</td>
														<td class="center">2010/02/03</td>
														<td class="center"><span class="label label-success">Finish</span>
														</td>
														<td class="center"><strong>$ 250</strong></td>
														<td class="menu-action rounded-btn"><a
															class="btn menu-icon vd_bg-green" data-placement="top"
															data-toggle="tooltip" data-original-title="view"> <i
																class="fa fa-eye"></i>
														</a> <a class="btn menu-icon vd_bg-yellow"
															data-placement="top" data-toggle="tooltip"
															data-original-title="edit"> <i class="fa fa-pencil"></i>
														</a> <a class="btn menu-icon vd_bg-red" data-placement="top"
															data-toggle="tooltip" data-original-title="delete"> <i
																class="fa fa-times"></i>
														</a></td>
													</tr>
													<tr>
														<td>3</td>
														<td><img height="80" src="img/avatar/avatar-3.jpg"
															alt="example image"></td>
														<td>Zoe Corp</td>
														<td class="center">2010/02/03</td>
														<td class="center"><span class="label label-success">Finish</span>
														</td>
														<td class="center"><strong>$ 250</strong></td>
														<td class="menu-action rounded-btn"><a
															class="btn menu-icon vd_bg-green" data-placement="top"
															data-toggle="tooltip" data-original-title="view"> <i
																class="fa fa-eye"></i>
														</a> <a class="btn menu-icon vd_bg-yellow"
															data-placement="top" data-toggle="tooltip"
															data-original-title="edit"> <i class="fa fa-pencil"></i>
														</a> <a class="btn menu-icon vd_bg-red" data-placement="top"
															data-toggle="tooltip" data-original-title="delete"> <i
																class="fa fa-times"></i>
														</a></td>
													</tr>
													<tr>
														<td>4</td>
														<td><img height="80" src="img/avatar/avatar-4.jpg"
															alt="example image"></td>
														<td>Zoe Corp</td>
														<td class="center">2010/02/03</td>
														<td class="center"><span class="label label-success">Finish</span>
														</td>
														<td class="center"><strong>$ 250</strong></td>
														<td class="menu-action rounded-btn"><a
															class="btn menu-icon vd_bg-green" data-placement="top"
															data-toggle="tooltip" data-original-title="view"> <i
																class="fa fa-eye"></i>
														</a> <a class="btn menu-icon vd_bg-yellow"
															data-placement="top" data-toggle="tooltip"
															data-original-title="edit"> <i class="fa fa-pencil"></i>
														</a> <a class="btn menu-icon vd_bg-red" data-placement="top"
															data-toggle="tooltip" data-original-title="delete"> <i
																class="fa fa-times"></i>
														</a></td>
													</tr>
													<tr>
														<td>5</td>
														<td><img height="80" src="img/avatar/avatar-5.jpg"
															alt="example image"></td>
														<td>Zoe Corp</td>
														<td class="center">2010/02/03</td>
														<td class="center"><span class="label label-success">Finish</span>
														</td>
														<td class="center"><strong>$ 250</strong></td>
														<td class="menu-action rounded-btn"><a
															class="btn menu-icon vd_bg-green" data-placement="top"
															data-toggle="tooltip" data-original-title="view"> <i
																class="fa fa-eye"></i>
														</a> <a class="btn menu-icon vd_bg-yellow"
															data-placement="top" data-toggle="tooltip"
															data-original-title="edit"> <i class="fa fa-pencil"></i>
														</a> <a class="btn menu-icon vd_bg-red" data-placement="top"
															data-toggle="tooltip" data-original-title="delete"> <i
																class="fa fa-times"></i>
														</a></td>
													</tr>


												</tbody>
											</table>
											<div class=""></div>
										</div>
									</div>

									<div id="photos-tab" class="tab-pane">
										<div class="pd-20">
											<div class="vd_info tr">
												<a class="btn vd_btn btn-xs vd_bg-yellow"> <i
													class="fa fa-plus append-icon"></i> Add Photo
												</a>
											</div>
											<h3 class="mgbt-xs-15 mgtp-10 font-semibold">
												<i class="fa fa-picture-o mgr-10 profile-icon"></i> PHOTOS
											</h3>
											<ul id="filters" class="nav nav-pills">
												<li class="active"><a
													href="pages-user-profile.php.html#photos-1" data-filter="*">All</a></li>
												<li><a href="pages-user-profile.php.html#photos-2"
													data-filter=".filter-1">Photos of You</a></li>
												<li><a href="pages-user-profile.php.html#photos-3"
													data-filter=".filter-2">Scenery</a></li>
												<li><a href="pages-user-profile.php.html#photos-4"
													data-filter=".filter-3">Vacation</a></li>
											</ul>
											<br />
											<div class="isotope js-isotope vd_gallery">
												<div class="gallery-item  filter-1">
													<a href="img/photos/01.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/01.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Felicious</span> de louis
															amigos
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/01.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-2">
													<a href="img/photos/03.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/03.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Sola</span> Aprecios
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/03.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>
												</div>

												<div class="gallery-item  filter-2">
													<a href="img/photos/08.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/08.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Lorem</span> ipsum
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/08.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-3">
													<a href="img/photos/15.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/15.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Doler</span> sit amet
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/15.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-1">
													<a href="img/photos/02.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/02.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Gracias</span> mundo
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/02.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-2">
													<a href="img/photos/06.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/06.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Solero</span> dorona
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/06.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>



												</div>
												<div class="gallery-item  filter-3">
													<a href="img/photos/08.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/08.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Weinto</span> grametto
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/08.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-2">
													<a href="img/photos/04.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/04.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Sara</span> he yaso
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/04.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>


												</div>
												<div class="gallery-item  filter-1">
													<a href="img/photos/10.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/10.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Numero</span> uno
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/10.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>



												</div>

												<div class="gallery-item   filter-3">
													<a href="img/photos/09.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/09.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Beon</span> dukim
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/09.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>
												</div>
												<div class="gallery-item  filter-2">
													<a href="img/photos/01.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/01.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Gretia</span> de louis amigos
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/01.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>


												</div>
												<div class="gallery-item  filter-1">
													<a href="img/photos/11.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/11.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Title</span> de koko
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/11.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-1">
													<a href="img/photos/12.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/12.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Some</span> random text
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/12.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>

												</div>
												<div class="gallery-item  filter-3">
													<a href="img/photos/13.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/13.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Soleram</span> drago
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/13.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>


												</div>
												<div class="gallery-item  filter-2">
													<a href="img/photos/14.jpg" data-rel="prettyPhoto[2]">
														<img alt="example image" src="img/photos/14.jpg">
														<div class="bg-cover"></div>
													</a>
													<div class="vd_info">
														<h3 class="mgbt-xs-15">
															<span class="font-semibold">Gretia</span> de louis
														</h3>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="img/photos/14.jpg"
															data-rel="prettyPhoto[1]"><i class="fa fa-search"></i></a>
														<a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-thumbs-up"></i></a> <a
															class="vd_bg-green vd_white mgr-10 btn vd_round-btn btn-xs"
															role="button" href="pages-user-profile.php.html#"><i
															class="fa fa-comments"></i></a>
													</div>


												</div>

											</div>

											<div class="clearfix"></div>

										</div>
										<!-- pd-20 -->
									</div>
									<!-- photos tab -->
									<div id="friends-tab" class="tab-pane">
										<div class="pd-20">
											<h3 class="mgbt-xs-15 mgtp-10 font-semibold">
												<i class="fa fa-users mgr-10 profile-icon"></i> FRIENDS
											</h3>
											<ul class="nav nav-pills">
												<li class="active"><a
													href="pages-user-profile.php.html#photos-1"
													data-toggle="tab">Friends</a></li>
												<li><a href="pages-user-profile.php.html#photos-2"
													data-toggle="tab">Pending Request</a></li>
												<li><a href="pages-user-profile.php.html#photos-3"
													data-toggle="tab">Blacklisted</a></li>
											</ul>
											<div
												class="content-grid column-xs-3 column-sm-4 column-md-4 column-lg-6 height-xs-4 mgbt-xs-20">
												<div>
													<ul class="list-wrapper">
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Gabriella Montagna <span
																class="menu-info"> <span class="menu-date">San
																		Diego</span> <span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li class="warning"><a
															href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-2.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Jonathan Fuzzy <span
																class="menu-info"> <span class="menu-date">Seattle</span>
																	<span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-3.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Sakura Hinata <span
																class="menu-info"> <span class="menu-date">Hawaii</span>
																	<span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-4.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Rikudou Sennin <span
																class="menu-info"> <span class="menu-date">Las
																		Vegas</span> <span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-5.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Kim Kardiosun <span
																class="menu-info"> <span class="menu-date">New
																		York</span> <span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-6.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Brad Pita <span
																class="menu-info"> <span class="menu-date">Seattle</span>
																	<span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-7.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Celline Dior <span
																class="menu-info"> <span class="menu-date">Los
																		Angeles</span> <span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>
														<li><a href="pages-user-profile.php.html#"> <span
																class="menu-icon"><img
																	src="img/avatar/avatar-8.jpg" alt="example image"></span>
														</a> <span class="menu-text"> Goerge Bruno Marz <span
																class="menu-info"> <span class="menu-date">Las
																		Vegas</span> <span class="menu-action"> <span
																		data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Approve"
																		class="menu-action-icon vd_green vd_bd-green">
																			<i class="fa fa-check"></i>
																	</span> <span data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Reject"
																		class="menu-action-icon vd_red vd_bd-red"> <i
																			class="fa fa-times"></i>
																	</span>
																</span>
															</span>
														</span></li>

													</ul>
												</div>
											</div>
										</div>
										<!-- pd-20 -->
									</div>
									<!-- photos tab -->
									<div id="groups-tab" class="tab-pane">
										<div class="pd-20">
											<h3 class="mgbt-xs-15 mgtp-10 font-semibold">
												<i class="fa fa-leaf mgr-10 profile-icon"></i> GROUPS
											</h3>
											<div class="row">
												<div class="col-xs-12 col-sm-6">
													<div class="content-list content-large menu-action-right">
														<ul class="list-wrapper pd-lr-15">
															<li>
																<div class="menu-icon">
																	<a href="pages-user-profile.php.html#"><img
																		src="img/groups/logo-01.jpg" alt="example image"></a>
																</div>
																<div class="menu-text">
																	<h4 class="mgbt-xs-0">
																		<a href="pages-user-profile.php.html#">Groupis
																			Group</a>
																	</h4>
																	<div class="menu-info">
																		<span class="menu-date"> 3467 members </span>

																	</div>
																	<p>Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit, sed do eiusmod tempor incidtation
																		ullamco...</p>
																</div>
																<div class="menu-action">
																	<div data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Leave Group"
																		class="menu-action-icon vd_red">
																		<i class="fa fa-times"></i>
																	</div>
																</div>
															</li>
														</ul>
														<!-- list-wrapper -->
													</div>
													<!-- content-list -->
												</div>
												<!-- col-xs-12 col-sm-6 -->

												<div class="col-xs-12 col-sm-6">
													<div class="content-list content-large menu-action-right">
														<ul class="list-wrapper pd-lr-15">
															<li>
																<div class="menu-icon">
																	<a href="pages-user-profile.php.html#"><img
																		src="img/groups/logo-02.jpg" alt="example image"></a>
																</div>
																<div class="menu-text">
																	<h4 class="mgbt-xs-0">
																		<a href="pages-user-profile.php.html#">Ztormin
																			Community</a>
																	</h4>
																	<div class="menu-info">
																		<span class="menu-date"> 12597 members </span>

																	</div>
																	<p>Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit, sed do eiusmod tempor incidtation
																		ullamco...</p>
																</div>
																<div class="menu-action">
																	<div data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Leave Group"
																		class="menu-action-icon vd_red">
																		<i class="fa fa-times"></i>
																	</div>
																</div>
															</li>
														</ul>
														<!-- list-wrapper -->
													</div>
													<!-- content-list -->
												</div>
												<!-- col-xs-12 col-sm-6 -->

												<div class="col-xs-12 col-sm-6">
													<div class="content-list content-large menu-action-right">
														<ul class="list-wrapper pd-lr-15">
															<li>
																<div class="menu-icon">
																	<a href="pages-user-profile.php.html#"><img
																		src="img/groups/logo-03.jpg" alt="example image"></a>
																</div>
																<div class="menu-text">
																	<h4 class="mgbt-xs-0">
																		<a href="pages-user-profile.php.html#">Book Lovers</a>
																	</h4>
																	<div class="menu-info">
																		<span class="menu-date"> 67 members </span>

																	</div>
																	<p>Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit, sed do eiusmod tempor incidtation
																		ullamco...</p>
																</div>
																<div class="menu-action">
																	<div data-placement="bottom" data-toggle="tooltip"
																		data-original-title="Leave Group"
																		class="menu-action-icon vd_red">
																		<i class="fa fa-times"></i>
																	</div>
																</div>
															</li>
														</ul>
														<!-- list-wrapper -->
													</div>
													<!-- content-list -->
												</div>
												<!-- col-xs-12 col-sm-6 -->




											</div>
											<!-- row -->
										</div>
										<!-- pd-20 -->
									</div>
									<!-- groups tab -->

								</div>
								<!-- tab-content -->
							</div>
							<!-- tabs-widget -->
						</div>
					</div>
					<!-- row -->

				</div>
				<!-- .vd_content-section -->

			</div>
			<!-- .vd_content -->
		</div>
		<!-- .vd_container -->
	</div>
	<!-- .vd_content-wrapper -->

	<!-- Middle Content End -->