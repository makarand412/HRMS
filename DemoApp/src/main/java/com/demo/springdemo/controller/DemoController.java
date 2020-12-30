package com.demo.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.springdemo.entity.User;

@Controller
public class DemoController {

	@RequestMapping("homePage")
	public String showHOmePage(Model model, User user) {
		
		model.addAttribute("user", user);
		return "index";
	}
	
	@RequestMapping("user/ShowSignUpForm")
	public String showSignUpForm(Model model, User user) {
		
		model.addAttribute("user", user);
		return "sign-up-form";
	}
	
	@RequestMapping("user/ShowLoginForm")
	public String showLoginForm(Model model, User user) {
		
		model.addAttribute("user", user);
		return "login-form";
	}
}
