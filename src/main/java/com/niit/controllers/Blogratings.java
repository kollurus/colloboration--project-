package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.niit.models.BlogRatings;
import com.niit.service.BlogRatingService;

public class Blogratings {

	@Autowired
	private BlogRatingService blogRatingService;
	
	@PostMapping("/blogRatings")
	public void CreateBlog(@RequestBody BlogRatings blogRatings,HttpSession session) 
	{
		blogRatingService.createBlogRating(blogRatings, session);
	}

}
