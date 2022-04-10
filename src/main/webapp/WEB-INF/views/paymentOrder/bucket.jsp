<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

<!-- AdminLTE App -->
<!--<script src="../resources/dist/js/adminlte.min.js"></script> -->

<style type="text/css">
.card-info {
	background: #f5f6f7;
	display: flex;
	flex-direction: column;
	width: 100%;
	height: 100vh;
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
<script type="text/javascript">

window.onload = function(){	 
	
	//장바구니 제거
    $("#sDelete").click(function(){
	    var chk_arr = [];
	    $(".deleteCheck:checked").each(function(){
	       var chk = $(this).val();
	       chk_arr.push(chk);
	    });
	    
	    for( var snum of chk_arr ){
	       $(location).attr('href', "bdelete.do?product_number="+snum);
	    }	
	    
	   
	});
    
    //변경 버튼 클릭시 변경 금액 보여주기
    $(".sChange").click(function(){
    	total();
	});
	
    //홈페이지 진입시 총 결제금액 보여주기
    total();
}

function total(){
	
	var amount = [];
	var price = [];
	var sum = 0;    	
	
	
	 $(".w").each(function(){
		var w = $(this).text();
	      	 price.push(w);
	    });
	 
	 $(".pay").each(function(){
	       var pa = $(this).val();
	       amount.push(pa);
	    });
	
		for(let i=0; i<amount.length; i++){
			sum = sum+(amount[i]*price[i]);
		}
		
		 var count = 0;
	    	$(".sum").each(function(){	    		
	    		$(this).text(amount[count]*price[count]);
	    		
	    		count = count+1;
	   		});
		
   	$("#result").text((sum+2500));
   	$("#total").text(sum);
	
}




</script>
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
		<form class="form-horizontal" action="/paymentOrder/payment.do" method='post'>
			<div class="card-body">
				<table id="listtable" class="table table-striped projects">
					<thead>
						<tr>
							<th style="width: 30px"></th>
							<th style="width: 100px">상품명</th>
							<th style="width: 100px">제품 상세</th>
							<th style="width: 100px">수량</th>
							<th style="width: 100px" class="text-center">금액</th>
							<th style="width: 100px" class="text-center">합계</th>
							<th style="width: 130px"><button type="button" id="sDelete"
									class="btn btn-block btn-primary">선택삭제</button>
						</tr>
					</thead>
					<tbody class="listgood">
						<%
									int sum = 1;
								%>
						<c:forEach items="${bucketList }" var="bucket">
							<tr>
								<td><%=sum%></td>
								<td><a> ${bucket.product_name } </a></td>
								<td>${bucket.product_image }</td>
								<td class="project_progress"><small><input
										type="text" id="pay" class="pay" style="width: 30%"
										value="${bucket.product_amount}"></input></small>
									<button type="button" class="sChange">변경</button>
								<td class="project-state" id="won" class="won"
									value="${bucket.product_price }"><span> <label
										class="w" value="${bucket.product_price }">${bucket.product_price }</label><label>원</label>
								</span></td>
								<td class="project-state" id="won" class="won"
									value="${bucket.product_price }"><span> <label
										class="sum"
										value="${bucket.product_price * bucket.product_amount }">${bucket.product_price * bucket.product_amount }</label><label>원</label>
								</span></td>
								<td class="project-actions text-right"><div
										class="form-check">
										<input class="deleteCheck" type="checkbox" style="width: 50%"
											value="${bucket.product_number }"> 삭제
									</div></td>
							</tr>
							<%
										sum++;
									%>

						</c:forEach>
						<div class="col-6">
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th style="width: 50%">총 제품금액:</th>
											<td><label id="total"></label><label>원</label></td>
										</tr>

										<tr>
											<th><label>배송료:</label></th>
											<td><label>2500원</label></td>
										</tr>
										<tr>
											<th>총 결제금액:</th>
											<td><label id="result"></label><label>원</label></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="card-footer">
								<a href="/paymentOrder/payment.do"><button type="submit"
										class="btn btn-info" style="margin-left: 180px;">주문하기</button></a>
							</div>
						</div>
					</tbody>
				</table>
			</div>
			<!-- /.card-body -->
		</form>
	</div>
	<!-- jQuery -->
	<script src="../resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../resources/dist/js/adminlte.min.js"></script>

</body>
</html>