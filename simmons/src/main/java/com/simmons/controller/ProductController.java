package com.simmons.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.simmons.model.ProductDao;
import com.simmons.model.ProductDto;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductDto productDto;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/Mattress")
	public String mattress() {
		return "product/mattress";
	}
	@RequestMapping("/Detail")
	public String detail() {
		return "product/detail";
	}
	
	@RequestMapping("/Order")
	public String order() {
		return "product/order";
	}
	
	@RequestMapping("/OrderInfo")
	public String orderInfo() {
		return "product/orderInfo";
	}
}