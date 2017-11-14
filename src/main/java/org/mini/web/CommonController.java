package org.mini.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mini.domain.Member;
import org.mini.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import lombok.extern.java.Log;

@Log
@Controller
public class CommonController {
	
	@Autowired
	CommonService service;
	
	
	@GetMapping("/home")
	public void home() {
		
	}
	
	@GetMapping("/join")
	public void joinPage() {

	}
	
	@PostMapping("/join")
	public String join(Member member) {
		System.out.println(member);
		
		service.join(member);
		
		return "redirect:/home";
		
	}
	
	@PostMapping("/dup")
	@ResponseBody
	public Boolean dupCheck(String id, String nick, int type) {
		
		// true면 중복됨
		Boolean result = null;
		
		switch(type) {
		case 1: 
			result = service.idcheck(id);
			break;
		case 2:	
			result = service.nickcheck(nick);
			break;
		}
		
		return result;
	}
	
	@GetMapping("/login")
	public void loginPage() {
		
	}
	
	@PostMapping("/ismember")
	@ResponseBody
	public Boolean isMember(String id, String pw) {
		
		System.out.println(service.loginTest(id, pw));
		
		// 로그인 성공이 true
		return service.loginTest(id, pw);
	}
	
	@PostMapping("/loginProcess")
	public String login(String id, String pw, Boolean remember, Model model) {
		
		System.out.println("remember" + remember);
		
		model.addAttribute("remember", remember);
		model.addAttribute("id", id);
		
		return "redirect:/home";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		Object obj = session.getAttribute("login");
		
		System.out.println("obj?" + obj);
		
		if(obj != null) {
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie cookie = WebUtils.getCookie(request, "login");
			
			System.out.println("쿠키?" + cookie);
			
			if(cookie != null) {
				System.out.println("들어옴");
				cookie.setPath("/");
				cookie.setMaxAge(0);
			}
			
		}
		
		return "redirect:/home";
	}
	
	
	@GetMapping("/loginonly")
	public void loginonly() {
		
	}
}
