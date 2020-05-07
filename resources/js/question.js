var delay = 10;
var qNum = 1;
var quizTimer;
var checkTimer;
var answerTimer;
var clock = delay;
var score = 0;

var timerAudio = new Audio("/resources/audio/timer.mp3");
var buttonAudio = new Audio("/resources/audio/button.wav");
var correctAudio = new Audio("/resources/audio/correct.wav");
var wrongAudio = new Audio("/resources/audio/wrong.wav");


var backgroundMap = new Map();
$.getJSON("/question/background", function(background) {
	$(background).each(function () {
		backgroundMap.set(this.bgNum, this.background);
	});
	show_question();
});

function show_question() {
	if(qNum <= 5) {
		$("#body").css("background-image", "url('" + backgroundMap.get(qNum) + "')");
		$("#question" + qNum).css("display", "flex");
		console.log(clock + "초");
		hide_question();
	} else {
		location.href = "/result?score=" + score;
	}
}

function hide_question() {
	clearTimeout(checkTimer);
	clearTimeout(answerTimer);
	if(clock > 0) {
		var temp = 100 / delay;
		quizTimer = setInterval(function() {
            var value = $("#bar").attr("value");
            if(value >= 0 && value-temp >= 0) {
                $("#bar").attr("value", value-temp);
                clock--;
                console.log(clock + "초");
            } else {
            	wrongAudio.play();
            	$(".wrong_msg").show(500);
            	setTimeout(function() {
                    show_answer();
                    return;
        		}, 100);
            }
        }, 1000);
	} else {
		clearInterval(quizTimer);
		clock = delay;
		$("#question" + qNum).css("display", "none");
		qNum++;
		show_question();
	}
}

function check_answer(correct, answer) {
	if(correct == answer) {
		score++;
		correctAudio.play();
		$(".correct_msg").show(500);
	} else {
		wrongAudio.play();
		$(".wrong_msg").show(500);
	}
	clock = 0;
	show_answer();
}

function show_answer() {
	checkTimer = setTimeout(function() {
		$(".correct_msg").hide(300);
		$(".wrong_msg").hide(300);
	}, 1200);
	clearInterval(quizTimer);
	$("#bar").attr("value", 100);
	$("#question" + qNum).css("display", "none");
	$(".timer").css("display", "none");
	$("#answer" + qNum).css("display", "flex");
	answerTimer = setTimeout(function() {
		$("#answer" + qNum).css("display", "none");
		$(".timer").css("display", "block");
		quizTimer = setInterval("hide_question()");
	}, 10000);
}

function skip_answer() {
	buttonAudio.play();
	setTimeout(function() {
		$(".correct_msg").hide(300);
		$(".wrong_msg").hide(300);
		clearInterval(quizTimer);
		$("#answer" + qNum).css("display", "none");
		$(".timer").css("display", "block");
		quizTimer = setInterval("hide_question()");
	}, 100);
}