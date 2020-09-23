<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<c:set var="part" value="${part }" />
<c:set var="pg" value="${page }" />
<c:set var="server"
	value="http://${pageContext.request.serverName }:8080/tradeking01" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무역왕</title>
<link rel="stylesheet" type="text/css"
	href="${server}/lib/tradeking.css">
<c:if test="${part != null }">
	<link rel="stylesheet" type="text/css"
		href="${server}/lib/${part }.css">
	<script type="text/javascript" src="${server}/lib/${part }.js"></script>
</c:if>
</head>
<body>
	<header>
		<div class="login-bar margin-center border-style">
			<jsp:include page="/head/member.jsp" />
		</div>
	</header>
	<div class="wrap margin-center border-style">
		<div class="content box-center">
			<c:choose>
				<c:when test="${part != null}">
					<c:set var="path" value="${part }/${pg }.jsp" />
					<jsp:include page="${path }" />
				</c:when>
				<c:when test="${sessionScope.id != null }">
					<jsp:include page="Welcome.jsp" />
				</c:when>
				<c:otherwise>
					<jsp:include page="/body/cont.jsp" />
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>