package com.melona.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.melona.model.Singer;
import com.melona.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/admin/main.do")
	public String main() {
		return "admin/main";
	}
	
	@RequestMapping("/admin/singer.do")
	public String SingerList(Model model) {
		List<Singer> singerList = adminService.getAllSingers();
		model.addAttribute("singerList", singerList);
		
		return "admin/main";
	}

}
