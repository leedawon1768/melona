package com.melona.model;

public class C_ConcertSinger {

	private C_Concert cconert;
	private Singer singer;
	
	public C_ConcertSinger() {}

	public C_Concert getCconert() {
		return cconert;
	}

	public void setCconert(C_Concert cconert) {
		this.cconert = cconert;
	}

	public Singer getSinger() {
		return singer;
	}

	public void setSinger(Singer singer) {
		this.singer = singer;
	}

}
