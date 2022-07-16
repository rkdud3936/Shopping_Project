package edu.spring.ex02.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.CartListVO;

@Repository 
public class CartDaoImpl implements CartDao{

	private static final Logger logger = LoggerFactory.getLogger(CartDaoImpl.class);
	private static final String CART_NAMESPACE = "edu.spring.ex02.mapper.CartMapper";

	// root-context.xml로 관리되고 있는 Java bean 객체를 주입(injection)받음.
	@Autowired private SqlSession sqlSession;

	@Override
	public List<CartListVO> read() {
		logger.info("cartDaoImpl.read() 호출");
		
		return sqlSession.selectList(CART_NAMESPACE + ".select");
	}
	
	@Override
	public Cart read(int cid) {
		logger.info("cartDaoImpl.read(cid={}) 호출", cid);
		
		return sqlSession.selectOne(CART_NAMESPACE + ".selectByCid", cid);
	}

	@Override
	public int create(Cart cart) {
		logger.info("cartDaoImpl.create({}) 호출", cart);
		
		return sqlSession.insert(CART_NAMESPACE + ".insert", cart);
	}

	@Override
	public int update(Cart cart) {
		logger.info("cartDaoImpl.update({}) 호출", cart);
		
		return sqlSession.update(CART_NAMESPACE + ".update", cart);
	}

	@Override
	public int delete(int cid) {
		logger.info("cartDaoImpl.delete(cid={})", cid);
		
		return sqlSession.delete(CART_NAMESPACE + ".delete", cid);
	}


}

