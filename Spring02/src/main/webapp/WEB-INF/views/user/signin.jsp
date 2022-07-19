<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="https://kit.fontawesome.com/1324c7db76.js" crossorigin="anonymous"></script>
		
		<meta charset="UTF-8">
		
		 <meta name="viewport" content="width=device-width, initial-scale=1" />
         <link rel="stylesheet" 
        	    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
			<title>Brand</title>
		<link rel="stylesheet" href="../resources/css/shop/menubar.css">
		<link rel="stylesheet" href="../resources/css/shop/signin1.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		
		
		<script src="./resources/js/po.js" defer></script>
	
</head>
	<body>
		<%@ include file = "../include/mainnav.jsp" %>
		
		<div class="signinCont">
			<div class="container">
	        
	       	<h5><span>DREAM</span> LOGIN</h5>
	        
	        <hr /> <br />
	        <form action="./signin" method="post">
	            <input type="text" placeholder="아이디" name="userid" required style="height:30px; width: 430px" /><br /><br />
	            <input type="password" placeholder="비밀번호" name="pwd" required style="height:30px; width: 430px" /><br /><br />
	            <input type="submit" value="로그인" class="login" required style="height:60px; width: 430px" /><br />
	            <input type="hidden" name="url" value="${url}"/>
	        </form>
	        <br /><hr />
	        <p><a href=""><input type="button" value="회원가입" id="signup" /></a></p>
	    	</div>
		</div>    
	
		
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		
	</body>
</html>
