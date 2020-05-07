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
	
	  <title>퀴즈팡팡 관리자 - 결과</title>
	
	  <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	  <link href="/resources/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	  <link href="/resources/admin/css/sb-admin.css" rel="stylesheet">
	  <script src="/resources/jquery/jquery-3.4.1.js"></script>
	  <script src="/resources/js/admin/result.js"></script>
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
	            		결과 목록
	            	</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable">
								<thead>
									<tr>
										<th width="8%">번호</th>
										<th width="20%">연락처</th>
										<th width="10%">보상 여부</th>
										<th width="8%">점수</th>
										<th width="10%">남은 기회</th>
										<th width="15%">상품</th>
										<th width="20%">등록일</th>
										<c:if test="${admin.admin == 1}">
										<th>지급</th>
										</c:if>
				                  	</tr>
					           	</thead>
					           	<tbody>
					           		<c:forEach items="${result}" var="result">
									<tr id="result${result.num}">
										<td>${result.num}</td>
										<td class="td_phone">${result.phone}</td>
										<td class="td_reward">
										<c:if test="${result.reward == 2}">
											통과실패
										</c:if>
										<c:if test="${result.reward == 0}">
											지급완료
										</c:if>
										<c:if test="${result.reward == 1}">
											미지급
										</c:if>
										</td>
										<td class="td_score">${result.score}점</td>
										<td class="td_chance">${result.chance}회</td>
										<td class="td_gift">
										<c:if test="${result.gift != null}">
											${result.gift}
										</c:if>
										<c:if test="${result.gift == null}">
											-
										</c:if>
										</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd (HH:mm)" value="${result.date}"/></td>
										<c:if test="${admin.admin == 1}">
										<td>
										<c:if test="${result.reward != 0 && result.reward != 2}">
											<button class="btn btn-outline-success" onclick="resultUpdate(${result.num})" data-toggle="modal" data-target="#rewardModal">지급</button>
										</c:if>
										<c:if test="${result.reward == 0 || result.reward == 2}">
											-
										</c:if>
										</td>
										</c:if>
									</tr>
									</c:forEach>
					           	</tbody>
					           	<tfoot id="searchResult">
									<tr>
										<th><input type="text" class="form-control" placeholder="번호"></th>
										<th><input type="text" class="form-control" placeholder="연락처" onKeyup="inputPhoneNumber(this);" maxlength="13"></th>
										<th><input type="text" class="form-control" placeholder="보상 여부"></th>
										<th><input type="text" class="form-control" placeholder="점수"></th>
										<th><input type="text" class="form-control" placeholder="남은 기회"></th>
										<th><input type="text" class="form-control" placeholder="상품"></th>
										<th><input type="text" class="form-control" placeholder="등록일"></th>
										<c:if test="${admin.admin == 1}"><th></th></c:if>
				                  	</tr>
					           	</tfoot>
					        </table>
					    </div>
		          	</div>
	          	</div>
          	</div>
		  	<div class="modal fade" id="rewardModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">보상 지급</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body"></div>
			      <form action="/admin/result/update" role="form" method="post" class="form-group" autocomplete="off">
			      	<input type="hidden" id="modal_num" name="num">
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				        <button type="submit" class="btn btn-success">지급</button>
				      </div>
			      </form>
			    </div>
			  </div>
			</div>
			<%@ include file="include/footer.jsp" %>
		  </div>
			
		</div>
	
	  <%@ include file="include/plugin.jsp" %>
	  <script>

	  </script>
	</body>

</html>