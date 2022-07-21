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
		 <link rel="stylesheet" href="../resources/css/shop/about.css">
		 <link rel="stylesheet" href="../resources/css/shop/footer.css">
		 
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
	<body>
	<%@ include file = "../include/mainnav.jsp" %>
	
	<div class="container" style="width: 600px; text-align: center;">
		<div class="head">
			<i class="fa-solid fa-gem"></i> DREAM <i class="fa-solid fa-gem"></i>
		</div>
		<div class="introduce">
			<p>오늘의 삶과 취향에 자연스럽게 스며들 수 있는 것들을<br>모아 선보입니다.</p>
		</div>
		<div class="cs">
			CS CENTER: <span>1644 - 0000</span> 
			<div class="cs_time">
			평일 AM10:00 - PM5:00<br>
			점심 PM12:00 - PM1:00<br>
			(토요일/일요일/공휴일 휴무)	
			</div>	
		</div>
		<div class="image">
			<img src="../resources/imgs/shop/pr24.jpg">
			<img src="../resources/imgs/shop/pr26.jpg">
		</div>
	</div>
	<%@ include file = "../include/footer.jsp" %>
 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>