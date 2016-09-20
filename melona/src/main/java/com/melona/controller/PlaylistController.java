package com.melona.controller;

import java.util.List;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.melona.model.MyAlbum;
import com.melona.service.PlayerService;

@Controller
public class PlaylistController {

	@Autowired
	PlayerService playerService;
	
	@RequestMapping("/playlist.do")
	public String list(Model model) {
		List<MyAlbum> albums = playerService.getPlayList(0);
		model.addAttribute("albums",albums);
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
