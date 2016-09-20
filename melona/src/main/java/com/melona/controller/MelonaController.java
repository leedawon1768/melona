package com.melona.controller;

import java.util.ArrayList;
import java.util.StringTokenizer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MelonaController {

	@RequestMapping("/main.do")
	public String main() {
		return "melona/main";
	}

	// 임시!!!!!!!!!
	// player로 넘어갈때 플레이할 노래들은 "/player.do?no=@@,@@@,@@@@,@@@@@" 인 식으로 전송해주세요
	@RequestMapping("/player.do")
	public String player(@RequestParam(name="no") String playlist, Model model) {
		
		StringTokenizer st1 = new StringTokenizer(playlist);
		
		ArrayList<Integer> list = new ArrayList<>();
		
		while (st1.hasMoreElements()) {
			int no = Integer.parseInt(st1.nextToken(","));
			list.add(no);
		}
		model.addAttribute("PlayList", list);
		return "player/player";

	}
}
