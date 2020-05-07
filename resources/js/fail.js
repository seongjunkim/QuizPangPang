$("#background").css("background-image", "url('/resources/img/fail_bg.png')");

$(document).snowfall({
    image: "/resources/img/rain.png",
    minSpeed: 5,
    maxSpeed: 10,
    flakeCount: 20,
    minSize: 15,
    maxSize: 25
});
setTimeout(function() {
	$(document).snowfall('clear');
}, 5000);

var countdown = setInterval(function() {
	$(".move_count").html(count);
    if (count == 0) {
    	clearInterval(countdown);
    	location.href = "/";
    }
    count--;
    }, 1000);