package com.melona.service;

import com.melona.model.Members;

public interface MelonaService {
	
	//가입하기
	void register(Members member);
	
	//로그인하기
	Members login(String id, String password);
	
}
