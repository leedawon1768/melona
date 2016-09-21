package com.melona.model;

public class C_Seat {

	private int no;
	private C_Stage cstage;
	private String grade;
	private int price;
	private String position;
	private String reservation;
	
	public C_Seat() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public C_Stage getCstage() {
		return cstage;
	}

	public void setCstage(C_Stage cstage) {
		this.cstage = cstage;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
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

	public String getReservation() {
		return reservation;
	}

	public void setReservation(String reservation) {
		this.reservation = reservation;
	}
	
}
