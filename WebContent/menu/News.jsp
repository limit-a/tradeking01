<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="server"
	value="http://${pageContext.request.serverName }:8080/tradeking01" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${server }/lib/tradeking.css">
</head>
<body>
	<div class="news">
		<h1 class="flex__center">오늘의 환율 정보</h1>
		<div class="news__table flex__center">
			<div class="news__left">
				<jsp:include page="GridTable.jsp" />
			</div>
			<div class="news__right">
				<jsp:include page="GridTable.jsp" />
			</div>
		</div>
	</div>
</body>
</html>