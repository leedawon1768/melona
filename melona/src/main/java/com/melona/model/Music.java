package com.melona.model;

public class Music {
	
	private int no;
	private String title;
	private int playcount;
	private String lyric;
	private int likes;
	private String musicvideo;
	private Album albumNo;
	
	public Music() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPlaycount() {
		return playcount;
	}

	public void setPlaycount(int playcount) {
		this.playcount = playcount;
	}

	public String getLyric() {
		return lyric;
	}

	public void setLyric(String lyric) {
		this.lyric = lyric;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getMusicvideo() {
		return musicvideo;
	}

	public void setMusicvideo(String musicvideo) {
		this.musicvideo = musicvideo;
	}

	public Album getAlbumNo() {
		return albumNo;
	}

	public void setAlbumNo(Album albumNo) {
		this.albumNo = albumNo;
	}

}
