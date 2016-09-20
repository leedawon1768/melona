package com.melona.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MelonaController {

	@RequestMapping("/main.do")
	public String main() {
		return "melona/main";
	}

	
	@RequestMapping("/seat.do")
	public String seat() {
		return "melona/seat";
	}


	// 임시!!!!!!!!!
	@RequestMapping("/player.do")
	public String player() {
		return "player/player";

	}
}
