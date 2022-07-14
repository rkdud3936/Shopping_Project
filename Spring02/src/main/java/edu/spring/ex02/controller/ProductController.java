package edu.spring.ex02.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.ex02.domain.Product;
import edu.spring.ex02.service.ProductService;


@Controller
@RequestMapping(value = "/product")
public class ProductController {
	private static final Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired private ProductService productService;
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public void all(Model model) {
		log.info("all() 호출");
		List<Product> list = productService.selectAll();
		model.addAttribute("productAllList", list);
	}
	
	@RequestMapping(value = "/earring", method = RequestMethod.GET)
	public void earring(Model model) {
		log.info("all() 호출");
		List<Product> list = productService.selectEarring();
		model.addAttribute("productEarringList", list);
	}
	
	@RequestMapping(value = "/ring", method = RequestMethod.GET)
	public void ring(Model model) {
		log.info("all() 호출");
		List<Product> list = productService.selectRing();
		model.addAttribute("productRingList", list);
	}
	
	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public void insert(Model model) {
		log.info("insert() GET 방식 호출"); 
		List<Product> list = productService.selectAll();
		model.addAttribute("productAllList", list);
	}
	
	@RequestMapping(value = "/proInsert", method = RequestMethod.GET)
	public void insert() {
		log.info("insert() GET 방식 호출");
	}
	
	@RequestMapping(value = "/proInsert", method = RequestMethod.POST)
	public String insert(Product product) {
		log.info("insert({}) POST 호출", product);	
		productService.insert(product);
		return "redirect:/product/manage";
	}
	
	@RequestMapping(value = "/proUpdate", method = RequestMethod.GET)
	public void update(int pid, Model model) {
		log.info("update(bno={}) GET 호출", pid);
		
		Product product = productService.select(pid);
		model.addAttribute("product", product);
		
	}
	
	@RequestMapping(value = "/proUpdate", method = RequestMethod.POST)
	public String update(Product product) {
		log.info("update({}) POST 호출", product);
		
		productService.update(product); // 게시글 수정 서비스 완료.
		
		return "redirect:/product/manage"; // 게시판 메인으로 이동.
	}
	
	@RequestMapping(value = "/proDelete", method = RequestMethod.GET)
	public String delete(int pid) {
		log.info("delete(pid={}) 호출", pid);
		
		productService.delete(pid);
		
		return "redirect:/product/manage";
	}
	
	@RequestMapping(value = "/proDetail", method = RequestMethod.GET)
	public void detail(int pid, Model model) {
		log.info("detail(pid={}) GET 호출", pid);
		Product product = productService.select(pid);
		model.addAttribute("product", product);
	}
	
	
	
	
	
}
