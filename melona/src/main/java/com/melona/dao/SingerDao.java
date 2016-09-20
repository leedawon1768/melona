package com.melona.dao;

import java.util.List;

import com.melona.model.Singer;

public interface SingerDao {
	
	// 모든 가수목록 조회 (번호순)
	List<Singer> getAllSingers();
	
	// 모든 가수목록 조회 (번호순)
	List<Singer> getAllSingers2();
	
	// 가수번호로 가수 조회
	Singer getSingerByNo(int no);
	
	// 가수 등록
	void addSinger(Singer singer);
	
	// 가수 수정
//	void updateSinger(Singer singer);

}
