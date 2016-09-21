package com.melona.model;

public class MyAlbum {

	private int no;
	private String name;
	private Members member;
	private int listrank;
	
	public MyAlbum() {}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public Members getMember() {
		return member;
	}

	public void setMember(Members member) {
		this.member = member;
	}

	public int getListrank() {
		return listrank;
	}

	public void setListrank(int listrank) {
		this.listrank = listrank;
	}
	
	
}
