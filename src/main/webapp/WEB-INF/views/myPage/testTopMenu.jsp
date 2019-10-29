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
	<!-- 전체 배경다이브 -->
	<div class="mypage-main-div">
		<!-- 두덩이묶은거 -->
		<div class="mypage-subsum-div">
			<!-- 위에놈 -->
			<div class="mypage-top-div">
				<!-- 위에 첫번째 이름 등급 -->
				<div class="mypage-top-div-sub1" >
					<div class="mypage-top-div-sub1-content">
						<div class="mypage-top-div-id">
							<p>${member.id}</p>
						</div>
						<div style="margin-top: 60px;">
							<p>${member.name}님의 등급
								<c:if test="${member.total_point gt 0 and member.total_point lt 5000}">
									비기너
								</c:if>
								<c:if test="${member.total_point gt 5000 and member.total_point lt 10000}">
									아머추어
								</c:if>
								<c:if test="${member.total_point gt 10000 and member.total_point lt 15000}">
									세미프로
								</c:if>
								<c:if test="${member.total_point gt 20000 and member.total_point lt 25000}">
									프로페셔널
								</c:if>
								<c:if test="${member.total_point gt 25000 and member.total_point lt 30000}">
									킹
								</c:if>
							</p>
						</div>
					</div>
				</div>
				<!-- 등급안내 전체 -->
				<div class="mypage-top-div-sub2">
					<div class="mypage-top-div-sub2-content">
						<div class="">
							등급 사진
						</div>
						<div style="margin-top: 60px;">
							등급 커트라인
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							등급 사진
						</div>
						<div style="margin-top: 60px;">
							등급 커트라인
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							등급 사진
						</div>
						<div style="margin-top: 60px;">
							등급 커트라인
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							등급 사진
						</div>
						<div style="margin-top: 60px;">
							등급 커트라인
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							등급 사진
						</div>
						<div style="margin-top: 60px;">
							등급 커트라인
						</div>
					</div>
				</div>
			</div>
			<!-- 포인트전체 -->
			<div class="mypage-bot-div" >
				<div class="mypage-bot-div-sub1">
					<div style="margin: 20px auto;">
						<p>현재 포인트</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.now_point}</p>
					</div>
				</div>
				<div class="mypage-bot-div-sub2" >
					<div style="margin: 20px auto;">
						<p>전체 포인트</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.total_point}</p>
					</div>
				</div>
				<div class="mypage-bot-div-sub3" >
					<div style="margin: 20px auto;">
						<p>현재 머니</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.now_money}</p>
					</div>
				</div>
				<div class="mypage-bot-div-sub4" >
					<div style="margin: 20px auto;">
						<p>전체 머니</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.total_money}</p>
					</div>			
				</div>
			</div>
		</div>
	</div>
	
	
	<%-- <div align="center" style="z-index: 2; position: absolute; margin: 100px auto; width: 80%; height: 250px;">
		<ul class="mypage-list">
			<li class="mypage-list-item" id="mypage-li-Info">
				<label>
					<p>${member.id}</p>
					<p>${member.name}님</p>등급
					${member.name}
				</label>
			</li>
			<li class="mypage-list-item" id="mypage-li-NPoint">
				<label class="info-label">현재포인트</label>
				<label class="data-label">${member.now_point}포인트</label>
			</li>
			<li class="mypage-list-item" id="mypage-li-TPoint">
					<label class="info-label">전체포인트</label>
					<label class="data-label">${member.total_point}포인트</label>
				
			</li>
			<li class="mypage-list-item" id="mypage-li-NMoney">
				<label class="info-label">현재머니</label>
				<label class="data-label">${member.now_money}원</label>
			</li>
			<li class="mypage-list-item" id="mypage-li-TMoney">
				<label class="info-label">전체머니</label>
				<label class="data-label">${member.total_money}원</label>
			</li>
		</ul>
	</div> --%>


 </body>
</html>