package com.melona.model;

import java.util.Date;

public class Music_Comment {

	private int no;
	private String memo;
	private Date regDate;
	private Members membersNo;
	private Music musicNo;
	
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

	public Members getMembersNo() {
		return membersNo;
	}

	public void setMembersNo(Members membersNo) {
		this.membersNo = membersNo;
	}

	public Music getMusicNo() {
		return musicNo;
	}

	public void setMusicNo(Music musicNo) {
		this.musicNo = musicNo;
	}
	
}
