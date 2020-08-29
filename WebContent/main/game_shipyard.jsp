<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="ship-yard border-style">
<form action="gamemain.do" method="get">
		<input type="hidden" name="kind" value="shipyard">
		<jsp:include page="/menu/Back.jsp" />
		<jsp:include page="/menu/Menu.jsp" />
		<h1>조선소</h1>
		<div class="ship-yard__menu">
			<jsp:include page="/menu/ShipYardMenu.jsp" />
		</div>
		<div class="ship-yard__content">
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