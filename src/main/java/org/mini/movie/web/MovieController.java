package org.mini.movie.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/movie/*")
public class MovieController {
	
	@GetMapping("/list")
	public void list() {
		
	}
}
