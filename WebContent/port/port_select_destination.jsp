<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="ct" value="<%=new CountryT()%>" />

<jsp:include page="/menu/Back.jsp" />
<jsp:include page="/menu/Menu.jsp" />
<div class="port__menu">
	<jsp:include page="/port/port_menu.jsp" />
</div>
<div class="select-destination">
	<c:forEach begin="0" end="7" step="1">
		<div class="select-destination__name border-style">
			<c:forEach var="prc" items="${ct.prc }">
				<c:if test="${ct.prc == ct.list.num }">

				</c:if>
			</c:forEach>
		</div>
		<div class="select-destination__content border-style">
			<input type="button" value="선택" onclick="location.href='Move.jsp'">
		</div>
	</c:forEach>
</div>
