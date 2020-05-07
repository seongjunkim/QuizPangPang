var count = 9;

$(document).ready(function () {
	var countdown = setInterval(function() {
    	$(".move_count").html(count);
        if (count == 0) {
        	clearInterval(countdown);
        	location.href = "/";
        }
        count--;
        }, 1000);
});