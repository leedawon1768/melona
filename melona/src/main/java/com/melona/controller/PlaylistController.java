package com.melona.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.melona.model.Members;
import com.melona.model.MyAlbum;
import com.melona.service.PlayerService;

@Controller
public class PlaylistController {

	@Autowired
	PlayerService playerService;
	
	@RequestMapping("/playlist.do")
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Members loginMember = (Members)session.getAttribute("LOGIN_MEMBER");
		
		
		if (loginMember == null) {
			int no = 1;
			List<MyAlbum> albums = playerService.getPlayList(no);
			MyAlbum a = new MyAlbum();
			a.setNo(11);
			albums.add(a);
			model.addAttribute("albums",albums);
			return "player/playlist";
		}else{
			return "player/playlist";
		}
		
	}
	@RequestMapping("/deleteList.do")
	public String deleteList(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Members loginMember = (Members)session.getAttribute("LOGIN_MEMBER");
		
		
		if (loginMember == null) {
			int no = 1;
			List<MyAlbum> albums = playerService.getPlayList(no);
			MyAlbum a = new MyAlbum();
			MyAlbum b = new MyAlbum();
			MyAlbum c = new MyAlbum();
			a.setNo(11);
			b.setNo(22);
			c.setNo(33);
			
			albums.add(a);
			albums.add(b);
			albums.add(c);
			
			model.addAttribute("albums",albums);
			return "player/deleteList";
		}else{
			return "player/deleteList";
		}
	}
	
	@RequestMapping("/addplaylist.do")
	public String addplaylist() {
		return "player/addplaylist";
	}
}
