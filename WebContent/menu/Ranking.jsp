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
<link rel="stylesheet" type="text/css" href="${server }/lib/tradeking.css">
</head>
<body>
	<div class="ranking">
		<div class="ranking__head border-style">
			<div>순위</div>
			<div>아이디</div>
			<div>점수</div>
		</div>
		<div class="ranking__table">
			<div>1</div>
			<div>2</div>
			<div>3</div>
		</div>
	</div>
</body>
</html>