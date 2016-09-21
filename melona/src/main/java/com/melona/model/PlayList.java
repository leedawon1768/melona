package com.melona.model;

public class PlayList {

	private MyAlbum myalbum;
	private Music music;
	private int listlanking;
	
	public PlayList () {}

	public MyAlbum getMyalbum() {
		return myalbum;
	}

	public void setMyalbum(MyAlbum myalbum) {
		this.myalbum = myalbum;
	}

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

	public int getListlanking() {
		return listlanking;
	}

	public void setListlanking(int listlanking) {
		this.listlanking = listlanking;
	}
	
}
