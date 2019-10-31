<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<!-- 전체 약간 회색 배경다이브 -->
	<div style="width: 1400px; height: 200px; margin: auto; padding-top:30px; background-color: #e2e2e2;">
		<!-- 내용 전체 다이브 -->
		<div style="width: 800px; height: 140px; margin: auto; background-color: white;">
			<!-- 포인트, 머니 뿌려줄 리스트...? -->
			<ul style="list-style: none; padding: 0; margin: 0;">
				<li>
					<!-- 현 등급 및 등급보기 버튼있는 다이브 -->
					<div style="width: 220px; height:140px; margin-right: 5px; float: left; border: 2.5px solid #00ffff;">
						<div style="width: 200px; height: 50px; margin: 10px auto;">
							<p style="font-size: 13pt; font-weight: bold; text-align: center;">${member.name}님의 등급 <img src="/image/myPageCrown.png"></p>
						</div> 
							<div style="width: 200px; height: 50px; margin: 10px auto; text-align: center;">
								<c:if test="${(member.total_point gt -1) and (member.total_point lt 500)}">
									<p>비기너</p>
								</c:if>
								<c:if test="${(member.total_point gt 500) and (member.total_point lt 5000)}">
									<p>아머추어</p>
								</c:if>
								<c:if test="${(member.total_point gt 5000) and (member.total_point lt 20000)}">
									<p>세미프로</p>
								</c:if>
								<c:if test="${(member.total_point gt 20000) and (member.total_point lt 99999)}">
									<p>프로페셔널</p>
								</c:if>
								<c:if test="${(member.total_point gt 99999) and (member.total_point lt 999999)}">
									<p>킹</p>
								</c:if>
							</div>	
					</div>
				</li>
				<li>
					<!-- 토탈머니 -->
					<div style="width: 140px; height:140px; margin-right: 5px; float: left; border: 2.5px solid #00ffff;">
						<div style="width: 120px; height: 50px; margin: 10px auto; text-align: center">
							<p>토탈머니</p>
						</div>
						<div style="width: 140px; height: 50px; margin: 10px auto; text-align: center;">
							<p>${member.total_money}</p>
						</div>
					</div>
				</li>
				<li>
					<!-- 나우머니 -->
					<div style="width: 140px; height:140px; margin-right: 5px; float: left; border: 2.5px solid #00ffff;">
						<div style="width: 120px; height: 50px; margin: 10px auto; text-align: center">
							<p>나우머니</p>
						</div>
						<div style="width: 140px; height: 50px; margin: 10px auto; text-align: center;">
							<p>${member.now_money}</p>
						</div>
					</div>
				</li>
				<li>
					<!-- 토탈포인트 -->				
					<div style="width: 140px; height:140px; margin-right: 5px; float: left; border: 2.5px solid #00ffff;">
						<div style="width: 120px; height: 50px; margin: 10px auto; text-align: center">
							<p>토탈포인트</p>
						</div>
						<div style="width: 140px; height: 50px; margin: 10px auto; text-align: center;">
							<p>${member.total_point}</p>
						</div>
					</div>				
				</li>
				<li>
					<!-- 나우포인트 -->
					<div style="width: 140px; height:140px; float: left; border: 2.5px solid #00ffff;">
						<div style="width: 120px; height: 50px; margin: 10px auto; text-align: center">
							<p>나우포인트</p>
						</div>
						<div style="width: 140px; height: 50px; margin: 10px auto; text-align: center;">
							<p>${member.now_point}</p>
						</div>
					</div>
				</li>				
			</ul>		
		</div>
	</div>
</body>
</html>