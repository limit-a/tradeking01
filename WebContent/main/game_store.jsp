<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="store">
	<form action="gamemain.do" method="get">
		<input type="hidden" name="kind" value="store">
		<jsp:include page="/menu/Back.jsp" />
		<jsp:include page="/menu/Menu.jsp" />
		<h1 id=title>상점</h1>


		<div id=stat>소지 ???GOLD 적재량 ???</div>

		<div id=shop>상품</div>
		<div id=inven>소지</div>

		<div id=buy>
			<b>금액 ???GOLD</b><br> <b>적재량</b><br>

			<button>사기</button>
		</div>

		<div id=sell>
			<b>금액 ???GOLD</b><br> <b>적재량</b><br>
			<button>팔기</button>
		</div>

	</form>
</div>