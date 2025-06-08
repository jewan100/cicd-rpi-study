package com.cicd.rpi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String home() {
		return "redirect:/index.html";
	}

	@GetMapping("/poo")
	public String poo() {
		return "redirect:/poo.html";
	}
}
