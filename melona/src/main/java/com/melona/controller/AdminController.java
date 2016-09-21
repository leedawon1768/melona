package com.melona.controller;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.melona.form.SingerForm;
import com.melona.model.Album;
import com.melona.model.Singer;
import com.melona.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	/*
	 *	가수 
	 */
	
	// 모든 가수 목록 조회 (번호순)
	@RequestMapping(value={"/admin/singer.do","/admin/main.do", "/admin/sortSingerByNo.do"})
	public String SingerList(Model model) {
		List<Singer> singerList = adminService.getAllSingers();
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}
	
	// 가수 등록 페이지로 이동
	@RequestMapping(value="/admin/addSinger.do", method=RequestMethod.GET)
	public String AddSingerForm() {
		return "admin/addsinger";
	}
	
	// 가수 등록
	@RequestMapping(value="/admin/addSinger.do", method=RequestMethod.POST)
	public String AddSinger(SingerForm singerForm) {	// 내일 다시 확인...		// SingerForm : String name, File img
		Singer singer = new Singer();
		BeanUtils.copyProperties(singerForm, singer);
		
		// 사진파일 저장 구현, 사진 이름 singer.setImg("사진명")에 저장 구현
		
		adminService.addSinger(singer);
		
		return "admin/main";
	}
	
	// 가수정보 수정 페이지로 이동
	@RequestMapping(value="/admin/updateSinger.do", method=RequestMethod.GET)
	public String UpdateSingerForm(@RequestParam(name="no") int no, Model model) {
		Singer singer = adminService.getSingerDetail(no);
		model.addAttribute("singerDetail", singer);
		
		return "admin/updatesinger";
	}
	
	// 가수정보 수정
	@RequestMapping(value="/admin/updateSinger.do", method=RequestMethod.POST)
	public String UpdateSinger(SingerForm singerForm) {
		Singer singer = new Singer();
		BeanUtils.copyProperties(singerForm, singer);
		
		adminService.updateSinger(singer);
		return "admin/main";
	}
	
	// 이름순으로 모든 가수 목록 정렬
	@RequestMapping("/admin/sortSingerByName")
	public String SortSingerByName(Model model) {
		List<Singer> singerList = adminService.getAllSingers2();
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}
	
	// 키워드로 해당하는 가수명의 가수 목록 조회
	@RequestMapping("/admin/searchSinger")
	public String SearchSinger(@RequestParam(name="keyword") String keyword, Model model) {
		List<Singer> singerList = adminService.searchSinger(keyword);
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}
	
	/*
	 * 	앨범
	 */
	
	@RequestMapping("/admin/album.do")
	public String AlbumList(Model model) {
		List<Album> albumList = adminService.getAllAlbums();
		model.addAttribute("albumList", albumList);
		
		return "admin/album";
	}
	
	/*
	 * 	노래
	 */
	
	@RequestMapping("/admin/music.do")
	public String MusicList() {
		return "admin/music";
	}

}
