<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
	table{
	border-collapse: collapse;
}
th{
	background-color: #042E6F;
	color: white;
	padding: 15px;
	text-align: center;
}
td{
	border-bottom: 1px solid #A2AAC1;
	padding: 12px;
}

#jb-container {
	width: 1200px;
	margin: 0px auto;
	padding: 20px;
	
}
 #jb-header {
  padding: 20px;
  margin-bottom: 20px;
  margin-left: auto;
  margin-right: auto;
}

#_search #_s_category, #_s_keyword, #_btnSearch{
	float: right;
	margin-left: 10px;
}
#paging_wrap{
	margin: 0;
}

#jb-footer {
	clear: both;
	padding: 20px;
}

#jb-content1{
	width: 1200px;
	margin-left: 3px;
	margin: 0;
}


#jb-content11{
	width: 380px;
	margin-left: 30px;
	padding-left: 30px;
	margin: 0;
	float: left;
	
}

</style>


<h1>팀리스트</h1>


<div id="jb-container">
	
<div class="card mb-3" id="jb-content1">

<div id="jb-header">
	<button class="btn btn-primary" id="_all_btn" onclick="sport('')">모든종목</button>
	<button class="btn btn-primary" id="_soccer_btn" onclick="sport('축구')">축구</button>
	<button class="btn btn-primary" id="_basket_btn" onclick="sport('야구')">야구</button>
	<button class="btn btn-primary" id="_base_btn" onclick="sport('농구')">농구</button>
	<button class="btn btn-primary" id="_bad_btn" onclick="sport('배드민턴')">배드민턴</button>
	<button class="btn btn-primary" id="_ping_btn" onclick="sport('탁구')">탁구</button>
</div>
<c:if test="${empty teamlist }">
	<div>
		<h4>작성된 글이 없습니다</h4>
	</div>
</c:if>
<c:forEach items="${teamlist }" var="team" varStatus="vs">
<div id="jb-content11">
  <h3 class="card-header">${team.team_name }</h3>
  <div class="card-body">
    <h5 class="card-title">팀장명:<a onclick="_go_send_message('${team.leader}')" href="#">${team.leader }</a></h5>
    <h6 class="card-subtitle text-muted">창단일:<fmt:formatDate value="${team.fdate }" pattern="yyyy-MM-dd"/></h6>
  </div>
<a href="teamdetail.do?team_name=${team.team_name }">
  <c:choose>
		<c:when test="${empty team.file_name }">
			<img alt="" src="/image/team.png"
				style="width: 250px; height: 150px;">
		</c:when>
		<c:otherwise>
			<img alt="" src="/teamimg/${team.file_name }"
		style="width: 350px; height: 150px;">
		</c:otherwise>
	</c:choose>
</a>
  
  
  <ul class="list-group list-group-flush">
    <li class="list-group-item" style="height: 50px; vertical-align: middle;">${team.title }</li>
    <li class="list-group-item" style="height: 40px;">
    	주종목:${team.sport_category }
    	<c:if test="${team.sport_category eq '축구' }">
    		/ mmr:${team.soccer_mmr }
    	</c:if>
    	<c:if test="${team.sport_category eq '농구' }">
    		/ mmr:${team.basketball_mmr }
    	</c:if>
    	<c:if test="${team.sport_category eq '야구' }">
    		/ mmr:${team.baseball_mmr }
    	</c:if>
    	<c:if test="${team.sport_category eq '탁구' }">
    		/ mmr:${team.pingpong_mmr }
    	</c:if>
    	<c:if test="${team.sport_category eq '배드민턴' }">
    		/ mmr:${team.badminton_mmr }
    	</c:if>
    </li>
    <li class="list-group-item" style="height: 40px;">
    <img alt="" src="/image/like.png" id="_like" style="width: 25px; height: 25px;">
	<span id="_like_count">좋아요 : ${team.like_count }</span> / 신고 : ${team.report_count }</li>
							
  </ul> 
  </div>
</c:forEach>

</div>


<jsp:include page="include/BbssendMessage2.jsp"/>
<div id="jb-footer">
	<div id="paging_wrap">
	<jsp:include page="include/paging.jsp" flush="false">
		<jsp:param name="pageNumber" value="${pageNumber }" />
		<jsp:param name="totalRecordCount" value="${totalRecordCount }" />
		<jsp:param name="pageCountPerScreen" value="${pageCountPerScreen }" />
		<jsp:param name="recordCountPerPage" value="${recordCountPerPage }" />	
	</jsp:include>
	</div>
<form action="" name="frmForm1" id="_frmFormSearch" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<div id="_search">
	<button type="button" id="_btnSearch" class="btn btn-primary" style="width: 60px;">검색</button>
	<input type="text" id="_s_keyword" name="s_keyword" class="form-control" style="width: 130px;">
	<select id="_s_category" name="s_category" class="form-control" style="width: 90px;">
		<option value="">검색어</option>
		<option value="team_name">팀이름</option>
		<option value="leader">팀장</option>
		<option value="title">제목</option>
	</select>
</div>
<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber }">
<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?0:recordCountPerPage }">
<input type="hidden" name="sport_category" id="_sport_category" value="${sport_category }">
</form>

</div>

</div>




<script type="text/javascript">

$(document).ready(function () {
	$("#menu3").css("background-color","#e60013");
	$("#_s_category").val("${s_category}");
	$("#_s_keyword").val("${s_keyword}");
});

function goPage( pageNumber ) {
	$("#_pageNumber").val(pageNumber);
	$("#_frmFormSearch").attr("action", "teamlist.do").submit();	
}

$("#_btnSearch").click(function () {
	//alert("click");
	$("#_pageNumber").val(0);
	$("#_frmFormSearch").attr("action", "teamlist.do").submit();
});

function sport(category) {
	$("#_pageNumber").val(0);
	$("#_sport_category").val(category);
	$("#_frmFormSearch").attr("action", "teamlist.do").submit();
}


	



</script>
	