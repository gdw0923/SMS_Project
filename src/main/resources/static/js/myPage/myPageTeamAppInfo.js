// 페이징
function goPage( pageNumber ) {
		
	$("#_pageNumber").val(pageNumber);
	$("#_frmFormSearch").attr("action", "myPageTeamAppInfo.do").submit();
}
function teamAppDelete(n, s) {
	var seq = s;
	bootbox.confirm(n + "팀의 신청서를 삭제 하시겠습니까?", function(result){ 
	    if(result) {
	    	location.href="myPageTeamAppDelete.do?seq=" + seq;
	    }
	});
}
