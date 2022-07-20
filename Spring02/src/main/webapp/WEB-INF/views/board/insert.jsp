<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
		 <link rel="stylesheet" href="../resources/css/shop/boinsert.css">	
</head>
	<body>
		<%@ include file = "../include/mainnav.jsp" %>
		
		<div class="container">
	      	
	      	<nav>
	        	<ul class=nav_insert>	
	        		<li><a href="./main">게시판 메인</a></li>
	        	</ul>	
	        </nav>
	        
	        <div> <!-- 입력 양식 -->
	                <form method="post"> <!-- /board/insert POST submit -->
	                    
	                    <input type="text" id="title" name="title" placeholder="제목 입력" required autofocus style="font-size: 25px;" />
	                    
	                    <div style="padding-left: 30px; padding-bottom: 10px; padding-top: 10px; font-size: 13px;">
	                       <label for="userid" style="font-weight:bold;">작성자</label>
	                       <input type="text" name="userid" value="${signInUserId}" required readonly />
	                    </div>
	                    <hr style="margin: 0"/>
	                    
	                    
	                    <textarea rows="10" id="content" name="content" placeholder="내용 입력" required></textarea>
	                    
	                    
	                    <div>
	                        <input class="submit_btn" type="submit" value="등록">
	                    </div>
	                </form>
	         </div>
	         
		
		</div>
	
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>