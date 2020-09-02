<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="select-destination">
	<!-- <form action="port.do" method="get"> -->
		<c:forEach begin="0" end="7" step="1">
			<div class="select-destination__name border-style">나라</div>
			<div class="select-destination__content border-style">
				<input type="button" value="선택" onclick="location.href='Move.jsp'">
			</div>
		</c:forEach>
	<!-- </form> -->
</div>
