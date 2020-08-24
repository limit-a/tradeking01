package com.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.center.MainHandler;

public class MemberHandler implements MainHandler {
	private MemberService ms = new MemberService();

	@Override
	public String Action(HttpServletRequest request, HttpServletResponse response) {
		String kind = request.getParameter("kind");
		request.setAttribute("part", "member");
		if (kind == null) {
			request.setAttribute("page", "login");
		} else {
			if (kind.equals("join_save")) {
				ms.JoinSave(request, response);
			}
			if (kind.equals("login")) {
				ms.LoginExcute(request, response);
				kind = null;
				request.setAttribute("part", null);
			}
			if (kind.equals("logout")) {
				request.getSession().removeAttribute("id");
				kind = null;
				request.setAttribute("part", null);
			}
			request.setAttribute("page", kind);
		}
		return null;
	}

}
