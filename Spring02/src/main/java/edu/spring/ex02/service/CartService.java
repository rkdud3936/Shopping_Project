package edu.spring.ex02.service;

import java.util.List;

import edu.spring.ex02.domain.Cart;

public interface CartService {
	List<Cart> select();
	Cart select(int cid);
	int insert(Cart cart);
	int update(Cart cart);
	int delete(int cid);
}
