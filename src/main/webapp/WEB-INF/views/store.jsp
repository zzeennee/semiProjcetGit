<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<!-- 여기에 헤드 -->
	<%@ include file="./include/homeInclude/head.jsp" %> 
<body>
	<!-- 여기에 헤더 -->	
	<%@ include file="./include/homeInclude/header.jsp" %>
	<!-- 여기에 top -->
	<%@ include file="./include/homeInclude/top.jsp" %>
		

						<!-- store products -->
						<div class="row">
					<c:if test="${admin_ProductList ne null }">
						<c:forEach items="${admin_ProductList }" var="admin_Product"> 	<!-- 반복을 위해서 필요함 -->
							<!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="../resources/upload/${admin_Product.product_realMainImg }" alt="${admin_Product.product_MainImg }">
										<div class="product-label">
											<span class="new">NEW</span>
										</div>
									</div>
								 	<div class="product-body">
										<p class="product-category"><c:out value="${admin_Product.product_Category }"/></p>
										<h3 class="product-name"><a href="adminProductGetBoard.do?product_Seq=${admin_Product.product_Seq }"><c:out value="${admin_Product.product_Name }"/></a></h3>
										<h4 class="product-price">${admin_Product.product_Price }</h4>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 추가</button>
									</div>
								</div>
							</div>
						</c:forEach>	 
					</c:if>
		

							<div class="clearfix visible-sm visible-xs"></div>


							<div class="clearfix visible-lg visible-md"></div>


							<div class="clearfix visible-sm visible-xs"></div>

							<div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>


							<div class="clearfix visible-sm visible-xs"></div>
						</div>
						<!-- /store products -->

						<!-- store bottom filter -->
						<div class="store-filter clearfix">
							<span class="store-qty">Showing 20-100 products</span>
							<ul class="store-pagination">
								<li class="active">1</li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
							</ul>
						</div>
						<!-- /store bottom filter -->
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		<!-- 여기에 푸터 -->
	<%@ include file="./include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="./include/homeInclude/js.jsp" %>
</body>
</html>