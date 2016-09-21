package com.melona.controller;

import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.melona.form.MembersForm;
import com.melona.model.Members;
import com.melona.service.MelonaService;

@Controller
public class MelonaController {

	@Autowired
	private MelonaService melonaService;
	
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
	
	// 근형추가 9-20
	@ExceptionHandler(RuntimeException.class)
	public String runtimeExceptionHandler(RuntimeException ex) {
		ex.printStackTrace();
		return "error/error";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerform() {
		return "melona/registerform";
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String register(MembersForm membersform) {
		
		Members member = new Members();
		BeanUtils.copyProperties(membersform, member);
		
		String plainPassword = member.getPassword();
		String secretPassword = DigestUtils.md5DigestAsHex(plainPassword.getBytes());
		member.setPassword(secretPassword);
		
		melonaService.register(member);
		
		return "redirect:/login.do";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginform() {
		return "melona/loginform";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MembersForm membersform, HttpSession session) {
		
		Members member = melonaService.login(membersform.getId(), membersform.getPassword());
		
		session.setAttribute("LOGIN_MEMBER", member);
		
		return "redirect:/main.do";
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/main.do";
	}
}
