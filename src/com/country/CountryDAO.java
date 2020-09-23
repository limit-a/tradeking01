package com.country;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CountryDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ptmt;

	public CountryDAO() {
		try {
			conn = DriverManager
					.getConnection("jdbc:apache:commons:dbcp:tradeking");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Country> AllCountrySelect() {
		ArrayList<Country> data = new ArrayList<Country>();
		String sql = "select * from country";

		try {
			ptmt = conn.prepareStatement(sql);
			rs = ptmt.executeQuery();

			while (rs.next()) {
				Country temp = new Country(rs.getInt("num"),
						rs.getString("country_name"),
						rs.getString("country_image"));
				data.add(temp);
			}
			return data;
		} catch (SQLException e) {
			System.out.println("국가 DB 오류");
			e.printStackTrace();
		}
		return null;
	}
	
}
