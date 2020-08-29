package com.player;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.country.CountryService;

public class PlayerDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;
	private CountryService cs = new CountryService();

	public PlayerDAO() {
		try {
			conn = DriverManager
					.getConnection("jdbc:apache:commons:dbcp:tradeking");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private int getMaxNum() {
		String sql = "select Max(num) as m from game_player";
		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();
			if (rs.next()) {
				return rs.getInt("m") + 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}
	
	public boolean InsertPlayer(String id) {
		int num = getMaxNum();
		String sql = "insert into game_player(num, id, ship_name, current_country, gold, product, intimacy) values(?, ?, ?, ?, ?, ?, ?)";

		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, num);
			ptmt.setString(2, id);
			ptmt.setString(3, "돛단배");
			ptmt.setString(4, cs.RandomCountry());
			ptmt.setInt(5, 1000000);
			ptmt.setString(6, "");
			ptmt.setInt(7, 0);

			ptmt.executeUpdate();
			ptmt.close();
			return true;
		} catch (SQLException e) {
			System.out.println("플레이어 DB 저장 실패");
			e.printStackTrace();
		}
		return false;
	}
	
	public Player SessionPlayer(String game_id) {
		String sql = "select * from game_player where id=?";

		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, game_id);

			rs = ptmt.executeQuery();

			if (rs.next()) {
				
			}
		} catch (SQLException e) {
			System.out.println("LoginDB 문제");
			e.printStackTrace();
		}
		return null;
	}
}
