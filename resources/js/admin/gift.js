function giftModify(num) {
	$("#modifyModal").find("#modal_num").val(num);
	$("#modifyModal").find("#modal_gift").val($("#gift" + num).find(".td_gift").text());
}