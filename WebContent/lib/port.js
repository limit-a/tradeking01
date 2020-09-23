function port_select_() {
	var popupWidth = 320;
	var popupHeight = 240;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	var popupY = (window.screen.height / 2) - (popupHeight / 2);
	
	window.open('${server}/menu/Ranking.jsp', '랭킹', 'width='+popupWidth+', height='+popupHeight+', top='+popupY+', left='+popupX);
}