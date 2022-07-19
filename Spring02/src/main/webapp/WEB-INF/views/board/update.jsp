<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="https://kit.fontawesome.com/1324c7db76.js" crossorigin="anonymous"></script>	
		
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		 <meta name="viewport" content="width=device-width, initial-scale=1" />
         <link rel="stylesheet" 
        	    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
		 <link rel="stylesheet" href="../resources/css/shop/menubar.css">
		 <link rel="stylesheet" href="../resources/css/shop/boupdate.css">	
		 <style>
			
		</style>	
		
	</head>
	
	<body>
		<%@ include file = "../include/mainnav.jsp" %>
		
		<div class="container">
			
			<nav>
	        	<ul class=nav_update>	
	        		<li><a id="menu-delete" href="./delete?bno=${board.bno}">삭제</a></li>
	        		<li><a href="./main">게시판 메인</a></li>
	        	</ul>	
	        </nav>
	        <br/>
	        <p style="margin-left: 5px; ">수정 PAGE</p> 
	        
	             
	        <div> 
                <form action="./update" method="post">
                    <div style="display: none;">
                        <input type="number" name="bno" value="${board.bno}" readonly />
                    </div>
                    <div>
                        <input type="text" id="title" name="title" value="${board.title}" required autofocus style="font-size: 25px;" />
                    </div>
                    <div style="padding-left: 30px; padding-bottom: 10px; padding-top: 10px; font-size: 13px; border-bottom: solid 1px #c7c7c7; ">
                        <label for="userid" style="font-weight:bold;">작성자</label>
                        <input type="text" id="userid" name="userid" value="${board.userid}" required readonly />
                    </div>
                    
                    <div>   
                        <textarea rows="10" id="content" name="content" required>${board.content}
                        </textarea>
                    </div>
					<hr>
                    <div>
                        <input type="submit" class="submit_btn" value="수정 완료" />
                    </div>
                </form> 
	          </div>
	          
	            
	             
	        
		</div>
		
	
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script>
	        $(document).ready(function () {
	        	
	        	$('#menu-delete').click(function (event) {
	        		event.preventDefault(); // 링크를 클릭했을 때의 기본 동작인 요청 보내기를 하지 않음.
	        		var result = confirm('정말 삭제할까요?');
	        		if (result) { // 사용자가 YES를 선택했을 때
	        			location = $(this).attr('href'); // 원래 이동하려고 했던 요청 주소로 요청 보내기.
	        		}
	        	});
	        	
	        });
	    </script>
	
	</body>
</html>