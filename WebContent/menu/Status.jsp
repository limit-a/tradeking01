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
	<div class="status">
		<div>&nbsp;&nbsp;님 (경제력 &nbsp;&nbsp;)</div>
		<div>자산 &nbsp;&nbsp;</div>
		<div>적재량 &nbsp;&nbsp;</div>
		<div>항해 속도 &nbsp;&nbsp;</div>
		<div>선체 공격력 &nbsp;&nbsp;</div>
		<div>선체 방어력 &nbsp;&nbsp;</div>
		<div>현재 위치 &nbsp;&nbsp;</div>
		<div>&nbsp;&nbsp;와의 친밀도 &nbsp;&nbsp;</div>
	</div>
</body>
</html>