package org.mini.web;

import org.mini.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public void join(ModelMap map, Model model) {
		System.out.println("model임 : " + map.values());
		System.out.println("id임 : " + map.get("idcheck"));
//		System.out.println("id : " + model);
		model.addAttribute("idcheck", map.get("idcheck"));
		model.addAttribute("nickcheck", map.get("nickcheck"));
	}
	
	@GetMapping("/dup")
	public void dupget() {
		
	}
	
	@PostMapping("/dup")
	public String dupcheck(RedirectAttributes rttr, @RequestParam(value="id", defaultValue="") String id, @RequestParam(value="nick", defaultValue="") String nick) {
		
		System.out.println(id);
		System.out.println(nick);
		
		// true인 경우 중복
		
		Boolean idcheck = service.idcheck(id);
		Boolean nickcheck = service.nickcheck(nick);
		
		System.out.println("id : " + idcheck);
		System.out.println("닉 : " + nickcheck);
		
		rttr.addFlashAttribute("idcheck", idcheck);
		rttr.addFlashAttribute("nickcheck", nickcheck);
		
		return "redirect:/join";
		
	}
	
	
	@GetMapping("/login")
	public void login() {
		
	}
	
}
