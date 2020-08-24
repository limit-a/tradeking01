package com.center;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MainHandler {

	public String Action(HttpServletRequest request,
			HttpServletResponse response);

}
