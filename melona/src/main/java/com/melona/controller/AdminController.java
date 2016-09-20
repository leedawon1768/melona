package com.melona.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.melona.model.Singer;
import com.melona.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value={"/admin/singer.do","/admin/main.do", "sortSingerByNo.do"})
	public String SingerList(Model model) {
		List<Singer> singerList = adminService.getAllSingers();
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}
	
	@RequestMapping(value="/admin/addSinger.do", method=RequestMethod.GET)
	public String AddSingerForm() {
		return "admin/addsinger";
	}
	
	@RequestMapping(value="/admin/addSinger.do", method=RequestMethod.POST)
	public String AddSinger(String name, File img) {	// 이미지 파일루 받아오는고 아니얌?
		System.out.println(name);
		System.out.println(img);
		return "admin/main";
	}
	
	@RequestMapping("/admin/updateSinger.do")
	public String UpdateSinger() {
		return "admin/updateSinger";
	}
	
	@RequestMapping("/admin/sortSingerByName")
	public String SortSingerByName(Model model) {
		List<Singer> singerList = adminService.getAllSingers2();
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}

}
