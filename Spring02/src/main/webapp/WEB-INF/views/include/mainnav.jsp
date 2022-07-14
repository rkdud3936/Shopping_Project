<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		 <script src="../resources/js/bar.js" defer></script>
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
			<li><a href="">News</a></li>
			<li><a href="../board/main">FAQ</a></li>
		</ul>
		
		<ul class="navbar_right">
		<c:if test="${empty signInUserId}"> <%-- 로그인 되어 있지 않은 경우 --%>		
			<li><a href="../user/signin">Login</a></li>	
			<li><a href="../user/register"><i class="fa-solid fa-heart"></i></a></li>
		</c:if>
		
		<c:if test="${not empty signInUserId}"> <%-- 로그인 되어 있는 경우 --%>
			<li> <span>[${signInUserId}]</span>
            	<a href="../user/signout">로그아웃</a>
            </li>
            <li><a href="../user/register"><i class="fa-solid fa-heart"></i></a></li>
		</c:if>
		</ul>
		
		<a href="#" class="navbar_toogleBtn">
			<i class="fa-solid fa-bars"></i>
		</a>
	</nav>

 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>