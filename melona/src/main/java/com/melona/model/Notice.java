package com.melona.model;

import java.util.Date;

public class Notice {

	private int noticeNo;
	private String title;
	private String memo;
	private Date regdate;
	private String noticeType;
	private int viewCnt;
	
	public Notice() {}
	
	public int getNoticeNo() {
		return noticeNo;
	}
	
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getMemo() {
		return memo;
	}
	
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	public Date getRegdate() {
		return regdate;
	}
	
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	public String getNoticeType() {
		return noticeType;
	}
	
	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}
	
	public int getViewCnt() {
		return viewCnt;
	}
	
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	
}
