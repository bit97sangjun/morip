package org.mini.web;

import org.mini.domain.Member;
import org.mini.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@PostMapping("/login")
	@ResponseBody
	public Boolean login(String id, String pw) {
		
		System.out.println(service.loginTest(id, pw));
		
		// 로그인 성공이 true
		return service.loginTest(id, pw);
	}
}
