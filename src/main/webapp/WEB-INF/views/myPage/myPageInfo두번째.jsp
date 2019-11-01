<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Insert title here</title>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript" src="/js/myPage/myPageInfo.js"></script>
		<link rel="stylesheet" href="/css/myPage/myPageInfo.css">
</head>
<body>
	<%-- <form id="infoFrm">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" id="id" name="id" value="${info.id }">
		<h3 class="allfont">변경하실 정보의 목록을 변경하고 변경 버튼을 눌러주시면 정보가 변경됩니다.</h3>
		<table class="table table-hover table-responsive">
			<col width="30%"><col width="70%">
			<tr>
				<th>비밀번호</th>
				<td><input type="password" placeholder="비빌번호 입력" id="pwd"
					name="pwd" value="${info.pwd}"> <br>
				<font color="red" id="pwdfont" size="2px">8~15자리의 특수,영문+숫자로 등록해주십시오<!-- (
						~!@\#$%>&lt;^&amp;* 만 지원합니다. ) --></font></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" placeholder="이름 입력" id="name" name="name"
					value="${info.name}"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" placeholder="주소입력" id="address"
					name="address" value="${info.address }" maxlength="20" readonly="readonly">
	  				<button type="button" class="btn btn-default" id="addressbtn" onclick="sample6_execDaumPostcode()">우편번호찾기</button>
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" placeholder="생년월일(예 : 19920305)"
					id="birthday" name="birthday" maxlength="8"
					onkeypress="return fn_press(event,'numbers');"
					onkeydown="fn_press_han(this);" style="ime-mode: disabled;"
					value="${info.birthday }"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" placeholder="전화번호(예 : 01012345678)"
					id="phone" name="phone" maxlength="11"
					onkeypress="return fn_press(event,'numbers');"
					onkeydown="fn_press_han(this);" style="ime-mode: disabled;"
					value="${info.phone }"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" placeholder="이메일(예 : abc@naver.com)"
					id="email" name="email" onkeydown="fn_press_han(this);"
					style="ime-mode: disabled;" value="${info.email }"></td>
			</tr>
			<tr>
				<th>신장</th>
	  			<td>
	  				<input type="text" placeholder="신장(예 : 165.3)" id="height" name="height" maxlength="5"
	  				  onkeydown="fn_press_han(this);" style="ime-mode:disabled;" value="${info.height }">cm
	  			</td>
	  		</tr>
	  		<tr>
	  			<th>체중</th>
	  			<td>
	  				<input type="text" placeholder="체중(예 : 63.4)" id="weight" name="weight" maxlength="4"
	  				 onkeydown="fn_press_han(this);" style="ime-mode:disabled;" value="${info.weight }">kg
	  			</td>
	  		</tr>
		</table>
	</form>
	
	<table class="table table-hover table-responsive">
		<tr>
			<td style="text-align: right;">
				<button type="button" class="btn btn-primary" id="updateBtn">변경하기</button>
			</td>
			<td style="text-align: right;">
				<button type="button" id="deletebtn" class="btn btn-default">계정삭제</button>
			</td>
		</tr>
	</table> --%>
	<form id="infoFrm">
		<div class="form-div">
			<div class="form-sub-div1">
				<div class="col-xs-6 col-md-4">
	        		<label class="form-control">비밀번호</label>
	   			</div>
	   			<div class="col-xs-6 col-md-7">
					<input type="password" class="form-control" placeholder="비빌번호 입력" id="pwd"	name="pwd">
	   			</div>
	   			
	   			<div class="col-xs-6 col-md-4">
	   			</div>
	   			<div class="col-xs-6 col-md-7">
					<font color="red" id="pwdfont" size="2px">8~15자리의 특수,영문+숫자로 등록해주십시오</font>
	   			</div>
	   			
	   			<div class="col-xs-6 col-md-4">
	   				<label class="form-control">주소</label>
	   			</div>
	   			<div class="col-xs-6 col-md-7">
					<input type="text" class="form-control" placeholder="주소입력" id="address"
					name="address" value="${info.address}" maxlength="20" readonly="readonly">
	   			</div>
	   			
	   			
			</div>
			
			
			
			<div class="form-sub-div2">
				<div class="form-group">
		  		</div>
		  		<div class="form-group">
		  		</div>
		  		<div class="form-group">
		  			<!-- <button type="button" class="btn btn-default" id="addressbtn" onclick="sample6_execDaumPostcode()">우편번호찾기</button> -->
		  		</div>
			</div>
		</div>
	</form>
	
	
</body>
</html>