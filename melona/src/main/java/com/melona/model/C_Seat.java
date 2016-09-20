package com.melona.model;

public class C_Seat {

	private int no;
	private C_Stage cstageNo;
	private char grade;
	private int price;
	private String position;
	private char reservation;
	
	public C_Seat() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public C_Stage getCstageNo() {
		return cstageNo;
	}

	public void setCstageNo(C_Stage cstageNo) {
		this.cstageNo = cstageNo;
	}

	public char getGrade() {
		return grade;
	}

	public void setGrade(char grade) {
		this.grade = grade;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public char getReservation() {
		return reservation;
	}

	public void setReservation(char reservation) {
		this.reservation = reservation;
	}
	
}
