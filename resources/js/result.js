var buttonAudio = new Audio("/resources/audio/button.wav");
var passAudio = new Audio("/resources/audio/pass.mp3");
var failAudio = new Audio("/resources/audio/fail.mp3");

var idleTime = 0;
var count = 9;
var giftNum = 0;

var giftMap = new Map();
$.getJSON("/result/gift", function(gift) {
	$(gift).each(function () {
		giftMap.set(this.num, this.gift);
	});
});

$(document).ready(function() {
    var idleInterval = setInterval(timerIncrement, 1000);

    $(this).mousemove(function(e) {
        idleTime = 0;
    });
    $(this).click(function(e) {
        idleTime = 0;
    });
    
    $(".send").click(function() {
    	buttonAudio.play();
    	setTimeout(function() {
    		location.href = "/result/send?gift=" + giftMap.get(giftNum);
    	}, 100);
    })
    
    $(".retry").click(function() {
		buttonAudio.play();
		setTimeout(function() {
			location.href = "/result/retry";
		}, 100);
	});
    
    $(".main").click(function() {
		buttonAudio.play();
		setTimeout(function() {
			location.href = "/";
		}, 100);
	});
});

function sendGift(num) {
	buttonAudio.play();
	giftNum = num;
	$(".window_msg p").html("<span style='font-size: 2vw;'>당첨되었어요!</span><br>" + giftMap.get(giftNum));
	$("#windowSet").show(500);
}

function timerIncrement() {
    idleTime = idleTime + 1;
    if (idleTime > 30) {
        location.href = "/";
    }
}