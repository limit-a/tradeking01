<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="login border-style">
	<p class="flex-style">Log-in</p>
	<form action="login.do" method="post" id="login_f">
		<input type="hidden" name="kind" value="login">
		<!--  -->
		아이디 : <input type="text" id="game_id" name="game_id"><br>
		<!--   -->
		비밀번호 : <input type="password" id="game_password" name="game_password">
		<button type="button" onclick="login_()" id="login_bt">로그인</button>
	</form>
</div>