<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>주문수정 - 마이페이지 | 머신킹덤</title>


<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>

</head>


<body class="hold-transition sidebar-mini">

	<!-- ************주소 불러오는 설정 값 ****************************************************************************************-->

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
window.onload = function(){
    document.getElementById("address_search_sender").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //발신자 주소검색 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
               document.getElementById("zonecode_sender").value = data.zonecode;
                document.getElementById("address_sender").value = data.address; // 주소 넣기
            }
        }).open();
    });
    
    document.getElementById("address_search_receiver").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //수신자 지도검색 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
               document.getElementById("zonecode_receiver").value = data.zonecode;
                document.getElementById("address_receiver").value = data.address; // 주소 넣기
            }
        }).open();
    });
}
</script>




	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/myPageInclude/myPageNavbar.jsp"%>
		<!-- Navbar end -->

		<!-- Sidebar -->
		<%@ include file="../include/myPageInclude/myPageSidebar.jsp"%>
		<!-- Sidebar end -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">


			<!--******************** form 액션주고 값불려오도록 설정 *********************************************-->
			<form action='modi.do'>
			<input type="hidden" name="account_Id" value="${sessionScope.logname }">    <!--@@@@@@@ 수정할 부분 주문번호 받아오기 order_Seq @@@@-->
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-3">
								<h1 class="m-0">주문수정 페이지</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6"></div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<div classs='col-3'></div>
				<div class="card card-primary">
					<div class="card-header">
						<h3 class="card-title">주문수정</h3>
						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse" title="Collapse">
								<i class="fas fa-minus"></i>
							</button>
						</div>
					</div>

					
					<!--*********** 값 불려올려고 input 타입에 name 설정해서 값 불려옴 *********************************************  -->
					<div class="card-body" style="display: block;">
						<div class="form-group">
							<label for="inputName">주문번호</label> <input type="text"
								id="inputName" class="form-control" name="orderdata_seq" readonly
								value="${board.orderdata_seq}">        
						</div>

						<div class="form-group">
							<label for="inputDescription">배송시 요청사항</label>
							<textarea id="inputDescription" class="form-control" rows="4"
								name="user_require">${board.user_require}</textarea>
						</div>                                  

						<div class="form-group">
							<label for="inputClientCompany">받는분 이름</label> <input
								type="text" id="inputClientCompany" class="form-control"
								name="receiver_name" value="${board.receiver_name}">     
						</div>     
						<div class="form-group">
							<label for="inputProjectLeader">전화번호</label> <input type="text"
								id="inputProjectLeader" class="form-control"          
								name="receiver_tel" readonly value="${board.account_Tel }">
						</div>                              
						
						
						<!--*************** 주소 수정 value값으로 보내고 name 값으로 데이터 받기 ***************************************-->
						
						<!-- @@@@@@@@@@@@@@@@@수정  account_Addr1 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2 -->
						
						<div class="input-group">
							<input type="text" id="zonecode_sender" placeholder="우편번호"
								readonly value="${board.receiver_zonecode }" name="receiver_zonecode">
							<button type="button" id="address_search_sender"
								class="btn btn-info float-left">주소수정하기</button>
						</div>      


                      <!-- @@@@@@@@@@@@@@@@@수정  account_Addr2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
						<div class="input-group">
							<input type="text" id="address_sender" class="form-control"
								placeholder="주소" readonly value="${board.receiver_address }" name="receiver_address">
						</div>


                <!-- @@@@@@@@@@@@@@@@@@수정   account_Addr3  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="상세주소" value="${board.receiver_daddress }" name="receiver_daddress">
						</div>

					</div>

				</div>
				
				<!-- *******************확인버튼 ********************************************************************* -->
				
				<div class="row">
					<div class="col-6">
						<input type="submit" name="submit" id="submit"
							value="확인" class="btn btn-success float-right">
					</div>
				</div>
			</form>

		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp" %> 
</body>
</html>
