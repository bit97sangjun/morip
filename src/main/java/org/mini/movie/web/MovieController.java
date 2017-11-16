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
import org.springframework.web.bind.annotation.RequestParam;
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
	
	//@GetMapping("/list")
	@RequestMapping(value="/list", produces = "application/text; charset=utf8")
	public void list(Criteria cri, Model model, @RequestParam(value="search", defaultValue="")String search) {
		log.info("keyword : " + search);
		log.info("list : " + service.getList(cri, search));
		log.info("count : " + service.getCount(cri, search));
		
		model.addAttribute("list", service.getList(cri, search));
		model.addAttribute("total", service.getCount(cri, search));
		model.addAttribute("skeyword", search);
	}
	
	@GetMapping("/insert")
	public void register() {
		
	}
	
	@PostMapping("/insert")
	public void registerForm() {
		
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
	
	@RequestMapping(value="/test")
	public 	@ResponseBody List<Report> test() {
		//model.addAttribute("testdata", );
		
		return service.getAllData();
	}
}
