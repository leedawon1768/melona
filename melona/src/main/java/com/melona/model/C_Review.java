package com.melona.model;

import java.util.Date;

public class C_Review {
	
	// CREVIEW_NO	MEMBER_NO	CCONCERT_NO	MEMO	REGDATE	
	private int no;
	private Members member;
	private C_Concert concert;
	private String memo;
	private Date regdate;
	
	public C_Review() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Members getMember() {
		return member;
	}

	public void setMember(Members member) {
		this.member = member;
	}

	public C_Concert getConcert() {
		return concert;
	}

	public void setConcert(C_Concert concert) {
		this.concert = concert;
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

}
