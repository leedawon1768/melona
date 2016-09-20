package com.melona.model;

import java.util.Date;

public class C_Ticket {
	
	// CTICKET_NO	SEATNO	SHOPPING_TYPE	SHOPPING_DATE	MEMBER_NO	CSCHEDULE_NO	
	private int no;
	private String seatNo;
	private String shoppingType;
	private Date shoppingDate;
	private Members member;
	private C_Schedule schedule;
	
	public C_Ticket() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}

	public String getShoppingType() {
		return shoppingType;
	}

	public void setShoppingType(String shoppingType) {
		this.shoppingType = shoppingType;
	}

	public Date getShoppingDate() {
		return shoppingDate;
	}

	public void setShoppingDate(Date shoppingDate) {
		this.shoppingDate = shoppingDate;
	}

	public Members getMember() {
		return member;
	}

	public void setMember(Members member) {
		this.member = member;
	}

	public C_Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(C_Schedule schedule) {
		this.schedule = schedule;
	}

}
