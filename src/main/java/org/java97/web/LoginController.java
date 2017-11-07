package org.java97.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.java.Log;

@Log
@Controller
public class LoginController {

	@GetMapping("/sample")
	public void sample() {
	}
	
	@GetMapping("/login")
	public void loginGet() {
		
	}
	@PostMapping("/loginPost")
	public String loginPost(String id, String pw , Boolean remember ,Model model ) {
		
		log.info("..................."+ id);
		
		model.addAttribute("member" , id);
		model.addAttribute("remember" , remember);
		
		return "redirect:/board/list";
	}
}
