package org.mini.movie.web;

import org.mini.dto.Criteria;
import org.mini.movie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/movie/*")
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("들어는오나?");
		//log.info("list!! : " + service.getList(cri));
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("total", service.getCount(cri));
		//log.info("돌기는하나?");
		//log.info("" + cri);
	}
	
	@GetMapping("/insert")
	public void insert() {
		
	}
}
