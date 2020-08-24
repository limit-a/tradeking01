<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="id" value="${sessionScope.id }" />
<c:choose>
	<c:when test="${id == null }">
		<a href="login.do">로그인</a>
		<!--  -->
		<a href="join.do?kind=join">회원가입</a>
	</c:when>
	<c:otherwise>
${id}&nbsp;로그인 중...&nbsp;
<a href="login.do?kind=logout">로그아웃</a>
		<a href="">MY PAGE</a>
	</c:otherwise>
</c:choose>