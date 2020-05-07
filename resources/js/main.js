var buttonAudio = new Audio("/resources/audio/button.wav");
		
$(document).ready(function() {
	$("#video").get(0).play();
	
	$(".start").click(function() {
		buttonAudio.play();
		setTimeout(function() {
			location.href = "/method";
		}, 200);
	});
});