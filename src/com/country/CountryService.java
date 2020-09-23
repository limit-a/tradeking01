package com.country;

import java.util.ArrayList;

public class CountryService {
	private CountryDAO cd = new CountryDAO();

	public String RandomCountry() {
		ArrayList<Country> list = cd.AllCountrySelect();
		int randomNum = (int) (Math.random() * list.size()) + 1;
		Country temp = list.get(randomNum);
		String ramdomCountry = temp.getCountryName();
		
		return ramdomCountry;

	}

}
