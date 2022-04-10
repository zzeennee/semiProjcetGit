<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<!-- 여기에 헤드 -->
<%@ include file="WEB-INF/views/include/homeInclude/head.jsp" %> 

	<body>

		<!-- 여기에 헤더 -->	
		<%@ include file="WEB-INF/views/include/homeInclude/header.jsp" %>
		<!-- 여기에 top -->
		<%@ include file="WEB-INF/views/include/homeInclude/top.jsp" %>
		

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
							<h2 class="text-uppercase">메인이벤트</h2>
							<p>최대 50%저렴합니다.</p>
							<a class="primary-btn cta-btn" href="#">상품 보기</a>
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
								<h3>비싼거<br>고민된다</h3>
								<a href="#" class="cta-btn">상품 으로<i class="fa fa-arrow-circle-right"></i></a>
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
								<h3>적당히 비싸다<br>살만하다</h3>
								<a href="#" class="cta-btn">상품 으로<i class="fa fa-arrow-circle-right"></i></a>
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
								<h3>저렴하다<br>일단사자</h3>
								<a href="#" class="cta-btn">상품 으로<i class="fa fa-arrow-circle-right"></i></a>
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

				
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		<!-- 여기에 푸터 -->
		<%@ include file="WEB-INF/views/include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="WEB-INF/views/include/homeInclude/js.jsp" %>
	</body>
</html>