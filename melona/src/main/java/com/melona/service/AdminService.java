package com.melona.service;

import java.util.List;

import com.melona.model.Singer;

public interface AdminService {
	
	// 모든 가수 목록 조회 (번호순)
	List<Singer> getAllSingers();
	
	// 모든 가수 목록 조회 (이름순)
	List<Singer> getAllSingers2();
	
	// 가수 등록
	void addSinger(Singer singer);

}
