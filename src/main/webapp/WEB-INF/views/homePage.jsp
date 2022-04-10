<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<!-- 여기에 헤드 -->
<%@ include file="./include/homeInclude/head.jsp"%>

<body>

	<!-- 여기에 헤더 -->
	<%@ include file="./include/homeInclude/header.jsp"%>
	<!-- 여기에 top -->
	<%@ include file="./include/homeInclude/top.jsp"%>


	<!-- HOT DEAL SECTION -->
	<div id="hot-deal" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="hot-deal">
						<ul class="hot-deal-countdown">
							<li>
								<div>
									<h3>02</h3>
									<span>Days</span>
								</div>
							</li>
							<li>
								<div>
									<h3>10</h3>
									<span>Hours</span>
								</div>
							</li>
							<li>
								<div>
									<h3>34</h3>
									<span>Mins</span>
								</div>
							</li>
							<li>
								<div>
									<h3>60</h3>
									<span>Secs</span>
								</div>
							</li>
						</ul>
						<h2 class="text-uppercase">머신킹덤</h2>
						<p>다양한 전자제품을 직접 판매합니다.</p>
						<a class="primary-btn cta-btn" href="/store.do">상품 보기</a>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /HOT DEAL SECTION -->


	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<div class="shop">
						<div class="shop-img">
							<img src="/resources/dist/img/shop01.png" alt="엑박임">
						</div>
						<div class="shop-body">
							<h3>
								비싼거<br>고민된다
							</h3>
							<a href="admin/adminProductGetBoard.do?product_Seq=1" class="cta-btn">상품 으로<i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<div class="shop">
						<div class="shop-img">
							<img src="/resources/dist/img/shop03.png" alt="엑박임">
						</div>
						<div class="shop-body">
							<h3>
								적당히 비싸다<br>살만하다
							</h3>
							<a href="admin/adminProductGetBoard.do?product_Seq=2" class="cta-btn">상품 으로<i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<div class="shop">
						<div class="shop-img">
							<img src="/resources/dist/img/shop02.png" alt="엑박임">
						</div>
						<div class="shop-body">
							<h3>
								저렴하다<br>일단사자
							</h3>
							<a href="admin/adminProductGetBoard.do?product_Seq=3" class="cta-btn">상품 으로<i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
				<!-- /shop -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
									<c:if test="${admin_ProductList ne null }">
										<c:forEach items="${admin_ProductList }" var="admin_Product"> 	<!-- 반복을 위해서 필요함 -->
											<!-- product VO파일에서 이미지 저장경로중 spring 확인(진혁님은 (springEC/05_세미프로젝트)에요!) -->
											 <div class="product">
												<div class="product-img">
													<img src="../resources/upload/${admin_Product.product_realMainImg }" alt="">
												</div>
												<div class="product-body">
													<p class="product-category"><c:out value="${admin_Product.product_Category }"/></p>
													<h3 class="product-name"><a href="admin/adminProductGetBoard.do?product_Seq=${admin_Product.product_Seq }"><c:out value="${admin_Product.product_Name }"/></a></h3>
													<h4 class="product-price"><c:out value="${admin_Product.product_Price }"/>원</h4>
												</div>
												<div class="add-to-cart">
													<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 추가</button>
												</div>
											</div>
										</c:forEach>	 
									</c:if>
										<!-- /product -->

									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
	<!-- 여기에 푸터 -->
	<%@ include file="./include/homeInclude/footer.jsp"%>
	<!-- js -->
	<%@ include file="./include/homeInclude/js.jsp"%>
</body>
</html>