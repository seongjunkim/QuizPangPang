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
	  <link href="/resources/admin/css/sb-admin.css" rel="stylesheet">
	  <script src="/resources/jquery/jquery-3.4.1.js"></script>
	  <script src="/resources/js/admin/login.js"></script>
	</head>

	<body class="bg-dark">

	  <div class="container">
	    <div class="card card-login mx-auto mt-5">
	      <div class="card-header">퀴즈팡팡 관리자 로그인</div>
	      <div class="card-body">
	        <form id="loginForm" method="post" autocomplete="off">
	          <div class="form-group">
	            <div class="form-label-group">
	              <input type="text" id="inputId" class="form-control" name="id" placeholder="아이디" required="required" autofocus="autofocus">
	              <label for="inputId">아이디</label>
	            </div>
	          </div>
	          <div class="form-group">
	            <div class="form-label-group">
	              <input type="password" id="inputPassword" class="form-control" name="pw" placeholder="비밀번호" required="required">
	              <label for="inputPassword">비밀번호</label>
	            </div>
	          </div>
	          <input type="submit" class="btn btn-primary btn-block" value="로그인">
	        </form>
	        <div class="text-center">
	          <a class="d-block small mt-3" href="mailto:fusc0@naver.com">문의 메일 보내기</a>
	        </div>
	      </div>
	    </div>
	  </div>
	  
	  <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">로그인 실패</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	아이디와 비밀번호를 확인해주세요.
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
		      </div>
		    </div>
		  </div>
	 </div>
	
	    <!-- Bootstrap core JavaScript-->
	  <script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
	  <script src="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	  <!-- Core plugin JavaScript-->
	  <script src="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
	
	</body>

</html>