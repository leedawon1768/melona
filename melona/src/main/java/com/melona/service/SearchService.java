package com.melona.service;

import java.util.List;

import com.melona.model.Album;
import com.melona.model.C_Concert;
import com.melona.model.Music;
import com.melona.model.Singer;

public interface SearchService {

	//-----------검색 조회 기능 시작----------------
		// 검색키워드로 가수정보를 조회
		Singer getSinger(String keyword);
		
		// 가수번호로 가수의 앨범정보를 조회
		List<Album> getAlbumBySingerNo(int singerNo);
		
		// 앨범번호로 수록곡을 조회
		List<Music> getMusicByAlbumNo(int AlbumNo);
		
		// 가수정보로 공연정보 조회
		List<C_Concert> getConcerts(int singerNo);
	//----------검색 조회 기능 끝----------------
		
}
