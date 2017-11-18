package org.mini.web;

import java.util.List;

import org.mini.domain.Comment;
import org.mini.location.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/comment/*")
public class CommentController {
	
	@Autowired
	LocationService service;
	
	@GetMapping("/commentList")
	@ResponseBody
	public List<Comment> commentList(int rno){
		
		return service.rList(rno);
	}
	
}
