package com.melona.model;

import java.util.Date;

public class Music_Comment {

	private int no;
	private String memo;
	private Date regDate;
	private Members members;
	private Music music;
	
	public Music_Comment() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Members getMembers() {
		return members;
	}

	public void setMembers(Members members) {
		this.members = members;
	}

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

}
