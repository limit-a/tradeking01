package com.center;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TradekingIncludeControl
 */
@WebServlet("/TradekingIncludeControl")
public class TradeKingIncludeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, MainHandler> map = new HashMap();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TradeKingIncludeControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		String iParam = config.getInitParameter("tradeking_include_config");
		Properties prop = new Properties();

		try (FileReader fs = new FileReader(iParam)) {
			prop.load(fs);
		} catch (IOException e) {
			System.out.println("properties 파일 열기 실패, 경로 확인 필요");
		}

		Iterator key = prop.keySet().iterator();

		while (key.hasNext()) {
			String cmd = (String) key.next();
			String value = prop.getProperty(cmd);
			try {
				Class<?> hClass = Class.forName(value);
				MainHandler hInst = (MainHandler) hClass.newInstance();
				map.put(cmd, hInst);
			} catch (ClassNotFoundException | InstantiationException
					| IllegalAccessException e) {
				System.out.println("클래스가 존재하지 않거나 객체 클래스 형식 또는 이름이 잘못");
			}
		}
	}

	protected void IncludeActive(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String key = uri.substring(path.length() + 1);
		MainHandler hand = map.get(key);
		String view = "index.jsp";

		try {
			hand.Action(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("핸들러 클래스 action 메소드 오류");
		}

		RequestDispatcher dps = request.getRequestDispatcher(view);

		dps.include(request, response);

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		IncludeActive(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		IncludeActive(request, response);
	}

}
