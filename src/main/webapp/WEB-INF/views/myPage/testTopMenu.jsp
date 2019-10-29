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
	<!-- ��ü �����̺� -->
	<div class="mypage-main-div">
		<!-- �ε��̹����� -->
		<div class="mypage-subsum-div">
			<!-- ������ -->
			<div class="mypage-top-div">
				<!-- ���� ù��° �̸� ��� -->
				<div class="mypage-top-div-sub1" >
					<div class="mypage-top-div-sub1-content">
						<div class="mypage-top-div-id">
							<p>${member.id}</p>
						</div>
						<div style="margin-top: 60px;">
							<p>${member.name}���� ���
								<c:if test="${member.total_point gt 0 and member.total_point lt 5000}">
									����
								</c:if>
								<c:if test="${member.total_point gt 5000 and member.total_point lt 10000}">
									�Ƹ��߾�
								</c:if>
								<c:if test="${member.total_point gt 10000 and member.total_point lt 15000}">
									��������
								</c:if>
								<c:if test="${member.total_point gt 20000 and member.total_point lt 25000}">
									������ų�
								</c:if>
								<c:if test="${member.total_point gt 25000 and member.total_point lt 30000}">
									ŷ
								</c:if>
							</p>
						</div>
					</div>
				</div>
				<!-- ��޾ȳ� ��ü -->
				<div class="mypage-top-div-sub2">
					<div class="mypage-top-div-sub2-content">
						<div class="">
							��� ����
						</div>
						<div style="margin-top: 60px;">
							��� ĿƮ����
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							��� ����
						</div>
						<div style="margin-top: 60px;">
							��� ĿƮ����
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							��� ����
						</div>
						<div style="margin-top: 60px;">
							��� ĿƮ����
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							��� ����
						</div>
						<div style="margin-top: 60px;">
							��� ĿƮ����
						</div>
					</div>
					<div class="mypage-top-div-sub2-content">
						<div>
							��� ����
						</div>
						<div style="margin-top: 60px;">
							��� ĿƮ����
						</div>
					</div>
				</div>
			</div>
			<!-- ����Ʈ��ü -->
			<div class="mypage-bot-div" >
				<div class="mypage-bot-div-sub1">
					<div style="margin: 20px auto;">
						<p>���� ����Ʈ</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.now_point}</p>
					</div>
				</div>
				<div class="mypage-bot-div-sub2" >
					<div style="margin: 20px auto;">
						<p>��ü ����Ʈ</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.total_point}</p>
					</div>
				</div>
				<div class="mypage-bot-div-sub3" >
					<div style="margin: 20px auto;">
						<p>���� �Ӵ�</p>
					</div>
					<div style="margin: 20px auto;">
						<p>${member.now_money}</p>
					</div>
				</div>
				<div class="mypage-bot-div-sub4" >
					<div style="margin: 20px auto;">
						<p>��ü �Ӵ�</p>
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
					<p>${member.name}��</p>���
					${member.name}
				</label>
			</li>
			<li class="mypage-list-item" id="mypage-li-NPoint">
				<label class="info-label">��������Ʈ</label>
				<label class="data-label">${member.now_point}����Ʈ</label>
			</li>
			<li class="mypage-list-item" id="mypage-li-TPoint">
					<label class="info-label">��ü����Ʈ</label>
					<label class="data-label">${member.total_point}����Ʈ</label>
				
			</li>
			<li class="mypage-list-item" id="mypage-li-NMoney">
				<label class="info-label">����Ӵ�</label>
				<label class="data-label">${member.now_money}��</label>
			</li>
			<li class="mypage-list-item" id="mypage-li-TMoney">
				<label class="info-label">��ü�Ӵ�</label>
				<label class="data-label">${member.total_money}��</label>
			</li>
		</ul>
	</div> --%>


 </body>
</html>