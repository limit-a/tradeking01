<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/menu/Back.jsp" />
<jsp:include page="/menu/Menu.jsp" />
<div class="port border-style">
	<div class="port__menu">
		<jsp:include page="/port/port_menu.jsp" />
	</div>
	<div class="port__content">
		<form action="port.do" method="get">
			<!-- <div class="select-destination"> -->
			<jsp:include page="/port/port_select_destination.jsp" />
			<!-- </div> -->
		</form>
	</div>
</div>
