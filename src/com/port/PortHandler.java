package com.port;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.center.MainHandler;

public class PortHandler implements MainHandler {

	@Override
	public String Action(HttpServletRequest request,
			HttpServletResponse response) {
		Map<String, String> openPage = new HashMap<String, String>();

		openPage.put("select", "port_select_destination");
		openPage.put("oiling", "port_ship_oiling");
		openPage.put("sailing", "port_sailing");
		openPage.put("pirate", "port_pirate");
		openPage.put("typhoon", "port_typhoon");

		String kind = request.getParameter("kind");

		request.setAttribute("part", "port");

		if (openPage.containsKey(kind)) {
			request.setAttribute("page", openPage.get(kind));
		} else {
			request.setAttribute("page", openPage.get("select"));
		}

		return null;
	}
}
