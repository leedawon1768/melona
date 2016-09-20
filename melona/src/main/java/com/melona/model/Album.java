package com.melona.model;

import java.util.Date;

public class Album {

	private int no;
	private String name;
	private Date releaseDate;	
	private String img;
	private String country;
	private Genre genreNo;
	
	public Album() {}

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

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Genre getGenreNo() {
		return genreNo;
	}

	public void setGenreNo(Genre genreNo) {
		this.genreNo = genreNo;
	}
	
}
