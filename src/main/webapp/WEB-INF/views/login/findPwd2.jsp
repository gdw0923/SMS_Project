<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		.test {
			margin: 0px auto;
			width: 100%;
		}
	</style>
</head>
<body>
	<%-- <form id="changeFrm">
		<input type="text" placeholder="id 입력" id="userid" name="id">
		<button type="button" id="findPwdBtn">이메일 전송</button>
		<input type="text" placeholder="인증번호" id="cernum" onkeypress="return fn_press(event,'numbers');" onkeydown="fn_press_han(this);">
		<input type="password" placeholder="바꾸실비밀번호" id="pwd" name="pwd">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
	<button type="button" id="changBtn">패스워드 변경</button> --%>
	
<form class="form-inline">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<div class="form-group">
		<div class="test">
			<label for="exampleInputEmail2">ID</label>
			<input type="email" class="form-control" id="userid" name="id">
			<button type="button" class="btn btn-default" id="fincPwdBtn">인증번호 전송</button>
		</div>
	</div>
	<div class="form-group">
		<input type="text" placeholder="인증번호" id="cernum" onkeypress="return fn_press(event,'numbers');" onkeydown="fn_press_han(this);">
		<input type="password" placeholder="바꾸실비밀번호" id="pwd" name="pwd">
	</div>
</form>
	
<script type="text/javascript">

	var cer = false; // 인증을 했는지 안했는지 변수
	
	var pattern1 = /[0-9]/;	//숫자패턴용
	
	var pattern2 = /[a-zA-Z]/; // 영어패턴용
	
	var pattern3 = /[~!@\#$%<>^&*]/;     // 원하는 특수문자 추가 제거
	
	/*숫자만 입력하게함*/
	function fn_press(event, type) {
		if(type == 'numbers'){
			if((event.keyCode < 48) || (event.keyCode > 57)){
				return false;
			}
		}
	}
	
	/* 한글입력방지 */
	function fn_press_han(obj) {
		if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 ||
				event.keyCode == 39 || event.keyCode == 46){
			return;
		}
		obj.value = obj.value.replace(/[\ㄱ-ㅎ ㅏ-ㅣ 가-힣]/g, "");
	}
	
	function randomRange() { // 인증번호 생성
		  return Math.floor( (Math.random() * (9999 - 1000 + 1)) + 1000 );
	}
	
	var number = randomRange()+"";
	
	var check = false;
	
	$(document).ready(function() {
		
		$("#findPwdBtn").click(function () {
			$.ajax({
				url: "findPwd.do",	
				type: "get",			
				data: "id=" + $("#userid").val().trim() + "&cerNumber=" + number,
				
				success:function(data, status, xhr){
					
					if(data == "true"){
						check = true;
						alert("해당 아이디의 등록 이메일로 인증번호를 발송하였습니다 확인 후 인증번호를 입력하여 주세요");
					}else{
						alert("아이디를 확인 후 다시 입력해주세요");
					}
				},
				error:function(xhr, status, error){
					alert("통신실패");
				}
			});
		});
		
		$("#changBtn").click(function () {
			
			var pw = $("#pwd").val().trim();
			
			var cernum = $("#cernum").val().trim();
		
			if(check == false) {
				alert("이메일 인증을 해주세요");
				
			} else if(!pattern1.test(pw) ||!pattern2.test(pw)||!pattern3.test(pw)||pw.length<8||pw.length>15){

	            alert("비밀번호는 영문+숫자+특수기호 8~15자리로 구성하여야 합니다.");
	            
	        } else {
	        	
	        	if(confirm("입력하신 패스워드로 변경을 하시겠습니까?") == true) {
	        		
	        		$("#changeFrm").attr({"action":"findPwdAf.do", "method":"post"}).submit();
	        		
	        	}
	        	
	        }
		});
		
	});	
		
</script>

</body>
</html>