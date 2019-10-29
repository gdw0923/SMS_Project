<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Insert title here</title>
	</head>
<body>
	<div class="login_wrap" style="width: 50%; margin:auto; margin-top: 200px;">
		  <h1>로그인 페이지</h1>
		  <form action="" id="loginFrm" >
		  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		  	<table style="width: 50%; margin: auto;">
		  		<tr>
		  			<td colspan="2">
		  				<input type="text" placeholder="id 입력" id="id" name="username">
		  			</td>
		  		</tr>
		  		<tr>
		  			<td colspan="2">
		  				<span style="opacity: 0">공간 맞추기</span>
		  			</td>
		  		</tr>
		  		<tr>
		  			<td colspan="2">
		  				<input type="password" placeholder="비밀번호 입력" id="pwd" name="password">
		  			</td>
		  		</tr>
		  		<tr>
		  			<td colspan="2">
		  				<input type="checkbox" id="chk_save_id"><span style="font-weight: bold;">Remember ME</span>
		  			</td>
		  		</tr>
		  		<tr>
		  			<td colspan="2">
		  				<input type="button" value="로그인" class="btn btn-default" id="loginbtn">
		  			</td>
		  		</tr>
		  		<tr>
		  			<td colspan="2">
		  				<span style="opacity: 0">공간 맞추기</span>
		  			</td>
		  		</tr>
		  		<tr>
		  			<td>
						<a href="findPwdPage.do">비밀번호 찾기</a>
		  			</td>
		  			<td>
						<a href="regiPage.do">회원가입</a>
		  			</td>
		  		</tr>
		  	</table>
		</form>
	</div>
<script type="text/javascript">


$(document).ready(function() {

	
	$("#loginbtn").click(function() { //  로그인 버튼 누를때
		 
		if( $("#id").val().trim() == "" ){
			alert("id를 입력해주십시오");
			$("#id").focus();
		}
		else if( $("#pwd").val().trim() == "" ){
			alert("password를 입력해주십시오");
			$("#pwd").focus();
		} 
		else{
			$("#loginFrm").attr({"action":"../login", "method":"post"}).submit();
		}
		
	});
 
	var user_id = $.cookie("user_id");
	
	if( user_id != null){ // 지정한 쿠키가 있을때
		//alert("쿠키 있음");	
		$("#id").val( user_id );
		$("#chk_save_id").attr("checked", "checked");
	}

	$("#chk_save_id").click(function() {
		if( $("#chk_save_id").is(":checked") ){ // 체크되었을떄
			alert("체크됌");
			if($("#id").val().trim() == ""){
				alert("id를 입력해주십시오");
				$("#chk_save_id").prop("checked", false);
			}else{ //정상기입 한경우
				$.cookie("user_id", $("#id").val().trim(), {expires:7, path:'/'}); // 쿠키를 사용하고 7일간 저장 (expires:저장기간 path:모든경로 ?)
			}
		}else{ // 체크 해제되었을때
			alert("체크 없어짐");
			$.removeCookie("user_id", {path:'/'}); // 기한을 없애면서 삭제가 된다.
		}
		
	}); 
	
});

</script>
</body>
</html>