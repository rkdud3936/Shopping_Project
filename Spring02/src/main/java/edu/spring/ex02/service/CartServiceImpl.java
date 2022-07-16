package edu.spring.ex02.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;
import edu.spring.ex02.persistence.CartDao;

@Service
public class CartServiceImpl implements CartService{
	private static final Logger log = LoggerFactory.getLogger(CartServiceImpl.class);
	
	@Autowired private CartDao cartDao;

	@Override
	public List<CartListVO> select() {
		log.info("select() 호출");
		
		return cartDao.read();
	}

	@Override
	public Cart select(int cid) {
		log.info("select(cid={}) 호출", cid);
		Cart cart = cartDao.read(cid); // 해당 카트번호의 카트내용을 찾음
		return cart;
	}

	@Override
	public int insert(Cart cart) {
		log.info("insert({}) 호출", cart);
		int result = cartDao.create(cart);
		return result;
	}

	@Override
	public int update(Cart cart) {
		log.info("update({}) 호출", cart);
		
		return cartDao.update(cart);	
	}

	@Override
	public int delete(int cid) {
		log.info("delete(cid={}) 호출", cid);
		
		return cartDao.delete(cid);
	}

}
