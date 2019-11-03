<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" href="/css/myPage/myPageTopMenu.css">
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<!-- 전체 약간 회색 배경다이브 -->
	<div class="menu-background">
		<!-- 내용 전체 다이브 -->
		<div class="menu-container">
			<!-- 포인트, 머니 뿌려줄 리스트...? -->
			<ul>
				<li>
					<!-- 현 등급 및 등급보기 버튼있는 다이브 -->
					<div class="menu-content-grade">
						<div class="menu-content-grade_content1">
							<p id="grade-font">${member.name}님의 등급 <img src="/image/myPageCrown.png" id="grade-crown"></p>
						</div> 
						<div class="menu-content-grade_content2">
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
							<label style="background-color: black; color: white; cursor: pointer;">등급표 보기</label>
						</div>	
					</div>
				</li>
				<li>
					<!-- 토탈머니 -->
					<div class="menu-content-number">
						<div class="menu-content-number_content1">
							<p>Total Money</p>
						</div>
						<div class="menu-content-number_content2">
							<p>${member.total_money}</p>
						</div>
					</div>
				</li>
				<li>
					<!-- 나우머니 -->
					<div class="menu-content-number">
						<div class="menu-content-number_content1">
							<p>Now Money</p>
						</div>
						<div class="menu-content-number_content2">
							<p>${member.now_money}</p>
						</div>
					</div>
				</li>
				<li>
					<!-- 토탈포인트 -->				
					<div class="menu-content-number">
						<div class="menu-content-number_content1">
							<p>Total Point</p>
						</div>
						<div class="menu-content-number_content2">
							<p>${member.total_point}</p>
						</div>
					</div>				
				</li>
				<li>
					<!-- 나우포인트 -->
					<div class="menu-content-number" style="margin-right: 0px;">
						<div class="menu-content-number_content1">
							<p>Now Point</p>
						</div>
						<div class="menu-content-number_content2">
							<p>${member.now_point}</p>
						</div>
					</div>
				</li>				
			</ul>		
		</div>
	</div>
</body>
</html>