<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
	<head>
		<script src="https://kit.fontawesome.com/1324c7db76.js" crossorigin="anonymous"></script>
		
		<meta charset="UTF-8">
		
		 <meta name="viewport" content="width=device-width, initial-scale=1" />
         <link rel="stylesheet" 
        	    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
			<title>Brand</title>
		<link rel="stylesheet" href="./resources/css/shop/menubar.css">
		
		
		
		<script src="./resources/js/bar.js" defer></script>
	<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    
    
  }
  </style>	
</head>
<body>
	<nav class="apple">
		<div class="navbar_logo">
			<i class="fa-solid fa-gem"></i>
			<a href="./">DREAM</a>
		</div>
		
		<ul class="navbar_menu"> 
			<li><a href="./product/all">ALL</a></li>
			<li><a href="./product/earring">Earring</a></li>
			<li><a href="./product/ring">Ring</a></li>
			<li><a href="">Event</a></li>
			<li><a href="">News</a></li>
			<li><a href="./board/main">FAQ</a></li>
		</ul>
		
		<ul class="navbar_right">
		<c:if test="${empty signInUserId}"> <%-- 로그인 되어 있지 않은 경우 --%>		
			<li><a href="./user/signin">Login</a></li>	
			
		</c:if>
		
		<c:if test="${not empty signInUserId}"> <%-- 로그인 되어 있는 경우 --%>
			<li> <span>${signInUserId}</span>
            	<a href="./user/signout">로그아웃</a>
            </li>
            <li><a href="./cart/cartMain"><i class="fa-solid fa-heart"></i></a></li>
            
		</c:if>
		</ul>
		
		<a href="#" class="navbar_toogleBtn">
			<i class="fa-solid fa-bars"></i>
		</a>
	</nav>
	
	<div class="container-fluid" style="padding: 0;">  
        <video width="100%" height="auto" autoplay loop muted>
  			<source src="./resources/imgs/shop/jwe.mp4" type="video/mp4">
 			<source src="movie.ogg" type="video/ogg">
 		</video>
	</div>
	 	
	<div>안녕</div>
	 	
<div class="container-fluid" style="padding: 0;" >
	<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner"> 
    <div class="carousel-item active">
      <img src="./resources/imgs/shop/web01.jpg" alt="이미지1" width="1100" height="300">
    </div>
    <div class="carousel-item">
      <img src="./resources/imgs/shop/web02.jpg" alt="이미지2" width="1100" height="300">
    </div>
    <div class="carousel-item">
      <img src="./resources/imgs/shop/web03.jpg" alt="이미지3" width="1100" height="300">
    </div> 
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>	


	
 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	
</body>
</html>