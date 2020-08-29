package com.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.player.PlayerDAO;

public class MemberService {
	private MemberDAO md = new MemberDAO();
	private PlayerDAO pd = new PlayerDAO();

	public void JoinSave(HttpServletRequest request,
			HttpServletResponse response) {
		Member temp = new Member();

		temp.setGameId(request.getParameter("game_id"));
		temp.setGamePassword(request.getParameter("game_password"));
		temp.setGameEmail(request.getParameter("game_email"));
		if (md.InsertDB(temp)) {
			request.setAttribute("idt", temp.getGameId());
		} else {
			System.out.println("회원가입 저장 실패");
		}
	}

	public void LoginExcute(HttpServletRequest request,
			HttpServletResponse response) {
		String gameId = request.getParameter("game_id");
		String gamePassword = request.getParameter("game_password");

		if (md.LoginDB(gameId, gamePassword)) {
			request.getSession().setAttribute("id", gameId);
			/* request.getSession().setAttribute("playerId", gameId); */
			
		} else {
			request.setAttribute("nomatch", "fail");
		}
	}

}
