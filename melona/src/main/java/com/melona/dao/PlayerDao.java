package com.melona.dao;

import java.util.List;

import com.melona.model.MyAlbum;

public interface PlayerDao {

	// 로그인한 아이디에 속한 플레이리스트를 listlanking가 낮은 순으로 불러오기(1~)
	List<MyAlbum> getPlayList(int userNo);
}
