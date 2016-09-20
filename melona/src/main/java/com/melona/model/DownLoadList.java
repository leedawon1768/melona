package com.melona.model;

import java.util.Date;

public class DownLoadList {

	private int download_no;
	private int member_no;
	private int music_no;
	private Date download_date;
	
	public DownLoadList() {}

	public int getDownload_no() {
		return download_no;
	}

	public void setDownload_no(int download_no) {
		this.download_no = download_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public int getMusic_no() {
		return music_no;
	}

	public void setMusic_no(int music_no) {
		this.music_no = music_no;
	}

	public Date getDownload_date() {
		return download_date;
	}

	public void setDownload_date(Date download_date) {
		this.download_date = download_date;
	}
	
	
}
