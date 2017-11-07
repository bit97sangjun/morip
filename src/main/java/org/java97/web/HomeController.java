package org.java97.web;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.java97.domain.StoreVO;
import org.java97.service.HelloService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/doA")
	public void doA( int num ) {
		
		System.out.println("=================");
		System.out.println(num);
		
		
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		StoreVO vo = new StoreVO();
		vo.setSno(1L);
		vo.setSname("³î¶õÄ¡Å²");
		vo.setLat(37.494542);
		vo.setLng(127.028019);
		
		
		//request.setAttribute()
		model.addAttribute("serverTime", vo );
		
		return "home";
	}
	
}
