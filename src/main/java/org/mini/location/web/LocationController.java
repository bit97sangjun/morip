package org.mini.location.web;

import java.util.List;

import org.mini.domain.Movie;
import org.mini.domain.Place;
import org.mini.location.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/location/*")
public class LocationController {

	@Autowired
	LocationService service;
	
	@GetMapping("/main")
	public void main(Model model, @RequestParam(value="zcode", defaultValue="1") int zcode, @RequestParam(value="pno", defaultValue="0") int pno) {
		
		System.out.println(zcode);
		
		model.addAttribute("mList", service.getMovies(pno, zcode));
		model.addAttribute("pName", service.getPlaceName(pno));
		model.addAttribute("pList", service.getPlace(zcode));
		model.addAttribute("lList", service.getLocation());
		
	}
	
}
