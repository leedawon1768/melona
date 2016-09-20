package com.melona.service;

import java.util.List;

import com.melona.model.*;

public interface MelonaService {
	
	// 검색키워드로 가수정보를 조회
	Singer getSinger(String keyword);
	
	// 가수번호로 가수의 앨범정보를 조회
	List<Album> getAlbumBySingerNo(int singerNo);
	
	// 앨범번호로 수록곡을 조회
	List<Music> getMusicByAlbumNo(int AlbumNo);
}
