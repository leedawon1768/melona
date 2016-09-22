package com.melona.dao;

import java.util.List;

import com.melona.model.MyAlbum;

public interface PlayerDao {

	// 로그인한 아이디에 속한 플레이리스트를 listlanking가 낮은 순으로 불러오기(1~)
	List<MyAlbum> getPlayList(int userNo);
	// 엘범 리스트 삭제
	// 리스트에 등록된 노래 삭제
	void deleteMyAlbumByNo1(int listNo);
	// 엘범 삭제
	void deleteMyAlbumByNo2(int listNo);
	// playlist 생성하기
	void addPlayList(MyAlbum listname);
	// list 순서 변경하기
	void adjustPlayList(MyAlbum myalbum);
}
