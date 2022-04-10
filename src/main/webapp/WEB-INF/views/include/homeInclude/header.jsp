<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- HEADER -->
<header>
	<!-- TOP HEADER -->
	<div id="top-header">
		<div class="container">
			<!-- <ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul> -->
			<ul class="header-links pull-right">
				<c:choose>
					<c:when test="${sessionScope.login eq 'loginON'}">
						<li><a
							href="../myPage/myPageHome.do?account_Id=${sessionScope.logname }">${sessionScope.logname }님</a></li>
						<li><a href="../myPage/logout.do">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="../myPage/login.do">로그인</a></li>
						<li><a href="../myPage/signup.do">회원가입</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="/homePage/notice.do">공지사항</a></li>
				<li><a href="/homePage/event.do">이벤트</a></li>
				<li><a href="/homePage/Qna.do">고객센터</a></li>
			</ul>
		</div>
	</div>
	<!-- /TOP HEADER -->
	<!-- MAIN HEADER -->
	<div id="header">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- LOGO -->
				<div class="col-md-3 ">
					<div class="header-logo">
						<a href="/" class="logo"> <img width='70'
							src="../resources/dist/img/logo.png" alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form name="frmSelect" method="post" action="/admin/adminProductList.do">
							<select class="input-select" name="searchOption">
								<option value="all" <c:out value="${nn.searchOption == 'all'?'selected':''}"/>>전체 검색</option>
								<option value="product_Name" <c:out value="${nn.searchOption == 'product_Name'?'selected':''}"/>>상품명</option>
								<option value="product_Category" <c:out value="${nn.searchOption == 'product_Category'?'selected':''}"/>>브랜드명</option>
							</select> <input class="input" placeholder="검색어를 입력하세요.">
							<button class="search-btn">검색</button>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<c:choose>
							<c:when test="${sessionScope.login eq 'loginON'}">
							<!-- myPage -->
								<div>
									<a
										href="../myPage/myPageHome.do?account_Id=${sessionScope.logname }">
										<i class="fa fa-user-o"></i><span>마이 페이지</span>
									</a>
								</div>
								<!-- myPage -->
								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown"
										aria-expanded="true"> <i class="fa fa-shopping-cart"></i>
										<span>장바구니</span>
									</a>
									<!-- <div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
 													<img src="../resources/dist/img/product01.png" alt=""> 
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
 													<img src="../resources/dist/img/product02.png" alt=""> 
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div> -->
								</div>
								<!-- /Cart -->
							</c:when>
						</c:choose>
						<!-- Menu Toogle -->
						<div class="menu-toggle">
							<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
							</a>
						</div>
						<!-- /Menu Toogle -->
					</div>
				</div>
				<!-- /ACCOUNT -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</div>
	<!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->