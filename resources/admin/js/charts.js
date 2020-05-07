$(document).ready(function() {
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#292b2c';
	// Area Chart Example
	var ctx1 = document.getElementById("areaChart");
	var areaChart = new Chart(ctx1, {
	  type: 'line',
	  data: {
	    labels: [
	    	dateArray[13], dateArray[12], dateArray[11], 
	    	dateArray[10], dateArray[9], dateArray[8], 
	    	dateArray[7], dateArray[6], dateArray[5], 
	    	dateArray[4], dateArray[3], dateArray[2], 
	    	dateArray[1], dateArray[0]
	    	],
	    datasets: [{
	      label: "이용자 수",
	      lineTension: 0.3,
	      backgroundColor: "rgba(2,117,216,0.2)",
	      borderColor: "rgba(2,117,216,1)",
	      pointRadius: 5,
	      pointBackgroundColor: "rgba(2,117,216,1)",
	      pointBorderColor: "rgba(255,255,255,0.8)",
	      pointHoverRadius: 5,
	      pointHoverBackgroundColor: "rgba(2,117,216,1)",
	      pointHitRadius: 50,
	      pointBorderWidth: 2,
	      data: [
	    	  areaMap.get(dateArray[13]), areaMap.get(dateArray[12]), areaMap.get(dateArray[11]), 
	    	  areaMap.get(dateArray[10]), areaMap.get(dateArray[9]), areaMap.get(dateArray[8]), 
	    	  areaMap.get(dateArray[7]), areaMap.get(dateArray[6]), areaMap.get(dateArray[5]), 
	    	  areaMap.get(dateArray[4]), areaMap.get(dateArray[3]), areaMap.get(dateArray[2]), 
	    	  areaMap.get(dateArray[1]), areaMap.get(dateArray[0])
	      ]
	    }],
	  },
	  options: {
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: true
	        },
	        ticks: {
	          maxTicksLimit: 14
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          beginAtZero: true,
	          stepSize: 1
	        },
	        gridLines: {
	          color: "rgba(0, 0, 0, .125)",
	        }
	      }],
	    },
	    legend: {
	      display: false
	    }
	  }
	});
	
	
	// Bar Chart Example
	var ctx2 = document.getElementById("barChart");
	var barChart = new Chart(ctx2, {
	  type: 'bar',
	  data: {
	    labels: [
	    	dateArray[6], dateArray[5], dateArray[4], 
	    	dateArray[3], dateArray[2], dateArray[1], 
	    	dateArray[0]
	    ],
	    datasets: [{
	      label: "통과자 수",
	      backgroundColor: "rgba(2,117,216,1)",
	      borderColor: "rgba(2,117,216,1)",
	      data: [
	    	  barMap.get(dateArray[6]), barMap.get(dateArray[5]), barMap.get(dateArray[4]),
	    	  barMap.get(dateArray[3]), barMap.get(dateArray[2]), barMap.get(dateArray[1]),
	    	  barMap.get(dateArray[0])
	      ],
	    }],
	  },
	  options: {
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'month'
	        },
	        gridLines: {
	          display: false
	        },
	        ticks: {
	          maxTicksLimit: 7
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          beginAtZero: true,
	          stepSize: 1
	        },
	        gridLines: {
	          display: true
	        }
	      }],
	    },
	    legend: {
	      display: false
	    }
	  }
	});

	
	
	// Pie Chart Example
	var ctx3 = document.getElementById("pieChart");
	var pieChart = new Chart(ctx3, {
	  type: 'pie',
	  data: {
	    labels: ["지급완료", "미지급", "통과실패"],
	    datasets: [{
	      data: [(pieArray[0]/pieArray[3]*100).toPrecision(4), (pieArray[1]/pieArray[3]*100).toPrecision(4), (pieArray[2]/pieArray[3]*100).toPrecision(4)],
	      backgroundColor: ['#007bff', '#ffc107', '#dc3545'],
	    }],
	  },
	});
});
