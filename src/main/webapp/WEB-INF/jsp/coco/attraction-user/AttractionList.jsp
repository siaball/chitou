<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChiTou-景點門票-景點總覽</title>
<%@ include file="/WEB-INF/includes/CSSAndJS.jsp"%>

<!-- 分頁 -->
<link rel="stylesheet" type="text/css" href="css/coco/bobson/master.css">
<!--font-awesome.min.css -->
<link rel="stylesheet" href="css/coco/list/font-awesome.min.css">

<!--animate.css -->
<link rel="stylesheet" href="css/coco/list/animate.css">

<!--hover.css -->
<link rel="stylesheet" href="css/coco/list/hover-min.css">

<!--datepicker.css -->
<link rel="stylesheet" href="css/coco/list/datepicker.css">

<!--owl.carousel.css -->
<link rel="stylesheet" href="css/coco/list/owl.carousel.min.css">
<link rel="stylesheet" href="css/coco/list/owl.theme.default.min.css">

<!-- range css -->
<link rel="stylesheet" href="css/coco/list/jquery-ui.min.css">

<!--bootstrap.min.css -->
<link rel="stylesheet" href="css/coco/list/bootstrap.min.css">

<!-- bootsnav -->
<link rel="stylesheet" href="css/coco/list/bootsnav.css">

<!--style.css -->
<link rel="stylesheet" href="css/coco/list/style.css">

<!--responsive.css -->
<link rel="stylesheet" href="css/coco/list/responsive.css">

<!-- js -->
<script src="/js/coco/off-canvas.js"></script>


<script src="assets/js/jquery.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->

		<!--modernizr.min.js-->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


		<!--bootstrap.min.js-->
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- bootsnav js -->
		<script src="assets/js/bootsnav.js"></script>

		<!-- jquery.filterizr.min.js -->
		<script src="assets/js/jquery.filterizr.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

		<!--jquery-ui.min.js-->
		<script src="assets/js/jquery-ui.min.js"></script>

		<!-- counter js -->
		<script src="assets/js/jquery.counterup.min.js"></script>
		<script src="assets/js/waypoints.min.js"></script>

		<!--owl.carousel.js-->
		<script src="assets/js/owl.carousel.min.js"></script>

		<!-- jquery.sticky.js -->
		<script src="assets/js/jquery.sticky.js"></script>

		<!--datepicker.js-->
		<script src="assets/js/datepicker.js"></script>

		<!--Custom JS-->
		<script src="assets/js/custom.js"></script>
</head>
<body>
<%-- 	<%@ include file="/WEB-INF/includes/coco/attraction/Header.jsp"%> --%>

	<!--about-us start -->
	<section id="home" class="about-us">
		<div class="container">
			<div class="about-us-content">
				<div class="row">
					<div class="col-sm-12">
						<div class="single-about-us">
							<div class="about-us-txt">
								<br>
								<h2>


								</h2>

							</div>
							<!--/.about-us-txt-->
						</div>
						<!--/.single-about-us-->
					</div>
					<!--/.col-->
					<div class="col-sm-0">
						<div class="single-about-us">

						</div>
						<!--/.single-about-us-->
					</div>
					<!--/.col-->
				</div>
				<!--/.row-->
			</div>
			<!--/.about-us-content-->
		</div>
		<!--/.container-->

	</section>
	<!--/.about-us-->
	<!--about-us end -->
	<!--travel-box start-->
	<section class="travel-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="single-travel-boxes">
						<div id="desc-tabs" class="desc-tabs">



							<!-- Tab panes -->
							<div class="tab-content">

								<div role="tabpanel" class="tab-pane active fade in" id="tours">
									<div class="tab-para">

										<div class="row">
											<div class="col-lg-12 col-md-4 col-sm-12">
												<div class="single-tab-select-box">

													<h2>搜尋景點</h2>

													<div class="custom-input-group">
														<input type="email" class="form-control"
															placeholder="輸入您想查詢的景點">
														<button class="appsLand-btn subscribe-btn">搜尋</button>
														<div class="clearfix"></div>

													</div>



												</div>
												<!--/.single-tab-select-box-->
											</div>
											<!--/.col-->

										</div>
										<!--/.row-->

										<div class="row">
											<div class="col-sm-5">
												<div class="travel-budget">
													<div class="row">
														<div class="col-md-3 col-sm-4">
															<h3>價格 :</h3>
														</div>
														<!--/.col-->
														<div class="co-md-9 col-sm-8">
															<div class="travel-filter">
																<div class="info_widget">
																	<div class="price_filter">

																		<div id="slider-range"></div>
																		<!--/.slider-range-->

																		<div class="price_slider_amount">
																			<input type="text" id="amount" name="price"
																				placeholder="Add Your Price" />
																		</div>
																		<!--/.price_slider_amount-->
																	</div>
																	<!--/.price-filter-->
																</div>
																<!--/.info_widget-->
															</div>
															<!--/.travel-filter-->
														</div>
														<!--/.col-->
													</div>
													<!--/.row-->
												</div>
												<!--/.travel-budget-->
											</div>
											<!--/.col-->


										</div>
										<!--/.row-->

									</div>
									<!--/.tab-para-->

								</div>
								<!--/.tabpannel-->




							</div>
							<!--/.tab content-->
						</div>
						<!--/.desc-tabs-->
					</div>
					<!--/.single-travel-box-->
				</div>
				<!--/.col-->
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->

	</section>
	<!--/.travel-box-->
	<!--travel-box end-->


	<!--packages start-->
	<section id="pack" class="packages">
		<div class="container">
<!-- 			<div class="gallary-header text-center"> -->
<!-- 				<h2> -->
<!-- 					special packages -->
<!-- 				</h2> -->
<!-- 				<p> -->
<!-- 					Duis aute irure dolor in velit esse cillum dolore eu fugiat nulla. -->
<!-- 				</p> -->
<!-- 			</div> -->
			<!--/.gallery-header-->
			<div class="packages-content">
				<div class="row">

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="/images/coco/newhomepage/image6.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>italy <span class="pull-right">$499</span></h3>
								<div class="packages-para">
									<p>
										<span>
											<i class="fa fa-angle-right"></i> 3 Days 2 nights
										</span>
										<i class="fa fa-angle-right"></i> 5 star accomodation
									</p>
									<p>
										<span>
											<i class="fa fa-angle-right"></i> transportation
										</span>
										<i class="fa fa-angle-right"></i> food facilities
									</p>
								</div>
								<!--/.packages-para-->
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
									</p>
								</div>
								<!--/.packages-review-->
								<div class="about-btn">
									<button class="about-view packages-btn">
										詳細內文
									</button>
								</div>
								<!--/.about-btn-->
							</div>
							<!--/.single-package-item-txt-->
						</div>
						<!--/.single-package-item-->

					</div>
					<!--/.col-->

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="/images/coco/newhomepage/image4.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>england <span class="pull-right">$1499</span></h3>
								<div class="packages-para">
									<p>
										<span>
											<i class="fa fa-angle-right"></i> 6 Days 7 nights
										</span>
										<i class="fa fa-angle-right"></i> 5 star accomodation
									</p>
									<p>
										<span>
											<i class="fa fa-angle-right"></i> transportation
										</span>
										<i class="fa fa-angle-right"></i> Free food
									</p>
								</div>
								<!--/.packages-para-->
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<span>344 reviews</span>
									</p>
								</div>
								<!--/.packages-review-->
								<div class="about-btn">
									<button class="about-view packages-btn">
										book now
									</button>
								</div>
								<!--/.about-btn-->
							</div>
							<!--/.single-package-item-txt-->
						</div>
						<!--/.single-package-item-->

					</div>
					<!--/.col-->

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="/images/coco/newhomepage/image3-.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>france <span class="pull-right">$1199</span></h3>
								<div class="packages-para">
									<p>
										<span>
											<i class="fa fa-angle-right"></i> 5 Days 6 nights
										</span>
										<i class="fa fa-angle-right"></i> 5 star accomodation
									</p>
									<p>
										<span>
											<i class="fa fa-angle-right"></i> transportation
										</span>
										<i class="fa fa-angle-right"></i> food facilities
									</p>
								</div>
								<!--/.packages-para-->
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<span>544 reviews</span>
									</p>
								</div>
								<!--/.packages-review-->
								<div class="about-btn">
									<button class="about-view packages-btn">
										book now
									</button>
								</div>
								<!--/.about-btn-->
							</div>
							<!--/.single-package-item-txt-->
						</div>
						<!--/.single-package-item-->

					</div>
					<!--/.col-->

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="/images/coco/newhomepage/image5.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>india <span class="pull-right">$799</span></h3>
								<div class="packages-para">
									<p>
										<span>
											<i class="fa fa-angle-right"></i> 4 Days 5 nights
										</span>
										<i class="fa fa-angle-right"></i> 5 star accomodation
									</p>
									<p>
										<span>
											<i class="fa fa-angle-right"></i> transportation
										</span>
										<i class="fa fa-angle-right"></i> food facilities
									</p>
								</div>
								<!--/.packages-para-->
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<span>625 reviews</span>
									</p>
								</div>
								<!--/.packages-review-->
								<div class="about-btn">
									<button class="about-view packages-btn">
										book now
									</button>
								</div>
								<!--/.about-btn-->
							</div>
							<!--/.single-package-item-txt-->
						</div>
						<!--/.single-package-item-->

					</div>
					<!--/.col-->

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="/images/coco/newhomepage/image6.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>spain <span class="pull-right">$999</span></h3>
								<div class="packages-para">
									<p>
										<span>
											<i class="fa fa-angle-right"></i> 4 Days 4 nights
										</span>
										<i class="fa fa-angle-right"></i> 5 star accomodation
									</p>
									<p>
										<span>
											<i class="fa fa-angle-right"></i> transportation
										</span>
										<i class="fa fa-angle-right"></i> food facilities
									</p>
								</div>
								<!--/.packages-para-->
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<span>379 reviews</span>
									</p>
								</div>
								<!--/.packages-review-->
								<div class="about-btn">
									<button class="about-view packages-btn">
										book now
									</button>
								</div>
								<!--/.about-btn-->
							</div>
							<!--/.single-package-item-txt-->
						</div>
						<!--/.single-package-item-->

					</div>
					<!--/.col-->

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="/images/coco/newhomepage/image6.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>thailand <span class="pull-right">$799</span></h3>
								<div class="packages-para">
									<p>
										<span>
											<i class="fa fa-angle-right"></i> 5 Days 6 nights
										</span>
										<i class="fa fa-angle-right"></i> 5 star accomodation
									</p>
									<p>
										<span>
											<i class="fa fa-angle-right"></i> transportation
										</span>
										<i class="fa fa-angle-right"></i> food facilities
									</p>
								</div>
								<!--/.packages-para-->
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<span>447 reviews</span>
									</p>
								</div>
								<!--/.packages-review-->
								<div class="about-btn">
									<button class="about-view packages-btn">
										book now
									</button>
								</div>
								<!--/.about-btn-->
							</div>
							<!--/.single-package-item-txt-->
						</div>
						<!--/.single-package-item-->

					</div>
					<!--/.col-->

				</div>
				<!--/.row-->
			</div>
			<!--/.packages-content-->



			<!--wrap clearfix-->

			<div class="pageBox">

				<ul class="clearfix">



					<li><a href="video_1.html" class="active">1</a></li>


					<li><a href="video_2.html">2</a></li>


					<li><a href="video_3.html">3</a></li>


					<li><a href="video_4.html">4</a></li>


					<li><a href="video_5.html">5</a></li>


					<li><a href="video_6.html">6</a></li>


					<li><a href="video_7.html">7</a></li>




					<li><a href="video_2.html" class="function">next</a></li>

					<li><a href="video_12.html" class="function">last</a></li>


				</ul>

			</div>



		</div>
	<%@ include file="/WEB-INF/includes/coco/attraction/Footer.jsp"%>

</body>
</html>