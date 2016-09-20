package com.melona.model;

import java.util.Date;

public class Tqna_Comment {

	private int no;
	private String memo;
	private Date regdate;
	private Tqna tqnaNo;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public Tqna getTqnaNo() {
		return tqnaNo;
	}
	public void setTqnaNo(Tqna tqnaNo) {
		this.tqnaNo = tqnaNo;
	}
	
	
}
