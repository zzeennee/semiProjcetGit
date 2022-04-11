<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 시스템 | 머신킹덤</title>


</head>
<body>

	
	<input type="hidden" id="orderdata_seq" name="price" value="${pay.orderdata_seq }">
	<input type="hidden" id="buyer_name" name="price" value="${pay.sender_name }">
	<input type="hidden" id="buyer_email" name="price" value="${pay.sender_email }">
	<input type="hidden" id="buyer_tel" name="price" value="${pay.sender_tel }">
	<input type="hidden" id="buyer_addr" name="price" value="${pay.sender_address }">
	<input type="hidden" id="buyer_postcode" name="price" value="${pay.sender_zonecode }">
	<input type="hidden" id="buyer_price" name="price" value="${pay.price }">

</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<!-- 결제 시스템 -->
<script type="text/javascript">
window.onload = function(){	 
    pay();
}
	
	function pay(){		
		var IMP = window.IMP; // 생략 가능
		IMP.init("imp60674928"); // 예: imp00000000

		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(), //결제번호
		    name : '전자랜드', //상품이름
		    amount : $("#buyer_price").val(), //판매 가격
		    buyer_email : $("#buyer_email").val(),
		    buyer_name : $("#buyer_name").val(),
		    buyer_tel : $("#buyer_tel").val(),
		    buyer_addr : $("#buyer_addr").val(),
		    buyer_postcode : $("#buyer_postcode").val()
		}, function(rsp) {
			
			<!-- 결제 성공 -->
			if ( rsp.success ) {
		    	alert("결제가 완료되었습니다. ");
		        
		    	$(location).attr('href', 'payment_sucess.do?orderdata_seq='+$("#orderdata_seq").val());
		    	
		    } else {
		    	
		    	<!-- 결제 실패 -->
		    	 alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		    	 $(location).attr('href', 'payment_fail.do');
		    }
		});
		
	}
  </script>
</html>

