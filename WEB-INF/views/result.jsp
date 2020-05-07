<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Result</title>
		<script src="/resources/jquery/jquery-3.4.1.js"></script>
		<script src="/resources/js/result.js"></script>
		<script src="/resources/jquery/snowfall.jquery.js"></script>
		<link href="/resources/css/result.css" rel="stylesheet" type="text/css">
	</head>
	<body ondragstart="return false">
	<div id="background">
		<c:if test="${result.score >= 3}">
			<script src="/resources/js/pass.js"></script>
			<iframe src="/resources/audio/pass.mp3" allow="autoplay" style="display: none;"></iframe>
			<audio autoplay preload="metadata">
				<source src="/resources/audio/pass.mp3" type="audio/mpeg">
			</audio>
			<div class="pass_msg"><img src="/resources/img/pass_msg.png"></div>
			<div class="gift_box"><img src="/resources/img/gift_box.png"></div>
			<a class="gift" href="javascript:sendGift(1)" style="left: 30%; bottom: 26%;"><img src="/resources/img/gift_1.png"></a>
			<a class="gift" href="javascript:sendGift(2)" style="left: 48%; bottom: 26%;"><img src="/resources/img/gift_2.png"></a>
			<a class="gift" href="javascript:sendGift(3)" style="left: 66%; bottom: 26%;"><img src="/resources/img/gift_3.png"></a>
			<div class="move_msg" style="bottom: 15%;">상품 3개 중 하나를 골라주세요!</div>
		</c:if>
		<div id="windowSet" style="display: none;">
			<div class="window"><img src="/resources/img/gift_window.png"></div>
			<div class="gift_img"><img src="/resources/img/gift_img.png"></div>
			<div class="window_msg"><p></p></div>
			<div class="send"><img src="/resources/img/send_btn.png"></div>
		</div>
		<c:if test="${result.score < 3}">
			<script src="/resources/js/fail.js"></script>
			<iframe src="/resources/audio/fail.mp3" allow="autoplay" style="display: none;"></iframe>
			<audio autoplay preload="metadata">
				<source src="/resources/audio/fail.mp3" type="audio/mpeg">
			</audio>
			<c:if test="${result.chance <= 0}">
				<div class="fail_msg"><img src="/resources/img/fail_msg.png"></div>
				<a class="main"><img src="/resources/img/main_btn.png"></a>
			</c:if>
			<c:if test="${result.chance > 0}">
				<div class="retry_msg"><img src="/resources/img/retry_msg.png"></div>
				<a class="retry"><img src="/resources/img/retry_btn.png"></a>
			</c:if>
			<div class="fail_img"><img src="/resources/img/fail_img.png"></div>
			<div class="move_count">10</div><div class="move_msg">초 후에 메인 페이지로 돌아갑니다</div>
		</c:if>
	</div>
	</body>
</html>
 