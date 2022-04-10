<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="../resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

<!-- AdminLTE App -->
<!--<script src="../resources/dist/js/adminlte.min.js"></script> -->

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style type="text/css">
.card-info {
	background: #f5f6f7;
	display: flex;
	flex-direction: column;
	width: 100%;
	/* height: 100vh; */
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
	margin: 0;
}

.card-header {
	background: none;
}

.card-bottom {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.btn-info {
	padding: 6px 120px;
	background: #00c2cb;
	border: #00c2cb;
}
</style>
</head>
<body>

	<div class="card card-info">
		<!-- <div class="card-header">
			<img src='../resources/dist/img/logo.png' width='200' height='200'>
			<h3 class="card-title">로그인</h3>
		</div> -->
		<div>
			<a href='home.jsp'> <img src='../resources/dist/img/logo.png'
				width='200'>
			</a>
		</div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal" action="savePayment.do" method='post'>
				
						<div class="card card-info">
							<div class="card-header">
								<h3 class="card-title">결제정보</h3>
							</div>
							
							<div class="card-body" width='400px'>
								<label>주문자</label>							
								<div class="input-group mb-3">							
									<input type="text" class="form-control" id="sender_name"
										name="sender_name" placeholder="보내는 사람 이름" required>
								</div>

								<div class="input-group mb-3">

									<input type="email" class="form-control" id="sender_email"
										name="sender_email" placeholder="이메일" required>
								</div>

								<div class="input-group mb-3">
									<input type="text" class="form-control" id="sender_tel"
										name="sender_tel" placeholder="전화번호" required>
								</div>


								<div class="input-group">				
									<input type="text" id="sender_zonecode" name="sender_zonecode"
										class="form-control" placeholder="우편번호" style="margin-right:15px; border-radius: 5px;" readonly>
									<button type="button" id="address_search_sender"
										class="btn btn-info float-left" style="padding-left: 10px;padding-right: 10px;margin-right: 400px;">주소찾기</button>
								</div>

								<div class="input-group">
									<input type="text" id="sender_address" name="sender_address"
										class="form-control" placeholder="주소" readonly>
								</div>

								<div class="input-group">
									<input type="text" id="sender_daddress" name="sender_daddress"
										class="form-control" placeholder="상세주소" required>
								</div>

								<br></br> <label>받으시는 분</label>
								<div class="input-group mb-3">
									<input type="text" id="receiver_name" name="receiver_name"
										class="form-control" placeholder="받으시는 분" required>
								</div>

								<div class="input-group mb-3">
									<input type="email" id="receiver_email" name="receiver_email"
										class="form-control" placeholder="이메일" required>
								</div>


								<div class="input-group mb-3">
									<input type="text" id="receiver_tel" name="receiver_tel"
										class="form-control" placeholder="전화번호" required>
								</div>

								<div class="input-group">
									
									<input type="text" id="receiver_zonecode" name="receiver_zonecode"
										class="form-control" placeholder="우편번호" style="margin-right:15px; border-radius: 5px;" readonly>
									
									<button type="button" id="address_search_receiver"
										class="btn btn-info float-left" style="padding-left: 10px;padding-right: 10px;margin-right: 400px;">주소찾기</button>
								</div>

								<div class="input-group">
									<input type="text" id="receiver_address"
										name="receiver_address" class="form-control" placeholder="주소"
										readonly>
								</div>

								<div class="input-group">
									<input type="text" id="receiver_daddress"
										name="receiver_daddress" class="form-control"
										placeholder="상세주소" required>
								</div>

								<br />
								<hr />
								<br />
								<div class="form-group">
									<label for="inputDescription">배송시 요청사항</label>
									<textarea id="user_require" name="user_require"
										class="form-control" rows="4" required></textarea>
								</div>
								<hr />
								<br /> <label>상품내역</label>

								<div class="col-12 table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>수량</th>
												<th>상품명</th>
												<th>상품번호</th>
												<th>상품상세</th>
												<th>합계</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${bucketList }" var="bucket">
												<tr>
													<td>${bucket.product_amount }</td>
													<td>${bucket.product_name }</td>
													<td>${bucket.product_number }</td>
													<td>${bucket.product_image }</td>
													<td class="project-state"  class="won"
														value="${bucket.product_price }"><span> 
														<label class="sum" value="${bucket.product_price * bucket.product_amount }">${bucket.product_price * bucket.product_amount }</label><label>원</label>
													</span></td>
												</tr>

											</c:forEach>

										</tbody>
									</table>
								</div>

								
								<hr />								
									<p class="lead" style="margin-left: 10px;"><label style="margin-bottom: 0px;">결제내역</label></p>
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<th style="width: 50%">제품금액:<label id="total" style="margin-left: 10px;"></label><label>원</label></th>
													
												</tr>
												<tr>
													<th>배송비: <label style="margin-left: 10px;">2500원</label></th>
								
												</tr>

												<tr>
													<input type="hidden" id="pricehidden" name="price">
													<th>총 결제금액:<label id="price" style="margin-left: 10px;"></label><label>원</label></th>
												
												</tr>
											</tbody>
										</table>
									</div>
								




								<div class="card-footer">
									<a href="bucket.do"><button type="button" class="btn btn-info float-left" style="margin-right:40px">이전</button></a>
									<a href="savePayment.do"><button type="submit"
											class="btn btn-info float-right">다음</button></a>
								</div>


								<!-- /.col-lg-6 -->

								<!-- /input-group -->
							</div>

							
						</div>
					</form>
			<!-- /.card-body -->
	</div>

</body>
<!-- jQuery -->
<script src="../resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../resources/dist/js/adminlte.min.js"></script>

<!-- 카카오 주소 찾기 API -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_search_sender")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//발신자 주소검색 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("sender_zonecode").value = data.zonecode;
											document
													.getElementById("sender_address").value = data.address; // 주소 넣기
										}
									}).open();
						});

		document
				.getElementById("address_search_receiver")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//수신자 지도검색 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("receiver_zonecode").value = data.zonecode;
											document
													.getElementById("receiver_address").value = data.address; // 주소 넣기
										}
									}).open();
						});
		
		
		//홈페이지 진입시 총 결제금액 보여주기
	    total();
	}
	
	function total(){
		
		var price = [];
		var totalSum = 0;  	
		
		 
		//가격 배열에 담기
		var i=0;
		 $(".sum").each(function(){
		       var pa = $(this).text();
		      	price.push(pa);		      	
		  });
		
		//가격*수량 = 총합
			for(let i=0; i<price.length; i++){
				totalSum = totalSum+(price[i]*1);
				
			}
			
		$("#pricehidden").val((totalSum+2500));
	   	$("#price").text((totalSum+2500));
	   	$("#total").text(totalSum);
		
	}
</script>
</html>