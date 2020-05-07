$(document).ready(function() {
	var dataTable = $('#dataTable').DataTable({
		order: [[0, 'desc']],
		pageLength : 10,
		lengthMenu : [[10, 25, 50, 100, 200, -1], [10, 25, 50, 100, 200, "All"]],
	    language : lang_kor
	});

	dataTable.columns().every(function() {
	    var that = this;

	    $('input', this.footer()).on('keyup change clear', function() {
	        if(that.search() !== this.value) {
	            that
	                .search(this.value)
	                .draw();
	        }
	    });
	});

});

function resultUpdate(num) {
	$("#modal_num").val(num);
	$(".modal-body").text("'" + $("#result" + num).find(".td_phone").text() + "' 에게 보상을 지급하겠습니까?");
}

function inputPhoneNumber(obj) {
    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
}