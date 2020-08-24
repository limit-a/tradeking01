package com.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;

	public MemberDAO() {
		try {
			conn = DriverManager
					.getConnection("jdbc:apache:commons:dbcp:jaehan");
		} catch (SQLException e) {
			System.out.println("MemberDAO 문제");
			e.printStackTrace();
		}
	}

	private int getMaxNum() {
		String sql = "select Max(num) as m from game_member";
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("m") + 1;
			}
		} catch (SQLException e) {
			System.out.println("getMaxNum 문제");
			e.printStackTrace();
		}
		return 1;
	}

	public boolean InsertDB(Member temp) {
		int num = getMaxNum();
		String sql = "insert into game_member(num, id, password, email) values(?, ?, ?, ?)";

		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, temp.getGameId());
			ptmt.setString(3, temp.getGamePassword());
			ptmt.setString(4, temp.getGameEmail());

			ptmt.executeUpdate();
			ptmt.close();
			return true;
		} catch (SQLException e) {
			System.out.println("회원가입 DB 저장 실패");
			e.printStackTrace();
		}
		return false;
	}

	public boolean LoginDB(String game_id, String game_password) {
		String sql = "select * from game_member where id=? and password=?";

		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, game_id);
			ptmt.setString(2, game_password);

			rs = ptmt.executeQuery();

			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("LoginDB 문제");
			e.printStackTrace();
		}
		return false;
	}
}
