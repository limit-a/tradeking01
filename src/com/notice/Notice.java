package com.notice;

import java.util.Date;

public class Notice {
	private int num;
	private String title;
	private String content;
	private Date wdate;
	private int hit;

	public Notice(int num, String title, String content, Date wdate, int hit) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.hit = hit;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
}
