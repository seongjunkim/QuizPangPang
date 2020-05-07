var today = new Date;
var date = new Date;
var label = new Array();
var year;
var month;
var day;
var dateArray = new Array();

for(var i=0; i<14; i++) {
	date.setTime(today.getTime()-(i*24*60*60*1000))
	year = date.getFullYear();
	month = date.getMonth()+1;
	day = date.getDate();
	if(day < 10)
		day = "0" + day;
	dateArray[i] = year + "-" + month + "-" + day;
}

var areaMap = new Map();
var barMap = new Map();
var pieArray = [0, 0, 0, 0];

$.getJSON("/admin/chart/area", function(chart) {
	$(chart).each(function () {
		areaMap.set(this.dates, this.count);
	});
});
$.getJSON("/admin/chart/bar", function(chart) {
	$(chart).each(function () {
		barMap.set(this.dates, this.count);
	});
});
$.getJSON("/admin/chart/pie", function(chart) {
	$(chart).each(function () {
		switch(this.reward) {
		case 0 : pieArray[0]++; break;
		case 1 : pieArray[1]++; break;
		case 2 : pieArray[2]++; break;
		}
		pieArray[3]++;
	});
});