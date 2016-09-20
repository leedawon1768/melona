package com.melona.model;

import java.util.Date;

public class ShoppingList {

	private int no;
	private int price;
	private Date start_date;
	private Date end_date;
	private Members memberNo;
	
	public ShoppingList (){}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Members getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(Members memberNo) {
		this.memberNo = memberNo;
	}
	
	
}
