package com.util;

import java.util.ArrayList;

import com.country.Country;
import com.country.CountryDAO;

public class CountryT {

	private ArrayList<Country> list;
	private int[] prc;

	public CountryT() {
		list = new CountryDAO().AllCountrySelect();
		randomIndex();
	}

	public ArrayList<Country> getList() {
		return list;
	}

	public void setList(ArrayList<Country> list) {
		this.list = list;
	}

	public void randomIndex() {

		prc = new int[list.size()];

		for (int i = 0; i < prc.length; i++) {

			prc[i] = (int) (Math.random() * list.size()) + 1;

			for (int j = 0; j < i; j++) {

				if (prc[i] == prc[j]) {

					i--;
					break;
				}
			}
		}
	}

}
