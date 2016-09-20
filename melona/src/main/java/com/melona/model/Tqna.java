package com.melona.model;

import java.util.Date;

public class Tqna {

	private int tqnaNo;
	private String title;
	private String memo;
	private String type;
	private Date regdate;
	private int memberNo;
	
	public int getTqnaNo() {
		return tqnaNo;
	}
	public void setTqnaNo(int tqnaNo) {
		this.tqnaNo = tqnaNo;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
}
