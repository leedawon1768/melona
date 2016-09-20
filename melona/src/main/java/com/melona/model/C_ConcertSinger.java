package com.melona.model;

public class C_ConcertSinger {

	private C_Concert cconertNo;
	private Singer singerNo;
	
	public C_ConcertSinger() {}

	public C_Concert getCconertNo() {
		return cconertNo;
	}

	public void setCconertNo(C_Concert cconertNo) {
		this.cconertNo = cconertNo;
	}

	public Singer getSingerNo() {
		return singerNo;
	}

	public void setSingerNo(Singer singerNo) {
		this.singerNo = singerNo;
	}
	
}
