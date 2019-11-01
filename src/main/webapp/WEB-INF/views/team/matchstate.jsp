<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
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

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<meta charset="UTF-8">
<title>매칭 신청 관리</title>
</head>
<body>

<table class="table table-hover table-responsive" id="matlist">
    	<thead>
		<tr>
			<th>팀명</th><th>팀장명</th><th>내용</th><th>수락/거절</th>
		</tr>
		</thead>
	 	<c:if test="${empty matchinglist}">
	 	<tbody>
		<tr>
			<td colspan="4">
				<h4>작성된 글이 없습니다</h4>
			</td>
		</tr>
		</tbody>
		</c:if>
		<c:forEach items="${matchinglist }" var="matlist" varStatus="vs">
		<tbody>
		<tr>
			<td>${matlist.name_team2 }</td>
			<td>${matlist.id }</td>
			<td>${matlist.message }</td>
			<td>
				<button type="button" id="_accept_btncls" class="accept_btncls" user_id="${matlist.name_team2 }">수락</button>&nbsp;
				<button type="button" id="_reject_btncls" class="reject_btncls" user_id="${matlist.seq_gamematch }">거절</button>
				<input type="hidden" id="_seq_game" value="${matlist.seq_game }">
				<input type="hidden" id="_mat_seq" value="${matlist.seq_gamematch }">
			</td>
		</tr>	
		</tbody>
		</c:forEach>
	</table>
<!-- <form id="frm" action="matchappect.do" method="post">
	<input type="hidden" id="seqGame" name="seq_game">
	<input type="hidden" id="teamName2" name="team_name2">
</form> -->
<script type="text/javascript">

$(document).ready(function () {
	
	
	
	
	$(document).on("click", "#_accept_btncls", function () {
		var name_team2 = $(this).attr("user_id");
		var seq = $("#_seq_game").val();
		opener.location.href = "matchappect.do?seq_game="+ seq + "&name_team2=" + name_team2;
		self.close();

		
	});
	
	$(document).on("click", "#_reject_btncls", function () {
		var matseq = $("#_mat_seq").val();
		opener.location.href = "matchreject.do?seq_gamematch="+ matseq;
		self.close();
	});
});


</script>

</body>
</html>