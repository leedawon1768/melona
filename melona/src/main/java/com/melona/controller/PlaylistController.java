package com.melona.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.melona.model.Members;
import com.melona.model.MyAlbum;
import com.melona.service.PlayerService;

@Controller
public class PlaylistController {

	@Autowired
	PlayerService playerService;
	
	@RequestMapping("/playlist.do")
	public String list(Model model, HttpSession session) {
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
			List<MyAlbum> albums = playerService.getPlayList(loginMember.getMember_no());
			model.addAttribute("albums",albums);
			return "player/playlist";
		}
		
	}
	@RequestMapping("/deleteList.do")
	public String deleteList(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Members loginMember = (Members)session.getAttribute("LOGIN_MEMBER");
		
		
		if (loginMember == null) {
			return "player/deleteList";
		}else{
			List<MyAlbum> albums = playerService.getPlayList(loginMember.getMember_no());
			model.addAttribute("albums",albums);
			return "player/deleteList";
		}
	}
	

	@RequestMapping("/deleteL.do")
	public String deleteList(@RequestParam(name="no") int listNo) {
		
		playerService.deleteMyAlbumByNo(listNo);
		
		return "redirect:/deleteList.do";
	}
	
	@RequestMapping("/addplaylist.do")
	public String addplaylist() {

		return "player/addplaylist";
	}
	@RequestMapping(value="/addplaylist.do", method=RequestMethod.POST)
	public String addplaylists(MyAlbum myalbum, HttpSession session) {
		
		Members loginMember = (Members)session.getAttribute("LOGIN_MEMBER");
		
		if (loginMember == null) {
			return "redirect:/playlist.do";
		}else{
			Map<String, Object> map =  new HashMap<String, Object>();
			
			System.out.println(myalbum.getName()+"----------------------------------");
			System.out.println(loginMember.getMember_no()+"----------------------------------");
			
			myalbum.setMember(loginMember);
			
			playerService.addPlayList(myalbum);
			return "redirect:/playlist.do";
		}
		
	}
}
