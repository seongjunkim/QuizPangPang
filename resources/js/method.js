var buttonAudio = new Audio("/resources/audio/button.wav");

var idleTime = 0;

$(document).ready(function() {
	$("#method" + mNum).show();
	$(".prev").hide();
	
	$(".go").click(function() {
		buttonAudio.play();
		setTimeout(function() {
			location.href = "/join";
		}, 200);
	});
	
	var idleInterval = setInterval(timerIncrement, 1000);

    $(this).mousemove(function(e) {
        idleTime = 0;
    });
    $(this).click(function(e) {
        idleTime = 0;
    });
});

var phoneAudio = new Audio("/resources/audio/phone.wav");

var mNum = 1;

function prev_method() {
	phoneAudio.play();
	setTimeout(function() {
		if(mNum == 2) {
			$(".prev").hide();
		}
		$(".next").show();
		$("#method" + mNum).hide();
		mNum--;
		$("#method" + mNum).show();
	}, 100);
}

function next_method() {
	phoneAudio.play();
	setTimeout(function() {
		$(".prev").show();
		if(mNum == 5) {
			$(".next").hide();
		}
		$("#method" + mNum).hide();
		mNum++;
		$("#method" + mNum).show();
	}, 100);
}


function timerIncrement() {
    idleTime = idleTime + 1;
    if (idleTime > 30) {
        location.href = "/";
    }
}