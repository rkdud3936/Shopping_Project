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

import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;
import edu.spring.ex02.domain.User;
import edu.spring.ex02.service.CartService;




@Controller 
@RequestMapping(value = "/cart")
public class CartController {
	private static final Logger log = LoggerFactory.getLogger(CartController.class);
	
	@Autowired private CartService cartService;
	
	@RequestMapping(value = "/cartMain", method = RequestMethod.GET)
	public void cartMain(Model model) {
		log.info("cartMain() 호출");
		
		
		// 서비스 객체의 메서드를 사용해서 글 전체 목록을 가져옴.
		List<CartListVO> list = cartService.select();
		// 글 전체 목록을 Model 객체에 속성으로 추가해서 View(JSP)까지 전달
		model.addAttribute("cartList", list);
		
		// controller 메서드가 리턴하는 문자열이 없으면 요청 주소로 View(jsp 파일)을 찾음.
	}
	
	
}
