package com.melona.model;

import java.util.Date;

public class Mqna_Comment {

	private int no;
	private String memo;
	private Date regDate;
	private Mqna mqnaNo;
	
	public Mqna_Comment() {}

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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Mqna getMqnaNo() {
		return mqnaNo;
	}

	public void setMqnaNo(Mqna mqnaNo) {
		this.mqnaNo = mqnaNo;
	}
	
}
