package edu.spring.ex02.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.ex02.domain.Reply;
import edu.spring.ex02.service.ReplyService;

@RestController 
@RequestMapping(value = "/replies")
public class ReplyRestController {
	private static final Logger log = LoggerFactory.getLogger(ReplyRestController.class);
	
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	public ResponseEntity<List<Reply>> readAllReplies(@PathVariable(name = "bno") Integer bno) {
		log.info("readAllReplies(bno={})", bno);

		List<Reply> replyList = replyService.select(bno);
		ResponseEntity<List<Reply>> entity = new ResponseEntity<>(replyList, HttpStatus.OK);
		return entity;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Integer> createReply(@RequestBody Reply reply) {
		log.info("createReply({})", reply);
		
		int result = replyService.insert(reply);
		ResponseEntity<Integer> entity = new ResponseEntity<>(result, HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/{rno}", method = RequestMethod.PUT)
	public ResponseEntity<Integer> updateReply(
			@PathVariable(name = "rno") Integer rno,
			@RequestBody Reply reply) {
		log.info("updateReply(rno={}, reply={})", rno, reply);
		
		reply.setRno(rno); // PathVariable 값으로 Reply 인스턴스의 rno 값(수정할 댓글 번호)를 설정.
		int result = replyService.update(reply);
		ResponseEntity<Integer> entity = new ResponseEntity<>(result, HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	public ResponseEntity<Integer> deleteReply(@PathVariable(name = "rno") Integer rno) {
		log.info("deleteReply(rno={})", rno);
		
		int result = replyService.delete(rno);
		ResponseEntity<Integer> entity = new ResponseEntity<>(result, HttpStatus.OK);
		return entity;
	}
}
