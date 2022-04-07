<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Starter</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="../resources/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

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
	       $(location).attr('href', "bdelete.do?sname="+snum);
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
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline"></form>
					</div></li>

				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-header">15 Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="../resources/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="../resources/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Alexander Pierce</a>
					</div>
				</div>

				<!-- SidebarSearch Form -->


				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->



						<a href="#" class="nav-link"> <i class="nav-icon fas fa-th"></i>
							<p>주문</p>
						</a>

					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1604.55px;">

			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>장바구니</h1>
						</div>

					</div>
				</div>
			</section>

			<section class="content">

				<div class="card">

					<div class="card-body p-0">
						<table id="listtable" class="table table-striped projects">
							<thead>
								<tr>
									<th style="width: 1%"></th>
									<th style="width: 20%">상품명</th>
									<th style="width: 30%">제품 상세</th>
									<th>수량</th>
									<th style="width: 8%" class="text-center">금액</th>
									<th style="width: 10%" class="text-center">합계</th>
									<th style="width: 12%"><button type="button"
											id="sDelete"  class="btn btn-block btn-primary">선택삭제</button>
									
								</tr>
							</thead>
							<tbody class="listgood">
								<%
									int sum = 1;
								%>
								<c:forEach items="${bucketList }" var="bucket">
									<tr>
										<td><%=sum%></td>
										<td><a>  ${bucket.sname }  </a></td>
										<td>
													${bucket.scontent }
										</td>
										<td class="project_progress"><small><input
												type="text" id="pay" class="pay" style="width: 30%" value="${bucket.samount }"></input></small>
											<button type="button" class="sChange">변경</button>
						
										<td class="project-state" id="won" class="won" value="${bucket.sprice }"><span>
										 <label class="w" value="${bucket.sprice }">${bucket.sprice }</label><label>원</label>
												</span></td>
										<td class="project-state" id="won" class="won" value="${bucket.sprice }"><span>
										 <label class="sum" value="${bucket.sprice * bucket.samount }">${bucket.sprice * bucket.samount }</label><label>원</label>
												</span></td>
										<td class="project-actions text-right"><div
												class="form-check">
												<input class="deleteCheck" type="checkbox"  style="width: 50%" value="${bucket.sname }"> 삭제
											</div> </td>
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
												class="btn btn-info float-right">주문하기</button></a>
									</div>
								</div>
							</tbody>
						</table>
					</div>

				</div>

			</section>

		</div>

		<!-- /.col-lg-6 -->

		<!-- /input-group -->
	</div>


	</div>
	<!-- /.card-body -->
	</div>
	<!-- /.card -->
	<!-- /.col-md-6 -->
	</div>
	<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
	</div>
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
		<div class="p-3">
			<h5>Title</h5>
			<p>Sidebar content</p>
		</div>
	</aside>
	<!-- /.control-sidebar -->

	<!-- Main Footer -->
	<footer class="main-footer">
		<!-- To the right -->
		<div class="float-right d-none d-sm-inline">Anything you want</div>
		<!-- Default to the left -->
		<strong>Copyright &copy; 2014-2021 <a
			href="https://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
	</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<script src="../resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../resources/dist/js/adminlte.min.js"></script>
</body>
</html>
