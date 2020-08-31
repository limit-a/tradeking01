package com.player;

public class Player {
	private int num;
	private String id;
	private String shipName;
	private String currentCountry;
	private int gold;
	private String product;
	private int intimacy;

	public Player() {
	}

	public Player(int num, String id, String shipName, String currentCountry,
			int gold, String product, int intimacy) {
		this.num = num;
		this.id = id;
		this.shipName = shipName;
		this.currentCountry = currentCountry;
		this.gold = gold;
		this.product = product;
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

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public int getIntimacy() {
		return intimacy;
	}

	public void setIntimacy(int intimacy) {
		this.intimacy = intimacy;
	}

}
