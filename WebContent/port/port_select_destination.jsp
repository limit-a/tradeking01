<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/menu/Back.jsp" />
<jsp:include page="/menu/Menu.jsp" />
<div class="port__menu">
	<jsp:include page="/port/port_menu.jsp" />
</div>
<div class="select-destination">
	<c:forEach begin="0" end="7" step="1">
		<div class="select-destination__name border-style">나라</div>
		<div class="select-destination__content border-style">
			<input type="button" value="선택" onclick="location.href='Move.jsp'">
		</div>
	</c:forEach>
</div>
