<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/css/myPage/myPagePay.css">
	<script type="text/javascript" src="/js/myPage/myPagePay.js"></script>
</head>
<body>
	<form id="payFrm">
		<div class="form-div">
			<div class="form-div-sub1">
				<div style="text-align: left;">
					<p style="font-size:15pt; font-weight:bold; text-align: center;">이용약관</p>
				<!-- 	<textarea class="form-control" readonly="readonly" rows="15" cols="25">본 약관...</textarea> -->
					<pre>동해물과 백두산이 마르고 닳도록 하하사 우리날마ㅏㄴ세 가나다라마바사 아자차카타파하 abcdefasdasdasdasdasd1as21as3da3s21d3as2d13a2s1d32as1d32as1d32as1d3a2s1d32동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리날마ㅏㄴ세 가나다라마바사 아자차카타파하 abcdefasdasdasdasdasd1as21as3da3s21d3as2d13a2s1d32as1d32as1d32as1d3a2s1d32as1d32as1d3a2s1d3a2sdasd1a32sd13a2sd132a동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리날마ㅏㄴ세 가나다라마바사 아자차카타파하 abcdefasdasdasdasdasd1as21as3da3s21d3as2d13a2s1d32as1d32as1d32as1d3a2s1d32동해물과 백두산이 마르고 닳도록 하느님이 dasdasdasd1as2132asd132asd132</pre>
					<div style="text-align: right">
						약관동의
						<input type="checkbox" id="agree_radio">
					</div>
				</div>
			</div>

			<div class="form-div-sub2">
				<div class="form-group">
					<select id="pay_Thing" name="payThing" class="form-control">
						<option value="" selected="selected">결제수단</option>
						<option value="card">신용카드</option>
						<option value="phone">휴대폰 결제</option>
						<option value="samsung">삼성페이</option>
					</select>
				</div>	
				<div class="form-group">
			  		<input type="text" class="form-control"  id="pay_Money" name="payMoney" maxlength="6" placeholder="금액을 입력해주세요."
			  			   	  onkeydown="fn_press_han(this);" style="ime-mode:disabled;" readonly="readonly">
		  		</div>
		  		<div class="form-group">
		  			<font id="payMoney_font">최대 충전금액은 50,000원 입니다.</font>
		  		</div>
				<div class="col-xs-6 col-md-4">
	        		<label class="form-control">결제수단</label>
	   			</div>
	   			<div class="col-xs-6 col-md-7">
					<label id="val_payThing" class="form-control"></label>
	   			</div>
	   			<div class="col-xs-6 col-md-4">
	        		<label class="form-control">결제금액</label>
	   			</div>
	   			<div class="col-xs-6 col-md-7">
	   				<input type="hidden" id="val_payMoney_hidden">
					<label id="val_payMoney" class="form-control"></label>
	   			</div>
				<div class="form-group">
					<button type="button" class="btn btn-danger" id="payBtn" style="width: 100%;">결제하기</button>
				</div>
			</div>
		</div>
	</form>
	
</body>
</html>