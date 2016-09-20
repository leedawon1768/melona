package com.melona.model;

import java.util.Date;

public class Mqna {

	private int mqna_no;
	private String title;
	private String memo;
	private String type1;
	private String type2;
	private int member_no;
	private Date regdate;
	
	public Mqna() {}

	public int getMqna_no() {
		return mqna_no;
	}

	public void setMqna_no(int mqna_no) {
		this.mqna_no = mqna_no;
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

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public String getType2() {
		return type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Mqna [mqna_no=" + mqna_no + ", title=" + title + ", memo=" + memo + ", type1=" + type1 + ", type2="
				+ type2 + ", member_no=" + member_no + ", regdate=" + regdate + "]";
	}
	
	
}
