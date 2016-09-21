package com.melona.model;

import java.util.Date;

public class Tqna_Comment {

	private int no;
	private String memo;
	private Date regdate;
	private Tqna tqna;
	
	public Tqna_Comment() {}

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

	public Tqna getTqna() {
		return tqna;
	}

	public void setTqna(Tqna tqna) {
		this.tqna = tqna;
	}
	
}
