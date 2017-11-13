package org.mini.common.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.java.Log;

@Log
@Controller
public class CommonController {
	
	@GetMapping("/home")
	public void home() {
		
	}
	
	@GetMapping("/join")
	public void join() {
		
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
}
