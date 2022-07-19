package edu.spring.ex02.persistence;

import java.util.List;

import edu.spring.ex02.domain.Product;



public interface ProductDao {
	List<Product> read();
	List<Product> readPrice();
	List<Product> readEarring();
	List<Product> readEarringPrice();
	List<Product> readRing();
	List<Product> readRingPrice();
	
	Product read(int pid);
	int create(Product product);
	int update(Product product);
	int delete(int pid);
	
	
	
}
