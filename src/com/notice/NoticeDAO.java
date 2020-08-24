package com.notice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NoticeDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;

	public NoticeDAO() {
		try {
			conn = DriverManager
					.getConnection("jdbc:apache:commons:dbcp:jaehan");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Notice> AllSelectNotice() {
		ArrayList<Notice> data = new ArrayList<Notice>();

		String sql = "select * from notice order by num desc";

		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();

			while (rs.next()) {
				Notice temp = new Notice(rs.getInt("num"),
						rs.getString("title"), rs.getString("content"),
						rs.getDate("wdate"), rs.getInt("hit"));
				data.add(temp);
			}
			return data;
		} catch (SQLException e) {
			System.out.println("Notice 테이블 실패");
			e.printStackTrace();
		}
		return null;
	}
}
