package edu.spring.ex02.service;

import java.util.List;

import edu.spring.ex02.domain.Product;

public interface ProductService {
	List<Product> selectAll();
	List<Product> selectAllPrice();
	
	List<Product> selectEarring();
	List<Product> selectEarringPrice();
	
	List<Product> selectRing();
	List<Product> selectRingPrice();
	
	Product select(int pid);
	int insert(Product product);
	int update(Product product);
	int delete(int pid);
	
	

}
