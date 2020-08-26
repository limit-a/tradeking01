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
		<div class="login-bar box-center">
			<jsp:include page="/head/member.jsp" />
		</div>
	</header>
	<div class="wrap box-center">
		<div class='main'>
		<jsp:include page="/menu/Menu.jsp" />
		<div class='country-name'>미국</div>
		<div class="main__content">
			<div class='country-img'></div>
			<div class='left-side'>
				<div class='store' onclick="location.href='./store/Store.jsp'">상점</div>
				<div class='shiphouse' onclick="location.href='./shipyard/ShipYard.jsp'">조선소</div>
				<div class='storage' onclick="location.href='./warehouse/Warehouse.jsp'">창고</div>
				<div class='port' onclick="location.href='./port/Port.jsp'">항구</div>
			</div>
			<div class='right-side'>
				<div class='greathall' onclick="location.href='./palace/Palace.jsp'">왕궁</div>
				<div class='jobsearch' onclick="location.href='./job/Job.jsp'">직업소개소</div>
				<div class='gamble' onclick="location.href='./gamble/Gamble.jsp'">도박장</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>