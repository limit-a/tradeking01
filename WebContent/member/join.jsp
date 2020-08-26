<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="join">
	<!-- <p>회원가입</p> -->
	<form action="join.do" method="post" id="join_f">
		<input type="hidden" name="kind" value="join_save">
		<!--  -->
		<fieldset>
			<legend>필수 입력</legend>
			<!--  -->
			아이디 : <input type="text" id="game_id" name="game_id">
			<!--  -->
			<input type="button" value="중복 체크" onclick="idDup()"><br>
			<!--  -->
			비밀번호 : <input type="password" id="game_password" name="game_password"><br>
			비밀번호 확인 : <input type="password" id="game_password__confirm" name="game_password__confirm"><br>
			이메일 : <input type="email" id="game_email" name="game_email"><br>
		</fieldset>
		<button type="button" onclick="join_()" id="join_bt">회원가입</button>
		<button type="button" onclick="cnl()">가입 취소</button>
	</form>
</div>