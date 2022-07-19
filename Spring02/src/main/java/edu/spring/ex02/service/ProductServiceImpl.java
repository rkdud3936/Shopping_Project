package edu.spring.ex02.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.ex02.domain.Product;
import edu.spring.ex02.persistence.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {
	private static final Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);

	@Autowired private ProductDao productDao;

	@Override
	public List<Product> selectAll() {
		log.info("select() 호출");
		
		return productDao.read(); // productdao read
	}
	
	@Override
	public List<Product> selectAllPrice() {
		log.info("select() 호출");
		
		return productDao.readPrice(); // productdao read
	}
	
	@Override
	public List<Product> selectEarring() {
		log.info("select() 호출");
		
		return productDao.readEarring();
	}
	
	@Override
	public List<Product> selectEarringPrice() {
		log.info("select() 호출");
		
		return productDao.readEarringPrice();
	}

	@Override
	public List<Product> selectRing() {
		log.info("select() 호출");
		
		return productDao.readRing();
	}

	@Override
	public List<Product> selectRingPrice() {
		log.info("select() 호출");
		
		return productDao.readRingPrice();
	}
	@Override
	public Product select(int pid) {
		log.info("select(pid={}) 호출", pid);
		
		Product product = productDao.read(pid);
		
		return product;
	}

	@Override
	public int insert(Product product) {
		log.info("insert({}) 호출", product);
		
		return productDao.create(product);
	}

	@Override
	public int update(Product product) {
		log.info("update({}) 호출", product);
		
		return productDao.update(product);
	}

	@Override
	public int delete(int pid) {
		log.info("delete(pid={}) 호출", pid);
		
		return productDao.delete(pid);		
	}


	
	
	
}
