package com.gamemain;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.MainHandler;

public class GameMainHandler implements MainHandler {

	@Override
	public String Action(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, String> openPage = new HashMap<String, String>();

		openPage.put("main", "game_main");
		openPage.put("store", "game_store");
		openPage.put("shipyard", "game_shipyard");
		openPage.put("warehouse", "game_warehouse");
		openPage.put("port", "game_port");
		openPage.put("palace", "game_palace");
		openPage.put("job", "game_job");
		openPage.put("gamble", "game_gamble");

		String kind = request.getParameter("kind");

		request.setAttribute("part", "main");

		if (openPage.containsKey(kind)) {
			request.setAttribute("page", openPage.get(kind));
		} else {
			request.setAttribute("page", openPage.get("main"));
		}

		return null;
	}
}
