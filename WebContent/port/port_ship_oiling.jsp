<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/menu/Back.jsp" />
<jsp:include page="/menu/Menu.jsp" />
<div class="port__menu">
	<jsp:include page="/port/port_menu.jsp" />
</div>
<div class="ship-oiling">
	<div>연료 잔량</div>
	<div>구입할 연료량</div>
	<div>금액</div>
	<div></div>
	<div>
		<input type="range" min="0" max="100">&nbsp;<input type="text">
	</div>
	<div></div>
	<input type="button" value="구입">
</div>