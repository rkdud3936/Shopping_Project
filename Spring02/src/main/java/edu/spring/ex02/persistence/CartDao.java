package edu.spring.ex02.persistence;

import java.util.List;

import edu.spring.ex02.domain.Cart;

public interface CartDao {
	List<Cart> read();
	Cart read(int cid);
	int create(Cart cart);
	int update(Cart cart);
	int delete(int cid);
}
