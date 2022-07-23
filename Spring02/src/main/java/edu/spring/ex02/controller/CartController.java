package edu.spring.ex02.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.ex02.domain.Board;
import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;
import edu.spring.ex02.domain.Product;
import edu.spring.ex02.domain.User;
import edu.spring.ex02.service.CartService;




@Controller 
@RequestMapping(value = "/cart")
public class CartController {
	private static final Logger log = LoggerFactory.getLogger(CartController.class);
	
	@Autowired private CartService cartService;
	
	// 장바구니 메인
	@RequestMapping(value = "/cartMain", method = RequestMethod.GET)
	public void cartMain(Model model) {
		log.info("cartMain() 호출");
		
		List<CartListVO> list = cartService.select();
		model.addAttribute("cartList", list);
	}
	
	// 장바구니 삭제
	@RequestMapping(value = "/cartDelete", method = RequestMethod.GET)
	public String cartDelete(int cid) {
		log.info("cartDelete(pid={}) 호출", cid);
		
		cartService.delete(cid);
		return "redirect:/cart/cartMain";
	}
	
	// 장바구니 수정
	@RequestMapping(value = "/cartUpdate", method = RequestMethod.GET)
	public void cartUpdate(int cid, Model model) {
		log.info("cartUpdate(cid={}) GET 호출", cid);
		
		CartListVO cartlistvo = cartService.select(cid);
		model.addAttribute("cartList", cartlistvo);
		
	}
	
	@RequestMapping(value = "/cartUpdate", method = RequestMethod.POST)
	public String update(Cart cart) {
		log.info("update({}) POST 호출", cart);
		cartService.update(cart); 
		return "redirect:/cart/cartMain"; 
	}
	
}
