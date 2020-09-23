<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="welcome border-style">
	<%-- <jsp:include page="Menu.jsp" /> --%>
	<h1 class="flex__center">무역의 시대에 오신 것을 환영합니다.</h1>
	<ul>
		<li>처음 시작하시는 분이라면 시작하는 나라에서 배를 구입하고 준비된 돈으로 다양한 특산품을 구입하여 다른 나라에서
			매매수익을 남겨주세요.</li>
		<li>적재량 또는 항해 속도 등 배를 업그레이드하는 점도 잊지 말아주세요.</li>
		<li>항해 중에 태풍이나 해적을 만날 수도 있으니 주의하세요.</li>
		<li>모든 나라에는 구매와 판매할 수 있는 상품들이 다르니, 이미 구매한 물품을 판매하지 못할 수도 있어요.</li>
		<li>나라와의 친밀도를 올려 환율 우대 혜택을 누리세요.</li>
		<li>돈이 부족하여 항해를 하지 못하게 될 때에는 직업소개소에서 근무하여 필요한 돈을 모으세요.</li>
		<li>도박장에서는 큰 수익을 기대할 수 있지만 조심하세요.</li>
		<li>뉴스에서 물건을 사고 팔때에는 뉴스에서 환율을 확인하여 좋은 결과를 계획하세요.</li>
		<li>미니맵을 확인 하여 각 나라의 항해 경로를 미리 파악해주세요.</li>
	</ul>
	<p class="flex__center">그럼 즐거운 항해 되세요.</p>
	<div class="welcome__button flex__center">
		<input type="button" value="시작하기"
			onclick="location.href='gamemain.do?kind=main'">
		<!--  -->
		<input type="button" value="불러오기">
	</div>
</div>