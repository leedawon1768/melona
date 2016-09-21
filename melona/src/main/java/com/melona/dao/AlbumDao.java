package com.melona.dao;

import java.util.List;

import com.melona.model.Album;

public interface AlbumDao {
	
	// Album : no, name, releaseDate(발매일), img, country(발매국가), genreNo
	
	// 모든 앨범 목록 조회
	List<Album> getAllAlbum();
	
	// 앨범번호로 앨범 조회
	Album getAlbumByNo(int no);
	
	// 앨범 등록
//	void addAlbum(Album album);
	
	// 앨범 수정
//	void updateAlbum(Album album);

}
