<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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

var jsonData = ${prdouct};
var jsonObject = JSON.stringify(jsonData);
var jData = JSON.parse(jsonObject);
		
var labelList = new Array();
var valueList = new Array();
var colorList = new Array();
		
for(var i = 0; i<jData.length; i++) {
	var d = jData[i];
	labelList.push(d.product_Category);
	valueList.push(d.cnt);
	colorList.push(colorize());
}
		
var data = {
				labels: labelList,
				datasets: [{
					backgroundColor: colorList,
					data : valueList
				}],
				options : {
						title : {
						display : true,
						text: '카테고리별 등롱 갯수'
						}
				}
};
		
var ctx1 = document.getElementById('pie-chart2').getContext('2d');
var aaaa = new Chart(ctx1, {
    type: 'pie',
	data: data
});

</script>