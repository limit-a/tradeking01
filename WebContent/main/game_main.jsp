<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class='main'>
	<form action="gamemain.do" method="get">
		<input type="hidden" name="kind" value="game_main">
		<jsp:include page="/menu/Menu.jsp" />
		<div class='country-name'>미국</div>
		<div class="main__content">
			<div class='country-img'></div>
			<div class='left-side'>
				<div class='store'
					onclick="location.href='gamemain.do?kind=store'">상점</div>
				<div class='shiphouse'
					onclick="location.href='./shipyard/ShipYard.jsp'">조선소</div>
				<div class='storage'
					onclick="location.href='./warehouse/Warehouse.jsp'">창고</div>
				<div class='port' onclick="location.href='./port/Port.jsp'">항구</div>
			</div>
			<div class='right-side'>
				<div class='greathall' onclick="location.href='./palace/Palace.jsp'">왕궁</div>
				<div class='jobsearch' onclick="location.href='./job/Job.jsp'">직업소개소</div>
				<div class='gamble' onclick="location.href='./gamble/Gamble.jsp'">도박장</div>
			</div>
		</div>
	</form>
</div>
