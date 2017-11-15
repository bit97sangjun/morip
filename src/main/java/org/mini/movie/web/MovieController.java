package org.mini.movie.web;

import java.util.List;

import org.mini.domain.Movie;
import org.mini.domain.Report;
import org.mini.dto.Criteria;
import org.mini.movie.service.CommentService;
import org.mini.movie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/movie/*")
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@Autowired
	private CommentService cservice;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("total", service.getCount(cri));
	}
	
	@GetMapping("/insert")
	public void register() {
		
	}
	
	@PostMapping("/insert")
	public String registerPost(Report report, Criteria cri, RedirectAttributes rttr) {

		log.info("" + report);
		service.register(report);
		
		rttr.addFlashAttribute("result", "success");
		rttr.addFlashAttribute("criteria", cri);
		return "redirect:/movie/list";
	}
	
	
	
	//@PostMapping("/movieread")
	@RequestMapping(value="/movieread")
	public @ResponseBody List<Movie> movieread(String keyword) {

		return service.getMovieread(keyword);
	}
}
