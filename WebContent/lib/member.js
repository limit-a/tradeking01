function login_() {
	var fm = document.querySelector('#login_f');
	if (fm.game_id.value == '') {
		alert('아이디를 입력해주세요');
		fm.game_id.focus();
	} else if (fm.game_password.value == '') {
		alert('비밀번호를 입력해주세요');
		fm.game_password.focus();
	} else {
		fm.submit();
	}
}

function join_() {
	var fm = document.querySelector('#join_f');
	if (fm.game_id.value == '') {
		alert('아이디를 입력해주세요');
		fm.game_id.focus();
	} else if (fm.game_password.value == '') {
		alert('비밀번호를 입력해주세요');
		fm.game_password.focus();
	} else if (fm.game_password__confirm.value == '') {
		alert('비밀번호 확인을 입력해주세요');
		fm.game_password__confirm.focus();
	} else if (fm.game_email.value == '') {
		alert('이메일을 입력해주세요');
		fm.game_email.focus();
	} else {
		fm.submit();
	}
}