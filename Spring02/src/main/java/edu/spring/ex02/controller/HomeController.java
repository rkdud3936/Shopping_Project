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

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	private ProductService productService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("home() 호출");
		
		
		return "home";
	}
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public void all(Model model) {
		logger.info("all() 호출");
		List<Product> list = productService.selectAll();
		model.addAttribute("productAllList", list);
	}
	
	@RequestMapping(value = "/intro/about", method = RequestMethod.GET)
	public void about() {
		logger.info("about() GET 방식 호출");
	}

	
	

		
	
}
