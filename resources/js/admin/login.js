$(document).ready(function() {
	$("#loginForm").on("submit", function(e) {
		e.preventDefault();
		$.ajax({
			  url : "/admin/login",
			  type : "post",
			  data : {
				  id : $("#inputId").val(),
				  pw : $("#inputPassword").val()
			  },
			  success : function(result) {
				   if(result == 1) {
					   $("#staticBackdrop").modal();
				   } else if(result == 2) {
					   location.href = "/admin/";
				   }
			  }
		});
	});
});