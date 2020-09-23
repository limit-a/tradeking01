<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="ship-trading">
	<c:forEach begin="0" end="7" step="1">
		<div class="ship-trading__name border-style">선박</div>
		<div class="ship-trading__content border-style">
			<input type="button" value="구매" onclick="buy()">
		</div>
	</c:forEach>
</div>
