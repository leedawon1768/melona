package com.melona.model;

import java.util.Date;

public class Search {

	private int no;
	private String keyword;
	private Date search_date;
	private int cnt;
	
	public Search() {}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public Date getSearch_date() {
		return search_date;
	}
	
	public void setSearch_date(Date search_date) {
		this.search_date = search_date;
	}
	
	public int getCnt() {
		return cnt;
	}
	
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
