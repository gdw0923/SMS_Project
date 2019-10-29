// 페이징
function goPage( pageNumber ) {
	$("#_pageNumber").val(pageNumber);
	$("#_frmFormSearch").attr("action", "myPageBBS.do").submit();	
}

$(function() {
	// 검색 셀렉트
	var category = $("#category").val();
	
	$("#_s_category").val(category).prop("selected", true);
	// 검색
	$("#_btnSearch").click(function () {
		//alert("_btnSearch click");
		$("#_pageNumber").val(0);
		$("#_frmFormSearch").attr("action", "myPageBBS.do").submit();	
	});
	// 디테일
	$(".detail").click(function() {
		var seq = $(this).attr("seq");
		location.href="teamBbsdetail.do?seq=" + seq;
	});
	
});





































@RequestMapping(value = "myPageBBS.do", method = { RequestMethod.GET, RequestMethod.POST })
public ModelAndView bbsList(BbsParam param, Principal pcp) {
	
	String userid = pcp.getName();
	param.setId(userid);
	
	log.info("MyPageController bbslist ");
	log.info("bbsparam " + param.toString());
	log.info("asdasdas" + param.getId());
	// paging 처리
	int sn = param.getPageNumber(); // 0 1 2
	int start = sn * param.getRecordCountPerPage() + 1; // 1 11
	int end = (sn + 1) * param.getRecordCountPerPage(); // 10 20

	param.setStart(start);
	param.setEnd(end);

	// 조건의 맞는 모든 글
	List<TeamBBSDTO> bbsList = myPageService.findAllBBSListById(param);
	// 글의 총수
	int totalRecordCount = myPageService.findAllBBSCountById(param);
	// myPageTopMenu
	MemberDTO member = myPageService.findOneMemberById(userid);
	
	for (TeamBBSDTO teamBBSDTO : bbsList) {
		String date = utilMethod.dateEdit(teamBBSDTO.getWdate());
		teamBBSDTO.setWdate(date);
	}

	ModelAndView BBSMav = new ModelAndView();
	BBSMav.setViewName("myBBS.tiles");

	BBSMav.addObject("bbsList", bbsList);
	BBSMav.addObject("id", param.getId());
	BBSMav.addObject("pageNumber", sn);
	BBSMav.addObject("pageCountPerScreen", 10);
	BBSMav.addObject("recordCountPerPage", param.getRecordCountPerPage());
	BBSMav.addObject("totalRecordCount", totalRecordCount);
	BBSMav.addObject("s_keyword", param.getS_keyword());
	BBSMav.addObject("s_category", param.getS_category());
	BBSMav.addObject("member", member);

	return BBSMav;
}