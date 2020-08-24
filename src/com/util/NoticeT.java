package com.util;

import java.util.ArrayList;
import com.notice.Notice;
import com.notice.NoticeService;;

public class NoticeT {
    private ArrayList<Notice> list;
    
    public NoticeT() {
		list = new NoticeService().All();
	}

	public ArrayList<Notice> getList() {
		return list;
	}

	public void setList(ArrayList<Notice> list) {
		this.list = list;
	}
}
