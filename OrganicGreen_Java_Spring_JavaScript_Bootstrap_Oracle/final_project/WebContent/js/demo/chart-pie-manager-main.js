
		// Set new default font family and font color to mimic Bootstrap's default styling
		Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
		Chart.defaults.global.defaultFontColor = '#858796';

		// Pie Chart Example
		var ctx = document.getElementById("myPieChart");

		var myPieChart = new Chart(ctx, {
		  type: 'doughnut',
		  data: {
		    labels: [ listPieName[0], listPieName[1], listPieName[2], listPieName[3] ], // , listPie[1].bpName, listPie[2].bpName, listPie[3].bpName
		    datasets: [{
		      data: [ listPieTotal[0] , listPieTotal[1] , listPieTotal[2] , listPieTotal[3] ],
		      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#e74a3b' ],
		      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', '#ffa'],
		      hoverBorderColor: "rgba(234, 236, 244, 1)",
		    }],
		  },
		  options: {
		    maintainAspectRatio: false,
		    tooltips: {
		      backgroundColor: "rgb(255,255,255)",
		      bodyFontColor: "#858796",
		      borderColor: '#dddfeb',
		      borderWidth: 1,
		      xPadding: 15,
		      yPadding: 15,
		      displayColors: false,
		      caretPadding: 10,
		    },
		    legend: {
		      display: false
		    },
		    cutoutPercentage: 80,
		  },
		});
