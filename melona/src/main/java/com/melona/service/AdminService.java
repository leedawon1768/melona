package com.melona.service;

import java.util.List;

import com.melona.model.Singer;

public interface AdminService {
	
	// 모든 가수 목록 조회
	List<Singer> getAllSingers();

}
