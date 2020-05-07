<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="">
	  <meta name="author" content="">
	
	  <title>퀴즈팡팡 관리자 - 상품</title>
	
	  <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	  <link href="/resources/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	  <link href="/resources/admin/css/sb-admin.css" rel="stylesheet">
	  <script src="/resources/jquery/jquery-3.4.1.js"></script>
	  <script src="/resources/js/admin/gift.js"></script>
	</head>

	<body id="page-top">
		<%@ include file="include/navBar.jsp" %>
	
		<div id="wrapper">
			<%@ include file="include/sideBar.jsp" %>
		
		  <div id="content-wrapper">
		  	<div class="container-fluid">
        
			  	<div class="card mb-3">
	          		<div class="card-header">
	            		<i class="fas fa-table"></i>
	            		상품 목록
	            	</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" style="text-align: center;">
								<thead>
									<tr>
										<th>번호</th>
										<th>상품</th>
										<c:if test="${admin.admin == 1}">
										<th>수정</th>
										</c:if>
				                  	</tr>
					           	</thead>
					           	<tbody>
					           		<c:forEach items="${gift}" var="gift">
									<tr id="gift${gift.num}">
										<td>${gift.num}</td>
										<td class="td_gift">${gift.gift}</td>
										<c:if test="${admin.admin == 1}">
										<td><button class="btn btn-outline-info" onclick="giftModify(${gift.num})" data-toggle="modal" data-target="#modifyModal">수정</button></td>
										</c:if>
									</tr>
									</c:forEach>
					           	</tbody>
					        </table>
					    </div>
		          	</div>
	          	</div>
			   
			   <div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">상품 수정</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <form action="/admin/gift/modify" role="form" method="post" class="form-group" autocomplete="off">
						<input type="hidden" id="modal_num" name="num">
					      <div class="modal-body">
								<div class="input-group mb-3">
								    <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">상품명</label>
									</div>
									<input type="text" class="form-control" name="gift" id="modal_gift" required>
								</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					        <button type="submit" class="btn btn-info">수정</button>
					      </div>
				      </form>
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