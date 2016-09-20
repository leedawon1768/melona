package com.melona.model;

public class Genre {

	private int genre_no;
	private String name;
	
	public Genre() {}

	public int getGenre_no() {
		return genre_no;
	}

	public void setGenre_no(int genre_no) {
		this.genre_no = genre_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Genre [genre_no=" + genre_no + ", name=" + name + "]";
	}
	
	
}
