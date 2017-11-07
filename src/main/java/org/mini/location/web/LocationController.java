package org.mini.location.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/location/*")
public class LocationController {

	@GetMapping("/main")
	public void main() {
		
	}
	
}
