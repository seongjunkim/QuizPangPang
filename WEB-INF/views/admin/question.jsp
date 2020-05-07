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
	
	  <title>퀴즈팡팡 관리자 - 문제</title>
	
	  <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	  <link href="/resources/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	  <link href="/resources/admin/css/sb-admin.css" rel="stylesheet">
	  <script src="/resources/jquery/jquery-3.4.1.js"></script>
	  <script src="/resources/js/admin/question.js"></script>
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
	            		문제 목록
	            	</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable">
								<thead>
									<tr>
										<th>번호</th>
										<th>내용</th>
										<th>정답</th>
										<th>해설</th>
										<th>등록일</th>
										<c:if test="${admin.admin == 1}">
										<th>수정</th>
										<th>삭제</th>
										</c:if>
				                  	</tr>
					           	</thead>
					           	<tbody>
					           		<c:forEach items="${question}" var="question">
									<tr id="question${question.num}">
										<td>${question.num}</td>
										<td class="td_question">${question.question}</td>
										<td class="td_answer">${question.answer}</td>
										<td class="td_explanation">${question.explanation}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd (HH:mm)" value="${question.date}"/></td>
										<c:if test="${admin.admin == 1}">
										<td><button class="btn btn-outline-info" onclick="questionModify(${question.num})" data-toggle="modal" data-target="#modifyModal">수정</button></td>
										<td><button class="btn btn-outline-danger" onclick="questionDelete(${question.num})" data-toggle="modal" data-target="#deleteModal">삭제</button></td>
										</c:if>
									</tr>
									</c:forEach>
					           	</tbody>
					        </table>
					    </div>
		          	</div>
	          	</div>
	          	
	          	<c:if test="${admin.admin == 1}">
	       		<div class="card mb-3">
	          		<div class="card-header">
	            		<i class="fas fa-table"></i>
	            		문제 등록
	            	</div>
	            	<div class="card-body">
		            	<div class="form-group">
		            		<form role="form" method="post" class="form-group" autocomplete="off" enctype="multipart/form-data">
								<div class="input-group mb-3">
								    <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">문제</label>
									</div>
									<input type="text" class="form-control" name="question" maxlength="50" placeholder="50자 내외" required>
								</div>
								<div class="input-group mb-3">
								    <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">해설</label>
									</div>
									<input type="text" class="form-control" name="explanation" maxlength="110" placeholder="110자 내외" required>
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">정답</label>
								  	</div>
									<select class="form-control" name="answer">
									   <option value="O">O</option>
									   <option value="X">X</option>
									</select>
									<div class="input-group-append">
									   <button class="btn btn-primary" type="submit">등록</button>
									</div>
								</div>
							</form>
		            	</div>
	            	</div>
			    </div>
			    </c:if>
			    
			   <div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">문제 수정</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <form action="/admin/question/modify" role="form" method="post" class="form-group" autocomplete="off">
						<input type="hidden" id="modal_num" name="num">
					      <div class="modal-body">
								<div class="input-group mb-3">
								    <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">문제</label>
									</div>
									<input type="text" class="form-control" name="question" id="modal_question" required>
								</div>
								<div class="input-group mb-3">
								    <div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">해설</label>
									</div>
									<input type="text" class="form-control" name="explanation" id="modal_explanation" required>
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
									    <label class="input-group-text" for="inputGroupSelect">정답</label>
								  	</div>
									<select class="form-control" name="answer" id="modal_answer">
									   <option value="O">O</option>
									   <option value="X">X</option>
									</select>
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
				
				<div class="modal fade" id="deleteModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel">문제 삭제</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body"></div>
				      <form action="/admin/question/delete" role="form" method="post" class="form-group" autocomplete="off">
				      	<input type="hidden" id="modal_num" name="num">
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					        <button type="submit" class="btn btn-danger">삭제</button>
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