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

		<p style="font-size: 15px; font-weight: bold;">���̵� ${member.id}</p>
		<p style="font-size: 15px; font-weight: bold;">����Ʈ
			${member.now_point}</p>
		<p style="font-size: 15px; font-weight: bold;">�Ӵ�
			${member.now_money}</p>

		<div style="margin-bottom: 600px;"></div>

	</div> --%>


	<div class="form-div">
		<div class="col-xs-6 col-md-4">
			<label class="form-control">���̵�</label>
		</div>
		<div class="col-xs-6 col-md-7">
			<label class="form-control">${member.id}</label>
		</div>
		<div class="col-xs-6 col-md-4">
			<label class="form-control">����Ʈ</label>
		</div>
		<div class="col-xs-6 col-md-7">
			<label class="form-control">${member.now_point}</label>
		</div>
		<div class="col-xs-6 col-md-4">
			<label class="form-control">�Ӵ�</label>
		</div>
		<div class="col-xs-6 col-md-7">
			<label class="form-control">${member.now_money}</label>
		</div>
	</div>

</body>
</html>