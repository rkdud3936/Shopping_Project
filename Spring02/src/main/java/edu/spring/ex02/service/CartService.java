package edu.spring.ex02.service;

import java.util.List;

import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;

public interface CartService {
	List<CartListVO> select();
	Cart select(int cid);
	int insert(Cart cart);
	int update(Cart cart);
	int delete(int cid);
}
