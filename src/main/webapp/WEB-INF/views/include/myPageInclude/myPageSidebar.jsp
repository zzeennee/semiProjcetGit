<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
      <img src="../resources/dist/img/logo.png" alt="Logo" class="brand-image img-circle elevation-3"
           style="opacity: 1">
      <span class="brand-text font-weight-light">머신 킹덤</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="myPageHome.do?account_Id=${sessionScope.logname }" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
                <p>
                마이 페이지
              </p>       
            </a>
          </li>
          <li class="nav-item">
            <a href="orderpage.do?account_Id=${sessionScope.logname }" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                내 주문 내역
              </p>
            </a>
          </li>
         <c:if test="${sessionScope.admin eq 'ok'}">
           <li class="nav-item">
            <a href="../admin/adminHome.do" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                관리자 페이지
              </p>
            </a>
          </li>
         </c:if>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
  </aside>