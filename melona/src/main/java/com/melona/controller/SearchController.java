package com.melona.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

	// 검색결과(아티스트 상세정보) 페이지
	@RequestMapping("search.do")
	public String search() {
		return "search/detail";
	}
	
}
