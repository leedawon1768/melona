package com.melona.model;

import java.util.Date;

public class C_Expect {
	
	// CEXPECT_NO	CCONCERT_NO	MEMO	REGDATE	MEMBER_NO	
	private int no;
	private C_Concert consert;
	private String memo;
	private Date regdate;
	private Members member;

	public C_Expect() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public C_Concert getConsert() {
		return consert;
	}

	public void setConsert(C_Concert consert) {
		this.consert = consert;
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

	public Members getMember() {
		return member;
	}

	public void setMember(Members member) {
		this.member = member;
	}

}
