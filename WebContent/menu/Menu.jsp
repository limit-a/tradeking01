<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="menu">
	<div class="flex__center"
		onclick="window.open('http://<%=request.getServerName()%>:8080/TradeKing/menu/Map.jsp', '지도', 'width=720, height=480, top=500, left=0')">지도</div>
	<div class="flex__center"
		onclick="window.open('http://<%=request.getServerName()%>:8080/TradeKing/menu/Status.jsp', '스테이터스', 'width=720, height=480, top=500, left=0')">스테이터스</div>
	<div class="flex__center"
		onclick="window.open('http://<%=request.getServerName()%>:8080/TradeKing/menu/News.jsp', '뉴스', 'width=720, height=480, top=500, left=0')">뉴스</div>
	<div class="flex__center"
		onclick="window.open('http://<%=request.getServerName()%>:8080/TradeKing/menu/Ranking.jsp', '랭킹', 'width=720, height=480, top=500, left=0')">랭킹</div>
</div>