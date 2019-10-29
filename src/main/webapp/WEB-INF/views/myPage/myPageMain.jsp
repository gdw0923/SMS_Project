<%@page import="com.boot.finalpro.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="/css/myPage/myPageMain.css">
</head>
<body>

	<%-- <div>

		<p style="font-size: 15px; font-weight: bold;">아이디 ${member.id}</p>
		<p style="font-size: 15px; font-weight: bold;">포인트
			${member.now_point}</p>
		<p style="font-size: 15px; font-weight: bold;">머니
			${member.now_money}</p>

		<div style="margin-bottom: 600px;"></div>

	</div> --%>


	<div class="form-div">
		<div class="col-xs-6 col-md-4">
			<label class="form-control">아이디</label>
		</div>
		<div class="col-xs-6 col-md-7">
			<label class="form-control">${member.id}</label>
		</div>
		<div class="col-xs-6 col-md-4">
			<label class="form-control">포인트</label>
		</div>
		<div class="col-xs-6 col-md-7">
			<label class="form-control">${member.now_point}</label>
		</div>
		<div class="col-xs-6 col-md-4">
			<label class="form-control">머니</label>
		</div>
		<div class="col-xs-6 col-md-7">
			<label class="form-control">${member.now_money}</label>
		</div>
	</div>

</body>
</html>