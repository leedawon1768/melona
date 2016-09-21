package com.melona.model;

import java.util.Date;
import java.util.List;

public class Album {

	private int no;
	private String name;
	private Date releaseDate;	
	private String img;
	private String country;
	private Genre genre;
	private Singer singer;
	private List<Music> tracks;
	
	public Singer getSinger() {
		return singer;
	}

	public void setSinger(Singer singer) {
		this.singer = singer;
	}

	public List<Music> getTracks() {
		return tracks;
	}

	public void setTracks(List<Music> tracks) {
		this.tracks = tracks;
	}

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

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}
	
}
