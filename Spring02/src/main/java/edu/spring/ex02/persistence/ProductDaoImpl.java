package edu.spring.ex02.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.ex02.domain.Product;

@Repository
public class ProductDaoImpl implements ProductDao {

	private static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
	private static final String PRODUCT_NAMESPACE = "edu.spring.ex02.mapper.ProductMapper";
	
	@Autowired private SqlSession sqlSession;

	@Override
	public List<Product> read() {
		logger.info("productDaoImpl.read() 호출");
		
		return sqlSession.selectList(PRODUCT_NAMESPACE + ".selectAllPro");

	}
	
	@Override
	public List<Product> readPrice() {
		logger.info("productDaoImpl.read() 호출");
		
		return sqlSession.selectList(PRODUCT_NAMESPACE + ".selectAllPrice");

	}

	@Override
	public List<Product> readEarring() {
		logger.info("productDaoImpl.readEarring() 호출");
		
		return sqlSession.selectList(PRODUCT_NAMESPACE + ".selectByEarring");
	}
	
	@Override
	public List<Product> readEarringPrice() {
		logger.info("productDaoImpl.readEarring() 호출");
		
		return sqlSession.selectList(PRODUCT_NAMESPACE + ".selectByEarringPrice");
	}

	@Override
	public List<Product> readRing() {
		logger.info("productDaoImpl.readRing() 호출" );
		
		return sqlSession.selectList(PRODUCT_NAMESPACE + ".selectByRing");
			
	}
	
	@Override
	public List<Product> readRingPrice() {
		logger.info("productDaoImpl.readRing() 호출" );
		
		return sqlSession.selectList(PRODUCT_NAMESPACE + ".selectByRingPrice");
			
	}

	@Override
	public Product read(int pid) {
		logger.info("productDaoImpl.read(pid={}) 호출", pid);
		
		return sqlSession.selectOne(PRODUCT_NAMESPACE + ".selectByPid", pid);
	}

	@Override
	public int create(Product product) {
		logger.info("productDaoImpl.create({}) 호출", product);
		
		return sqlSession.insert(PRODUCT_NAMESPACE + ".insertPro", product);
	}

	@Override
	public int update(Product product) {
		logger.info("productDaoImpl.update({}) 호출", product);
		
		return sqlSession.update(PRODUCT_NAMESPACE + ".updatePro", product);
	
	}

	@Override
	public int delete(int pid) {
		logger.info("productDaoImpl.delete(pid={})", pid);
		
		return sqlSession.delete(PRODUCT_NAMESPACE + ".deletePro", pid);
	
	}
	


	
	
}
