package com.melona.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.melona.model.Album;
import com.melona.model.Singer;
import com.melona.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired private SearchService searchService;
	
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}

	// 검색결과(통합검색) 페이지
	@RequestMapping("/search.do")
	public String searchTotal(@RequestParam("keyword") String keyword, Model model) {
		searchService.addSearchKeyword(keyword);
		//searchService.addSearchKeyword("박재범");
		
		Singer searchSinger = searchService.getSinger(keyword);
		//Singer searchSinger = searchService.getSinger("박재범");
		model.addAttribute("singer", searchSinger);
		
		List<Album> searchAlbum = searchService.getAlbumBySingerNo(searchSinger.getNo());
		model.addAttribute("albumList", searchAlbum);
		
		//List<Music> searchMusic = searchService.getMusicByAlbumNo(searc)
		
		return "search/total";
	}
	
	@RequestMapping("/searchSinger.do")
	public String searchSinger(@RequestParam("keyword") String keyword, Model model) {
		Singer searchSinger = searchService.getSinger(keyword);
		model.addAttribute("singer", searchSinger);
		
		return "search/singer";
	}
	
}
