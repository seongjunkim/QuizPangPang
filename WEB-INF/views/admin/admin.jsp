<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="">
	  <meta name="author" content="">
	
	  <title>퀴즈팡팡 관리자</title>
	
	  <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	  <link href="/resources/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	  <link href="/resources/admin/css/sb-admin.css" rel="stylesheet">
	  <script src="/resources/jquery/jquery-3.4.1.js"></script>
	  <script src="/resources/js/admin/admin.js"></script>
  	  <script src="/resources/admin/js/charts.js"></script>
	</head>

	<body id="page-top">
		<%@ include file="include/navBar.jsp" %>
	
		<div id="wrapper">
			<%@ include file="include/sideBar.jsp" %>
		
		  <div id="content-wrapper">
			<div class="container-fluid">
				<div class="card mb-3">
		          <div class="card-header">
		            <i class="fas fa-chart-area"></i>
		            	이용자 수 <span style="font-size: 0.8rem; color: grey;">(최근 2주간)</span></div>
		          <div class="card-body">
		            <canvas id="areaChart" width="100%" height="30"></canvas>
		          </div>
		        </div>
		
		        <div class="row">
		          <div class="col-lg-8">
		            <div class="card mb-3">
		              <div class="card-header">
		                <i class="fas fa-chart-bar"></i>
		                	통과자 수 <span style="font-size: 0.8rem; color: grey;">(최근 1주간)</span></div>
		              <div class="card-body">
		                <canvas id="barChart" width="100%" height="50"></canvas>
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-4">
		            <div class="card mb-3">
		              <div class="card-header">
		                <i class="fas fa-chart-pie"></i>
		                	지급 비율 <span style="font-size: 0.8rem; color: grey;">(최근 1달간)</span></div>
		              <div class="card-body">
		                <canvas id="pieChart" width="100%" height="100"></canvas>
		              </div>
		            </div>
		          </div>
		        </div>
			</div>
		    
			<%@ include file="include/footer.jsp" %>
		  </div>
		
		</div>
	 
	  	<%@ include file="include/plugin.jsp" %>
	</body>

</html>