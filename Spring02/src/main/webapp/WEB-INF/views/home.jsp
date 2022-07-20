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
		<link rel="stylesheet" href="./resources/css/shop/footer.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		
		
		<script src="./resources/js/bar.js" defer></script>
		
		<style>
 	 	.carousel-inner img {
			width: 100%; 
		}
  
  		/* Tabs*/
		section {
		    padding: 60px 0;
		}

		section .section-title {
		    text-align: center;
		    color: #113320;
		    margin-bottom: 50px;
		    text-transform: uppercase;
		}
		#tabs{
			
		    color: #133c25;
		}
		#tabs h6.section-title{
		    color: #133c25;
		}
		
		#tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
		    color: #133c25; 
		    background-color: transparent;
		    border-color: transparent transparent #133c25; 
		    border-bottom: 4px solid !important;
		    font-size: 20px;
		    font-weight: bold;
		}
		#tabs .nav-tabs .nav-link {
		    border: 1px solid transparent;
		    border-top-left-radius: .25rem;
		    border-top-right-radius: .25rem;
		    color: #133c25;
		    font-size: 20px;
		} 
		
		
		
  		</style>	
	</head>
	
	<body >  
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
				<li><a href="./board/main">Notice</a></li>
			</ul>
			
			<ul class="navbar_right">
			<c:if test="${empty signInUserId}"> <%-- 로그인 되어 있지 않은 경우 --%>		
				<li><a href="./user/signin">Login</a></li>
				<li><a href="./user/register">SignUp</a></li>	
				
			</c:if>
			
			<c:if test="${not empty signInUserId}"> <%-- 로그인 되어 있는 경우 --%>
				<li> <span>[${signInUserId}]</span>
	            	<a href="./user/signout">로그아웃</a>
	            </li>
	            <li><a href="./cart/cartMain"><span class="material-symbols-outlined">shopping_cart</span></a></li>
	            
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

	
		<!-- Tabs -->
		<section id="tabs">
			<div class="container">
				<h6 class="section-title h1">Best</h6>
				<div class="row">
					<div class="col-xs-12 ">
						<nav>
							<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
								<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-all" role="tab" aria-controls="nav-home" aria-selected="true">All</a>
								<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-earring" role="tab" aria-controls="nav-profile" aria-selected="false">Earring</a>
								<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-ring" role="tab" aria-controls="nav-contact" aria-selected="false">Ring</a>
							</div>
						</nav>
						<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-home-tab">
								<div style="text-align: center;">
									<br/>
									<h3>찾았다. 내 POINT</h3>
									<h6>심플하면서도 포인트가 되는 주얼리입니다.</h6>
									<a href="./product/all" style="color: #133c25; font-size: 12px; float: right;">더보기</a>
								</div>
								<br/> 
								<div class="row">
									<img src="./resources/imgs/shop/pr2.jpg" style="width: 280px; margin-left: 10px">
									<img src="./resources/imgs/shop/pr17.jpg" style="width: 280px; margin-left: 10px">
									<img src="./resources/imgs/shop/pr12.jpg" style="width: 280px; margin-left: 10px">
									<img src="./resources/imgs/shop/pr14.jpg" style="width: 280px; margin-left: 10px">		  
								</div>
							</div>					
						
							<div class="tab-pane fade" id="nav-earring" role="tabpanel" aria-labelledby="nav-profile-tab">
								<div style="text-align: center;"> 
									<br/>
									<h3>커피 한 잔 할래요</h3>
									<h6>착용하는 순간 예쁨 상승!</h6>
									<a href="./product/earring" style="color: #133c25; font-size: 12px; float: right;">더보기</a>
								</div>
								<br/> 
								<div class="row" >
									<img src="./resources/imgs/shop/pr2.jpg" style="width: 24%; margin-left: 10px">
									<img src="./resources/imgs/shop/pr4.jpg" style="width: 24%; margin-left: 10px">
									<img src="./resources/imgs/shop/pr08.jpg" style="width: 24%; margin-left: 10px">
									<img src="./resources/imgs/shop/pr10.jpg" style="width: 24%; margin-left: 10px">		
								</div>	
							</div>
						
							<div class="tab-pane fade" id="nav-ring" role="tabpanel" aria-labelledby="nav-contact-tab">
								<div style="text-align: center;">
									<br/>
									<h3>손이가요 손이가</h3>
									<h6>보는 순간 끼고 싶은 마성의 반지</h6>
									<a href="./product/ring" style="color: #133c25; font-size: 12px; float: right;">더보기</a>
								</div>
								<br/> 
								<div class="row" >
									<img src="./resources/imgs/shop/pr14.jpg" style="width: 24%; margin-left: 10px">
									<img src="./resources/imgs/shop/pr15.jpg" style="width: 24%; margin-left: 10px">
									<img src="./resources/imgs/shop/pr17.jpg" style="width: 24%; margin-left: 10px">
									<img src="./resources/imgs/shop/pr16.jpg" style="width: 24%; margin-left: 10px">		
								</div>					
							</div>
						</div>
					</div>
				</div>
			</div> 
		</section>
		<br/><br/><br><br>
		
		<div class="container">
			<h6>Dream Package</h6>
			<table>
				<tr>
					<td>
						<img src="./resources/imgs/shop/pr18.jpg" class="rounded" width="350" height="350"> 
					</td>
					<td align="center">
						<div style="padding: 15px;"> 
							<h3>🎁 선물 포장 Event 🎁</h3>
							<br><br>
							<p>
								드림의 패키지를 소개합니다.<br/>
								1개만 구매하더라도 선물받는 기분좋은 설렘을 드리기 위해 종이봉투에 실리본을 감아 포장해 드립니다 !<br>
								3개 이상 구매하시면 종이박스에 리본을 묶어 선물포장 해드리고 있어요. <br>
								작은 기쁨과 설렘을 위해 노력하는 DREAM이 되겠습니다 :)  오늘 밤도 편안하고 포근한 밤 되세요🌖
						</p>
						</div>
					</td>
					<td>
						<img src="./resources/imgs/shop/pr19.jpg" class="rounded" width="350" height="350"> 
					</td>
				</table>
			</div>
		
		 	<br><br>
		 	
		 	<footer>
		 		<div class="foo_div" style="text-align: center;">
		 			<span>(주) DREAM</span> <span> ㅣ </span>
		 			<span>대표 : 양가영</span> <span> ㅣ </span>
		 			<span>사업자 등록번호 : 00-000-0000 </span> <span> ㅣ </span>
		 			<p>주소 : 서울특별시 서대문구</p>
		 			<p>행복을 드리는 DREAM입니다.</p>  
		 			<img src="./resources/imgs/shop/pr29.jpg">
		 		</div>	
		 	</footer>
			
			

 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	
	</body>
</html>