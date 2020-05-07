<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<title>Main</title>
		<script src="/resources/jquery/jquery-3.4.1.js"></script>
		<script src="/resources/js/main.js"></script>
		<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
	</head>
	<body ondragstart="return false">
		<video id="video" loop autoplay muted>
		  <source src="/resources/video/video.mp4" type="video/mp4">
		</video>
		<div class="logo"><img src="/resources/img/logo.png"></div>
		<div class="start"><img src="/resources/img/start_btn.png"></div>
		<div class="content">5문제 중 3문제 이상을 맞추면 선물을 받을 수 있어요!</div>
		<div id="background">
		</div>
	</body>
</html>
 