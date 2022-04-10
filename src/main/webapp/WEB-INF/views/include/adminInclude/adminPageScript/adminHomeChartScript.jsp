<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Page specific script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script type="text/javascript">
/* 랜덤 색상표  */
function colorize() {
	var r = Math.floor(Math.random()*200);
	var g = Math.floor(Math.random()*200);
	var b = Math.floor(Math.random()*200);
	var color = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)';
	return color;
}
/* 월별 회원 가입수 차트  */
var jsonDataAccount = ${account};
var jsonObjectAccount = JSON.stringify(jsonDataAccount);
var jDataAccount = JSON.parse(jsonObjectAccount);
		
var labelListAccount = new Array();
var valueListAccount = new Array();
var colorList = new Array();
		
for(var i = 0; i<jDataAccount.length; i++) {
	var dAccount = jDataAccount[i];
	labelListAccount.push(dAccount.accountMonth);
	valueListAccount.push(dAccount.accountCnt);
	colorList.push(colorize());
}
		
var data = {
				labels: labelListAccount,
				datasets: [{
					label: '2022년 월별 회원가입 수',
					backgroundColor: colorList,
					data : valueListAccount
				}],
				options : {
						title : {
						display : true,
						text: '월별 회원가입 수'
						}
				}
};
		
var ctx2 = document.getElementById('accountChart').getContext('2d');
new Chart(ctx2, {
    type: 'bar',
	data: data
});
/* 상품 카테고리별 등록 갯수 차트  */
var jsonDataProduct = ${prdouct};
var jsonObjectProduct = JSON.stringify(jsonDataProduct);
var jDataProduct = JSON.parse(jsonObjectProduct);
		
var labelListProduct = new Array();
var valueListProduct = new Array();
var colorList = new Array();
		
for(var i = 0; i<jDataProduct.length; i++) {
	var dProduct = jDataProduct[i];
	labelListProduct.push(dProduct.product_Category);
	valueListProduct.push(dProduct.productCnt);
	colorList.push(colorize());
}
		
var data = {
				labels: labelListProduct,
				datasets: [{
					backgroundColor: colorList,
					data : valueListProduct
				}],
				options : {
						title : {
						display : true,
						text: '카테고리별 등롱 갯수'
						}
				}
};
		
var ctx1 = document.getElementById('productPiechart').getContext('2d');
new Chart(ctx1, {
    type: 'pie',
	data: data
});
/* 상품 카테고리별 판매 갯수 차트  */
var jsonDataSellProduct = ${prdouctSell};
var jsonObjectSellProduct = JSON.stringify(jsonDataSellProduct);
var jDataSellProduct = JSON.parse(jsonObjectSellProduct);
		
var labelListSellProduct = new Array();
var valueListSellProduct = new Array();
var colorList = new Array();
		
for(var i = 0; i<jDataSellProduct.length; i++) {
	var dSellProduct = jDataSellProduct[i];
	labelListSellProduct.push(dSellProduct.product_SellCategory);
	valueListSellProduct.push(dSellProduct.productSellCnt);
	colorList.push(colorize());
}
		
var data = {
				labels: labelListSellProduct,
				datasets: [{
					backgroundColor: colorList,
					data : valueListSellProduct
				}],
				options : {
						title : {
						display : true,
						text: '카테고리별 판매 갯수'
						}
				}
};
		
var ctx3 = document.getElementById('productSellPiechart').getContext('2d');
new Chart(ctx3, {
    type: 'pie',
	data: data
});

</script>