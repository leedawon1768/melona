package com.melona.controller;

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
	
	@RequestMapping(value={"/admin/singer.do","/admin/main.do"})
	public String SingerList(Model model) {
		List<Singer> singerList = adminService.getAllSingers();
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}
	
	@RequestMapping(value="/admin/addSinger.do", method=RequestMethod.GET)
	public String AddSingerForm() {
		return "admin/addsinger";
	}
	
	@RequestMapping("/admin/updateSinger.do")
	public String UpdateSinger() {
		return "admin/updateSinger";
	}

}
