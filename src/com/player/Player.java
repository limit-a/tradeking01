package com.player;

public class Player {
	private int num;
	private String id;
	private String shipName;
	private String currentCountry;
	private int gold;
	private String productName;
	private int productCount;
	private int intimacy;

	public Player() {
	}

	public Player(int num, String id, String shipName, String currentCountry,
			int gold, String productName, int productCount, int intimacy) {
		this.num = num;
		this.id = id;
		this.shipName = shipName;
		this.currentCountry = currentCountry;
		this.gold = gold;
		this.productName = productName;
		this.productCount = productCount;
		this.intimacy = intimacy;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getCurrentCountry() {
		return currentCountry;
	}

	public void setCurrentCountry(String currentCountry) {
		this.currentCountry = currentCountry;
	}

	public int getGold() {
		return gold;
	}

	public void setGold(int gold) {
		this.gold = gold;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public int getIntimacy() {
		return intimacy;
	}

	public void setIntimacy(int intimacy) {
		this.intimacy = intimacy;
	}

}
