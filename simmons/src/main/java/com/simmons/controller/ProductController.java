package com.simmons.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.simmons.model.ProductDao;
import com.simmons.model.ProductDto;
import com.simmons.model.ProductSizeDto;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductDto productDto;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/Mattress")
	public String mattress(Model model) {
		List<ProductDto> productList = productDao.getProductAllList();
		if(productList!=null) {
			model.addAttribute("productList", productList);
		}
		return "product/mattress";
	}
	
	@RequestMapping("/MattressList")
	public void mattressList(HttpServletRequest request) {
		String sized = request.getParameter("sized");
		String wgpFlag = request.getParameter("wgpFlag");
		System.out.println("sized=="+sized);
		System.out.println("wgpFlag=="+wgpFlag);
	}
	
	@RequestMapping("/Detail")
	public String detail(HttpServletRequest request, Model model) {
		int no = Integer.parseInt(request.getParameter("no"));
		productDto = productDao.SelectOne(no);
		if(productDto!=null) {
			String hardnessContents = productDao.getHContents(productDto.getHardness());
			List<ProductSizeDto> sizeList = productDao.getSizes(productDto.getPname());
			model.addAttribute("productDto", productDto);
			model.addAttribute("hardnessContents", hardnessContents);
			model.addAttribute("sizeList", sizeList);
		}
		
		return "product/detail";
	}
	
	@RequestMapping("/Size")
	@ResponseBody
	public int size(HttpServletRequest request) {
		String sizes = request.getParameter("size");
		String pname = request.getParameter("pname");
		int price = productDao.getPrice(sizes, pname);
		
		return price;
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