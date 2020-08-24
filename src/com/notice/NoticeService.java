package com.notice;

import java.util.ArrayList;

public class NoticeService {
    private NoticeDAO nd = new NoticeDAO();
    
    public ArrayList<Notice> All() {
		return nd.AllSelectNotice();
	}
}
