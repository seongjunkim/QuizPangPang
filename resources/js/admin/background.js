$(document).ready(function() {
	var dataTable = $('#dataTable').DataTable({
    	order: [[0, 'desc']],
    	pageLength : 5,
    	lengthMenu : [[5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"]],
        language : lang_kor
    });
	
	$('#inputGroupFile').on('change', function() {
	    var fileName = $(this).val().replace("C:\\fakepath\\", "");;
	    $(this).next('.custom-file-label').html(fileName);
	});
});

function backgroundDelete(num) {
	$("#deleteModal").find("#modal_num").val(num);
	$("#deleteModal").find(".modal-body").text("이 배경을 삭제하시겠습니까?");
}

function backgroundModify(num) {
	$("#modifyModal").find("#modal_num").val(num);
	$("#modifyModal").find("#modal_background").text($("#background" + num).find(".td_background").val());
}