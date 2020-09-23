<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<jsp:include page="/menu/Back.jsp" />
<jsp:include page="/menu/Menu.jsp" />
<div class="ship-yard border-style">
	<div class="ship-yard__menu">
		<jsp:include page="/menu/ShipYardMenu.jsp" />
	</div>
	<form action="gamemain.do" method="get">
		<input type="hidden" name="kind" value="shipyard">
		<h1 class="flex__center">조선소</h1>
		<div class="ship-yard__content">
		<c:choose>
			<c:when test="${port_part != null}">
				<c:set var="path" value="${port_part }/${port_pg }.jsp" />
				<jsp:include page="${path }" />
			</c:when>
			<c:otherwise>
				<jsp:include page="/shipyard/shipyard_trading.jsp" />
			</c:otherwise>
		</c:choose>
			<%-- <%
				if (part != null) {
				path = pg + ".jsp";
			%>
			<jsp:include page="<%=path%>" />
			<%
				} else {
			%>
			<jsp:include page="ShipTrading.jsp" />
			<%
				}
			%> --%>
		</div>
	</form>
</div>
