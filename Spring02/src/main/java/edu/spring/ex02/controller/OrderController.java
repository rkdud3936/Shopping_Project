package edu.spring.ex02.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;
import edu.spring.ex02.domain.Product;
import edu.spring.ex02.service.CartService;
import edu.spring.ex02.service.ProductService;

@Controller
@RequestMapping(value = "/order")
public class OrderController {
	private static final Logger log = LoggerFactory.getLogger(OrderController.class);
	
	@Autowired private CartService cartService;
	@Autowired private ProductService productService;
	
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public void buy(Model model) {
		log.info("buy()호출");
		
		List<CartListVO> list = cartService.select();
		model.addAttribute("cartList", list);
	}
	
	@RequestMapping(value = "/buyDirect", method = RequestMethod.GET)
	public void buyDirect(int pid, Model model) {
		log.info("buyDirect(pid={}) GET 호출", pid);
		Product product = productService.select(pid);
		model.addAttribute("product", product);
	}
	
	
	@RequestMapping(value = "/buyDelete", method = RequestMethod.GET)
	public String buyDelete(int cid) {
		log.info("buyDelete(cid={}) 호출", cid);
		
		cartService.delete(cid);
		
		return "redirect:/order/buy";
	}
	
	@RequestMapping(value = "/buyUpdate", method = RequestMethod.GET)
	public void buyUpdate(int cid, Model model) {
		log.info("buyUpdate(cid={}) GET 호출", cid);
		
		CartListVO cartlistvo = cartService.select(cid);
		model.addAttribute("cartList", cartlistvo);
		
	}
	
	@RequestMapping(value = "/buyUpdate", method = RequestMethod.POST)
	public String buyUpdate(Cart cart) {
		log.info("update({}) POST 호출", cart);
		
		cartService.update(cart); // 게시글 수정 서비스 완료.
		
		return "redirect:/order/buy"; // 게시판 메인으로 이동.
	}
	
	@RequestMapping(value = "/payEnd", method = RequestMethod.GET)
	public void payEnd() {
		log.info("payEnd() GET 방식 호출");
	}
 
	
}
