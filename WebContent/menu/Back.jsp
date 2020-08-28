<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="server"
	value="http://${pageContext.request.serverName }:8080/tradeking01" />

<div class="back" onclick="location.href='${server }/Main.jsp'">뒤로</div>