<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<script src="https://kit.fontawesome.com/1324c7db76.js" crossorigin="anonymous"></script>
		<meta charset="UTF-8">

		 <link rel="stylesheet" href="../resources/css/shop/menubar.css">
		 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	</head>
	<body>
		<body>
		<nav class="apple">
			<div class="navbar_logo">
				<i class="fa-solid fa-gem"></i>
				<a href="../">DREAM</a>
			</div>
			
			<ul class="navbar_menu">
				<li><a href="../product/all">ALL</a></li>
				<li><a href="../product/earring">Earring</a></li>
				<li><a href="../product/ring">Ring</a></li>
				<li><a href="">Event</a></li>
				<li><a href="../board/main">Notice</a></li>
			</ul>
			
			<ul class="navbar_right">
			<c:if test="${empty signInUserId}"> <%-- 로그인 되어 있지 않은 경우 --%>		
				<li><a href="../user/signin">Login</a></li>	
				<li><a href="../user/register">SignUp</a></li>	
				
			</c:if>
			
			<c:if test="${not empty signInUserId}"> <%-- 로그인 되어 있는 경우 --%>
				<li> <span>[${signInUserId}]</span>
	            	<a href="../user/signout">로그아웃</a>
	            </li>
	            <li><a href="../cart/cartMain"><span class="material-symbols-outlined">shopping_cart</span></a></li>
			</c:if>
			</ul>
			
			
			<a href="#" class="navbar_toogleBtn">
				<i class="fa-solid fa-bars"></i>
			</a>
		</nav>
	</body>
</html>