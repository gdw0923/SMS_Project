<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<sec:authentication var="user" property="principal" />
<script type="text/javascript" src="/js/top_inc.js"></script>

<div id="top_wrap">
	<div id="top_sub">

		<div id="_title_image"
			style="width: 350px; float: left; display: inline;">
			<a href="../common/main.do"><img alt="사진없음"
				src="../image/mainlogo.png" style="height: 120px; width: 350px;"></a>
		</div>


		<div id="_title_menu" style="width: 50%; float: left;">
			<div style="position: relative;">
				<jsp:include page="top_menu.jsp" />
			</div>
		</div>


		<div id="_title_today"
			style="width: 20%; float: right; text-align: right; padding-right: 50px;">
			<div
				style="position: relative; top: 35px; margin-right: 5%; width: 350px;">

				<c:if test="${user eq 'anonymousUser'}">
					<a href="../common/loginPage.do" title="로그인">로그인</a>&nbsp;&nbsp;&nbsp;
					<a href="../common/regiPage.do" title="회원가입">회원가입</a>
				</c:if>
				
				<c:if test="${user ne 'anonymousUser'}">
					[${user.username}]님 환영합니다<br>
					<a href="../mypage/myPageMain.do">마이페이지</a>&nbsp;&nbsp;&nbsp;
					<button type="button" id="logout" title="로그아웃" class="btn btn-outline-secondary">로그아웃</button>

					<c:forEach var="auth" items="${user.authorities}" varStatus="c">
								
						<c:if test="${auth eq 'ROLE_ADMIN'}">
							<a href="../admin/admin.do">관리자메인</a>
						</c:if>
						
						<%-- 
						<c:if test="${auth eq 'ROLE_MEMBER'}">
							ROLE_MEMBER
						</c:if>
						
						<c:if test="${auth eq 'ROLE_TEAMLEADER'}">
							<input type="hidden" id="_team_leader_" value="ROLE_TEAMLEADER" />
							<input type="text" id="_team_leader_" value="ROLE_TEAMLEADER" />
						</c:if>
						 --%>
						 
					</c:forEach>
				</c:if>


				<form id="frm" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>

			</div>
		</div>

	</div>
</div>
<!-- top_wrap -->
