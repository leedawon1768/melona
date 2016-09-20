package com.melona.model;

import java.util.Date;

public class C_Schedule {
	
	// CSCHEDULE_NO	CONCERT_DATE	CONCERT_TIME	CCONCERT_NO	CSTAGE_NO	
	private int no;
	private Date concertDate;
	private Date concertTime;
	private C_Concert concert;
	private C_Stage stage;
	
	public C_Schedule() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getConcertDate() {
		return concertDate;
	}

	public void setConcertDate(Date concertDate) {
		this.concertDate = concertDate;
	}

	public Date getConcertTime() {
		return concertTime;
	}

	public void setConcertTime(Date concertTime) {
		this.concertTime = concertTime;
	}

	public C_Concert getConcert() {
		return concert;
	}

	public void setConcert(C_Concert concert) {
		this.concert = concert;
	}

	public C_Stage getStage() {
		return stage;
	}

	public void setStage(C_Stage stage) {
		this.stage = stage;
	}

}
