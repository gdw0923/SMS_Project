<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>팀원 신청</h1>
<form action="memberapplicationAf.do" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<table class="table table-striped">


<tr>
	<th>팀이름</th>
	<td>
		<input type="text" name="team_name" value="${team_name.team_name }">
	</td>
</tr>
<tr>
	<th>id</th>
	<td>
		<input type="text" name="id">
	</td>
</tr>
<tr>
	<th>신청글</th>
	<td>
		<input type="text" name="content">
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" value="팀신청하기">
	</td>
</tr>

</table>



</form>


</body>
</html>