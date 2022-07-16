package edu.spring.ex02.persistence;

import java.util.List;

import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;

public interface CartDao {
	//카트 리스트
	List<CartListVO> read();
	Cart read(int cid);
	int create(Cart cart);
	int update(Cart cart);
	int delete(int cid);
}
