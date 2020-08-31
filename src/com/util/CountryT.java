package com.util;

import java.util.ArrayList;

import com.country.Country;
import com.country.CountryDAO;

public class CountryT {

	private ArrayList<Country> list;

	public CountryT() {
		list = new CountryDAO().AllCountrySelect();
	}

	public ArrayList<Country> getList() {
		return list;
	}

	public void setList(ArrayList<Country> list) {
		this.list = list;
	}
	
}
