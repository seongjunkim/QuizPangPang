$(document).ready(function() {
	var dataTable = $('#dataTable').DataTable({
		order: [[0, 'desc']],
		pageLength : 5,
		lengthMenu : [[5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"]],
	    language : lang_kor
	});
});

function questionDelete(num) {
	$("#deleteModal").find("#modal_num").val(num);
	$("#deleteModal").find(".modal-body").text("'" + $("#question" + num).find(".td_question").text() + "' 문제를 삭제하시겠습니까?");
}

function questionModify(num) {
	$("#modifyModal").find("#modal_num").val(num);
	$("#modifyModal").find("#modal_question").val($("#question" + num).find(".td_question").text());
	$("#modifyModal").find("#modal_answer").val($("#question" + num).find(".td_answer").text());
	$("#modifyModal").find("#modal_explanation").val($("#question" + num).find(".td_explanation").text());
}