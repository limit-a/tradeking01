<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="port_part" value="${port_part }" />
<c:set var="port_pg" value="${port_page }" />

<jsp:include page="/menu/Back.jsp" />
<jsp:include page="/menu/Menu.jsp" />
<div class="port border-style">
	<div class="port__menu">
		<jsp:include page="/port/port_menu.jsp" />
	</div>
	<div class="port__content">
		<!-- <div class="select-destination"> -->
		<c:choose>
			<c:when test="${port_part != null}">
				<c:set var="path" value="${port_part }/${port_pg }.jsp" />
				<jsp:include page="${path }" />
			</c:when>
			<c:otherwise>
				<jsp:include page="/port/port_select_destination.jsp" />
			</c:otherwise>
		</c:choose>
		<!-- </div> -->
	</div>
</div>
