package com.sample.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	//requestmapping처럼 method를 넣어줄 필요가 없음
	@GetMapping("/")
	public String index() {
		return "index";
	}
}
