package org.mini.web;

import org.mini.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public void join(Model model) {
		
		
	}
	
	@GetMapping("/dup")
	public void dupget() {
		
	}
	
	@PostMapping("/dup")
	@ResponseBody
	public String dupcheck(RedirectAttributes rttr, @RequestParam(value="id", defaultValue="") String id, @RequestParam(value="nick", defaultValue="") String nick) {
		
		// true인 경우 중복
		Boolean idcheck = service.idcheck(id);
		Boolean nickcheck = service.nickcheck(nick);
		
		System.out.println("id : " + idcheck);
		System.out.println("닉 : " + nickcheck);
		
		rttr.addAttribute("idcheck", idcheck);
		rttr.addAttribute("nickcheck", nickcheck);
		
		return "redirect:/join";
		
	}
	
	
	@GetMapping("/login")
	public void login() {
		
	}
	
}
