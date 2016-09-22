package com.melona.service;

import java.util.List;
import java.util.Map;

import com.melona.model.MyAlbum;

public interface PlayerService {

	// 로그인한 아이디에 속한 플레이리스트를 listlanking가 낮은 순으로 불러오기(1~)
	List<MyAlbum> getPlayList(int userNo);

	// 플레이리스트 하나 제거하기(리스트 번호로)
	void deleteMyAlbumByNo(int listNo);
	// 플레이리스트 생성하기
	void addPlayList(MyAlbum myalbum);

	void adjustPlayList(MyAlbum myalbum);
}
