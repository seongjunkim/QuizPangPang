$("#background").css("background-image", "url('/resources/img/pass_bg.png')");

$(document).snowfall({
    image: "/resources/img/petal_1.png",
    minSpeed: 1,
    maxSpeed: 5,
    flakeCount: 15,
    minSize: 15,
    maxSize: 30
});
$(document).snowfall({
    image: "/resources/img/petal_2.png",
    minSpeed: 1,
    maxSpeed: 5,
    flakeCount: 15,
    minSize: 15,
    maxSize: 30
});
$(document).snowfall({
    image: "/resources/img/petal_3.png",
    minSpeed: 1,
    maxSpeed: 5,
    flakeCount: 15,
    minSize: 15,
    maxSize: 30
});

setTimeout(function() {
	$(document).snowfall('clear');
}, 5000);
  