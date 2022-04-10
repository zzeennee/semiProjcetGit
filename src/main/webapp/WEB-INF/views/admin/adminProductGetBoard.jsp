<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% String pj = "../resources/"; %>

<!DOCTYPE html>
<html>

<body>
	<!-- 여기에 헤드 -->
	<%@ include file="../include/homeInclude/head.jsp" %> 
	<!-- 여기에 헤더 -->	
	<%@ include file="../include/homeInclude/header.jsp" %>
	<!-- 여기에 top -->
	<%@ include file="../include/homeInclude/top.jsp" %>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5">
						<img width="400" src="../resources/upload/${admin_Product.product_realMainImg} " alt="${admin_Product.product_MainImg}">
					</div>
					<!-- /Product main img -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<form id="frm" method="post" action="">
							<input name="product_Seq" type="hidden" value="${admin_Product.product_Seq}" />
							<h2 class="product-name">${admin_Product.product_Name }</h2>
							<p>모델명 : ${admin_Product.product_ModelName}</p>
							<div>
								<h3 class="product-price">${admin_Product.product_Price }원</h3>
								<span class="product-available">남은 수량:${admin_Product.product_Vol}</span>
							</div>
							<p>${admin_Product.product_ShortContent}</p>
							<div class="add-to-cart">
								<div class="qty-label">
									<div class="input-number">
										<input type="number"><br/>
									</div>
								</div>
								<br/>
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니</button>
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>구매하기</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">요약</a></li>
								<li><a data-toggle="tab" href="#tab2">상세 정보</a></li>
								<li><a data-toggle="tab" href="#tab3">리뷰 보기</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>${admin_Product.product_ShortContent }</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<img width="400" src="../resources/upload/${admin_Product.product_BrandImg} " alt="${admin_Product.product_BrandImg}">
											<p>${admin_Product.product_Content }</p>
											<br/>
											<hr/>
											<br/>
											<img width="400" src="../resources/upload/${admin_Product.product_realMainImg} " alt="${admin_Product.product_MainImg}">
											<img width="400" src="../resources/upload/${admin_Product.product_SubImg} " alt="${admin_Product.product_SubImg}">
											<p>${admin_Product.product_Content2 }</p>
											<br/>
											<hr/>
											<br/>
											<p>제품 등록 및 수정 일 : ${admin_Product.product_Date }</p>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">작성자명1John</h5>
															<p class="date">날짜시분초27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>리뷰내용 ::: 리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">작성자명들어감2John</h5>
															<p class="date">날짜시분초들어감27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>리뷰내용2 ::: 리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">작성자명3John</h5>
															<p class="date">날짜시분초27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>리뷰내용 ::: 리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.리뷰내용이 들어갑니다.</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="Your Name">
													<input class="input" type="email" placeholder="Your Email">
													<textarea class="input" placeholder="Your Review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn">Submit</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->	
	<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>
</body>
</html>