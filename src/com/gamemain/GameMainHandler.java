package com.gamemain;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.MainHandler;

public class GameMainHandler implements MainHandler {

	@Override
	public String Action(HttpServletRequest request, HttpServletResponse response) {
		String kind = request.getParameter("kind");
		request.setAttribute("part", "main");
		if(kind.equals("gamemain")) {
			request.setAttribute("page", kind);
		}
		return null;
	}
}
