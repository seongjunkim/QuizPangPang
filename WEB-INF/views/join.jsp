<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<title>Join</title>
		<script src="/resources/jquery/jquery-3.4.1.js"></script>
		<script src="/resources/js/join.js"></script>
		<link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href="/resources/css/join.css" rel="stylesheet" type="text/css">
	</head>
	<body ondragstart="return false">
		<div id="background">
			<div class="content">
				<img src="/resources/img/join_content.png">
			</div>
			<form role="form" method="post" autocomplete="off">
				<div id="numericInput">
				<c:if test="${phone != null}">
				<input type="text" class="textpad" value="${phone}" name="phone" readonly>
				</c:if>
				<c:if test="${phone == null}">
				<input type="text" class="textpad" name="phone" maxlength="13">
				</c:if>
				</div>
				<div class="back"><img src="/resources/img/back_btn.png"></div>
				<button type="button" class="go"><img src="/resources/img/go_btn.png"></button>
				<div id="windowSet" style="display: none;">
					<div class="window"><img src="/resources/img/window.png"></div>
					<div class="window_msg"><p></p></div>
					<div class="close"><img src="/resources/img/close_btn.png"></div>
				</div>
			</form>
		</div>
	</body>
</html>
 