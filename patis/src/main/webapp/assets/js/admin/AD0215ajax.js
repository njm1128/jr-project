$(document).ready(function() {
	$('.check-all').click(function() {
		$('.ab').prop('checked', this.checked);
	});
})

function noticeBtnHandler(status, no, btn) {

	if (status === 0) {
		$(btn).val("해제");
	} else {
		$(btn).val("설정");
	}

	$.ajax({
		url : "/ad0215Notice.do",
		type : "get",
		data : {
			"status" : status,
			"no" : no
		},
		success : function(data) {

		}
	});
}

function deleteBtnHandler(no, btn) {

	var delConfirm = confirm('데이터를 삭제할 경우 복원이 어렵습니다. 삭제하시겠습니까?');
	if (delConfirm) {
		$.ajax({
			url : "/ad0215Delete.do",
			type : "get",
			data : {
				"no" : no
			},
			success : function(data) {
				alert("선택하신 데이터가 삭제되었습니다.");
				window.location.reload();
			}
		});
	} else {
		alert('삭제가 취소되었습니다.');
	}

}