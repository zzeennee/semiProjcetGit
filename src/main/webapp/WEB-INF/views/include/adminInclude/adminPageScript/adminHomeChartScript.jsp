<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Page specific script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script type="text/javascript">
function colorize() {
	var r = Math.floor(Math.random()*200);
	var g = Math.floor(Math.random()*200);
	var b = Math.floor(Math.random()*200);
	var color = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)';
	return color;
}

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


</script>