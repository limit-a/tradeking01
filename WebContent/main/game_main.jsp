<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="ct" value="<%=new CountryT()%>" />

<jsp:include page="/menu/Menu.jsp" />
<div class='main'>
	<form action="gamemain.do" method="get">
		<input type="hidden" name="kind" value="main">
		<div class='country-name'>${player.getCurrentCountry() }</div>
		<div class="main__content">
			<div class='country-img'>
				<c:forEach var="list" items="${ct.list }">
					<c:if test="${player.currentCountry.equals(list.countryName) }">
						<img height="250" width="400" alt="" src="image/country_image/${list.countryImage }">
					</c:if>
				</c:forEach>
			</div>
			<div class='left-side'>
				<div class='store' onclick="location.href='gamemain.do?kind=store'">상점</div>
				<div class='shiphouse'
					onclick="location.href='gamemain.do?kind=shipyard'">조선소</div>
				<div class='storage'
					onclick="location.href='gamemain.do?kind=warehouse'">창고</div>
				<div class='port' onclick="location.href='gamemain.do?kind=select'">항구</div>
			</div>
			<div class='right-side'>
				<div class='greathall'
					onclick="location.href='gamemain.do?kind=palace'">왕궁</div>
				<div class='jobsearch'
					onclick="location.href='gamemain.do?kind=job'">직업소개소</div>
				<div class='gamble'
					onclick="location.href='gamemain.do?kind=gamble'">도박장</div>
			</div>
		</div>
	</form>
</div>
