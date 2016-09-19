package com.melona.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MelonaController {

	@RequestMapping("/main.do")
	public String main() {
		return "melona/main";
	}
	
	@RequestMapping("/home.do")
	public String home() {
		return null;
	}
	
}
