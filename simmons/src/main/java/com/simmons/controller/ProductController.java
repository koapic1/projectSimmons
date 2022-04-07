package com.simmons.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	@RequestMapping("/insert")
	public String insert(){
		return "product/insert";
	}
}
