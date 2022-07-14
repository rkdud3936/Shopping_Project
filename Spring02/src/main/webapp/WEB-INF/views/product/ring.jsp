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
		 <link rel="stylesheet" href="../resources/css/shop/proAll.css">
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
<body>
	<%@ include file = "../include/mainnav.jsp" %>
	
	<div class="container">
		<br/>
		<div class="fimage">
     	   <img src="../resources/imgs/shop/pr13.jpg" alt="">
    	</div> 

		<br/>
		
		
		<div>
			<c:forEach var="product" items="${productRingList}">
				<div class="gallery">
  					<div class="images">
  						<a href="">
   							<img src="../resources/imgs/shop/${product.pimage1}"  style="width: 255px; height: 300px;" >
 						</a>
   		 			</div>
   		 			<div class="pro">
   		 				<div style="color: white;">${product.pid}</div>
   		 				<div class="proName">${product.pname}</div>
   		 				<div class="proPrice">${product.pprice}원</div>
					</div>
				</div>
			</c:forEach>
		</div> 
	</div>

 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>