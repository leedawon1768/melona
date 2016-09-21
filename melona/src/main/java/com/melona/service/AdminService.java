package com.melona.service;

import java.util.List;

import com.melona.model.Album;
import com.melona.model.Genre;
import com.melona.model.Singer;

public interface AdminService {
	
	/*
	 * 	가수
	 */
	
	// 모든 가수 목록 조회 (번호순)
	List<Singer> getAllSingers();
	
	// 모든 가수 목록 조회 (이름순)
	List<Singer> getAllSingers2();
	
	// 가수 등록
	void addSinger(Singer singer);
	
	// 가수 상세정보 조회
	Singer getSingerDetail(int no);
	
	// 가수이름으로 검색
	List<Singer> searchSinger(String keyword);
	
	// 가수정보 수정
	void updateSinger(Singer singer);
	
	/*
	 * 	앨범
	 */
	
	// 모든 앨범 목록 조회
	List<Album> getAllAlbums();
	
	/*
	 * 	장르
	 */
	
	// 모든 장르 조회
	List<Genre> getAllGenres();

}
