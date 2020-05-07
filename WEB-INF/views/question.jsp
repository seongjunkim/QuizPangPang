<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Question</title>
		<script src="/resources/jquery/jquery-3.4.1.js"></script>
		<script src="/resources/js/question.js"></script>
		<link href="/resources/css/question.css" rel="stylesheet" type="text/css">
	</head>
	<body id="body" ondragstart="return false">
		<div id="background">
			<div class="check"></div>
			<div class="top">
	            <div class="timer">
	                <img id="clock" src="/resources/img/clock.png">
	                <progress id="bar" value="100" max="100"></progress>
	            </div>
	        </div>
	        
	        <c:forEach items="${question}" var="question">
	        <div class="bottom" id="question${question.qNum}">
	            <div class="q_box">
	                <img src="/resources/img/q_box.png">
	                <img class="qNum" src="/resources/img/q_${question.qNum}.png">
	                <div class="q_con">
	                    <p>${question.question}</p>
	                </div>
	            </div>
	
	            <div class="o_btn">
	                <a href="javascript:void(0)" onclick="check_answer('${question.answer}', 'O')"><img src="/resources/img/o_btn.png"></a>
	            </div>
	
	            <div class="x_btn">
	                <a href="javascript:void(0)" onclick="check_answer('${question.answer}', 'X')"><img src="/resources/img/x_btn.png"></a>
	            </div>
	        </div>
	        <div class="bottom" id="answer${question.qNum}">
	        <c:if test="${question.answer == 'O'}">
		        <div class="a_box">
		        	<img src="/resources/img/o_box.png">
		        	<img class="a_img" src="/resources/img/o_btn.png">
		        </div>
			</c:if>
			<c:if test="${question.answer == 'X'}">
				<div class="a_box">
			    	<img src="/resources/img/x_box.png">
			    	<img class="a_img" src="/resources/img/x_btn.png">
			    </div>
			</c:if>
				<div class="a_con">
                    <p>${question.explanation}</p>
                </div>
                <div class="skip">
                	<a href="javascript:void(0)" onclick="skip_answer()"><img src="/resources/img/skip_btn.png"></a>
                </div>
	        </div>
	       	</c:forEach>
	       	<div class="correct_msg" style="display: none;"><img src="/resources/img/correct_msg.png"></div>
	       	<div class="wrong_msg" style="display: none;"><img src="/resources/img/wrong_msg.png"></div>
		</div>
	</body>
</html>
 