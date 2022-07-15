package edu.spring.ex02;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import edu.spring.ex02.domain.Board;
import edu.spring.ex02.domain.Cart;
import edu.spring.ex02.domain.Product;
import edu.spring.ex02.domain.User;
//import edu.spring.ex02.domain.User;
import edu.spring.ex02.persistence.BoardDao;
import edu.spring.ex02.persistence.CartDao;
import edu.spring.ex02.persistence.ProductDao;
import edu.spring.ex02.persistence.UserDao;
//import edu.spring.ex02.persistence.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" }
)
@WebAppConfiguration
public class BoardDaoTest {
	private static final Logger logger = LoggerFactory.getLogger(BoardDaoTest.class);
	
	@Autowired private BoardDao boardDao;
	@Autowired private UserDao userDao;
	@Autowired private ProductDao productDao;
	@Autowired private CartDao cartDao;
	
	
	@Test
	public void doTest() {
		//logger.info("boardDao: {}", boardDao);
		//logger.info("userDao: {}", userDao);
		//logger.info("productDao: {}", productDao);
		//logger.info("cartDao: {}", cartDao);
		
//		List<Board> list = boardDao.read();
//		List<Product> list = productDao.readRing();
//		List<Cart> list = cartDao.read();
//		logger.info("list size = {}", list.size());
		
//		Board board = boardDao.read(1);
//		Product product = productDao.read(1);
//		Cart cart = cartDao.read(1);
//		logger.info(cart.toString());
		
//		Board board = new Board(0, "MyBatis-Spring Test", "마이바티스 스프링 테스트", "admin", null, 0, 0, null);
//		int result = boardDao.create(board);
//		logger.info("INSERT 결과: {}", result);
		
//		Product product = new Product(0, "스마일 귀걸이", 1000, "pr1.jpg","","",null,"귀여운 스타일링");
//		int result = productDao.create(product);
//		logger.info("INSERT 결과: {}", result);
		
//		Cart cart = new Cart(0, "guest", 1, 2);
//		int result = cartDao.create(cart);
//		logger.info("INSERT 결과: {}", result);

				
//		Board board = new Board(3, "수정 성공?", "MaBatis를 사용한 SQL UPDATE...", null, null, 0, 0, null);
//		int result = boardDao.update(board);
//		logger.info("UPDATE 결과: {}", result);
		
//		Product product = new Product(21, "스마일 귀걸이 수정", 13000, "pr1.jpg","","",null,"귀여운 스타일링");
//		int result = productDao.update(product);
//		logger.info("UPDATE 결과: {}", result);
		
//		Cart cart = new Cart(21, "guest", 1, 3);
//		int result = cartDao.update(cart);
//		logger.info("UPDATE 결과: {}", result);
		
//		int result = boardDao.updateViewCnt(3);
//		logger.info("updateViewCnt 결과: {}", result);
		
//		int result = boardDao.delete(3);
//		logger.info("delete 결과: {}", result);
		
//		int result = productDao.delete(21);
//		logger.info("delete 결과: {}", result);
		
//		int result = cartDao.delete(21);
//		logger.info("delete 결과: {}", result);
		
		
//		List<Board> list = boardDao.read(3, "TEST");
//		logger.info("키워드 검색 결과: {}개 행", list.size());
		
//		User user = new User("oh0000", "0000", "oh@oh.co.kr", 0);
//		int result = userDao.create(user);
//		logger.info("create user 결과: {}", result);
		
		
	}
	
}