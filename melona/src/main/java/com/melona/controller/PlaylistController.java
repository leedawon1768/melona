package com.melona.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlaylistController {

	@RequestMapping("/playlist.do")
	public String list() {
		return "player/playlist";
	}
	@RequestMapping("/deleteList.do")
	public String deleteList() {
		return "player/deleteList";
	}
	
	@RequestMapping("/addplaylist.do")
	public String addplaylist() {
		return "player/addplaylist";
	}
}
