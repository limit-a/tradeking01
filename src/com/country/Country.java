package com.country;

public class Country {
	private int num;
	private String countryName;
	private String countryImage;

	public Country() {
	}

	public Country(int num, String countryName, String countryImage) {
		this.num = num;
		this.countryName = countryName;
		this.countryImage = countryImage;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getCountryImage() {
		return countryImage;
	}

	public void setCountryImage(String countryImage) {
		this.countryImage = countryImage;
	}
}
