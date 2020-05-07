<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<title>Method</title>
		<script src="/resources/jquery/jquery-3.4.1.js"></script>
		<script src="/resources/js/method.js"></script>
		<link href="/resources/css/method.css" rel="stylesheet" type="text/css">
	</head>
	<body ondragstart="return false">
		<div id="background">
			<div class="content">
				<img src="/resources/img/method_content.png">
			</div>
			<div class="method" id="method1">
				<div class="method_img"><img src="/resources/img/method1.png"></div>
				<div class="method_content"><p>1. 교환권을 받을<br>전화번호를 입력해요</p></div>
			</div>
			<div class="method" id="method2">
				<div class="method_img"><img src="/resources/img/method2.png"></div>
				<div class="method_content"><p>2. 문제 당 제한시간 10초 내에<br>OX퀴즈 5문제를 풀어요</p></div>
			</div>
			<div class="method" id="method3">
				<div class="method_img"><img src="/resources/img/method3.png"></div>
				<div class="method_content"><p>3. 5문제 중 3문제 이상을 맞추면<br>선물을 고를 수 있어요</p></div>
			</div>
			<div class="method" id="method4">
				<div class="method_img"><img src="/resources/img/method4.png"></div>
				<div class="method_content"><p>4. 교환권이 전송되면 1층 인포데스크에서 선물을 받을 수 있어요</p></div>
			</div>
			<div class="method" id="method5">
				<div class="method_img"><img src="/resources/img/method5.png"></div>
				<div class="method_content"><p>통과에 실패하면<br>한번 더 도전할 기회가 주어져요</p></div>
			</div>
			<div class="method" id="method6">
				<div class="method_img"><img src="/resources/img/method6.png"></div>
				<div class="method_content"><p>한달 후에 도전 기회가 초기화되면 다시 도전할 수 있어요</p></div>
			</div>
			<div class="prev" onclick="prev_method()"><img src="/resources/img/prev_btn.png"></div>
			<div class="next" onclick="next_method()"><img src="/resources/img/skip_btn.png"></div>
			<button type="button" class="go"><img src="/resources/img/go_btn.png"></button>
		</div>
	</body>
</html>
 