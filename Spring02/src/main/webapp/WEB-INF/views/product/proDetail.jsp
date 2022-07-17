<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
		 
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
<body>
	<%@ include file = "../include/mainnav.jsp" %>
	
	<div class="container">
		<table border="1">  
			<tr>
				<td>
					<img src="../resources/imgs/shop/${product.pimage1}" width="340" height="400">
				</td>
				<td>
					<table border="1" style="height: 400px; width: 700px;">
						<tr align="center">
							<td>상품명</td>
							<td>${product.pname}</td> 
						</tr>
						<tr align="center">
							<td>가격</td>
							<td>${product.pprice}원</td> 
						</tr>
						<tr align="center">
							<td>상품소개</td>
							<td>${product.pdetail}</td> 
						</tr>
												
						<tr align="center">
							<td colspan="2">
								<form name="form1" method="post"> <!-- /cart/cartMain POST submit -->
									<input type="hidden" name="pid" value="${product.pid}">
									<input type="hidden" name="userid" value="${signInUserId}">
									
									<select name="ccount">
										<c:forEach begin="1" end="10" var="i">
											<option value="${i}">${i} 
										</c:forEach>
									</select>개
									<input type="submit" value="장바구니에 담기"> 
								</form>
								<a href="./">상품 목록</a>
							</td>
						</tr>												
					</table>
				</td>
			</tr>
		
		</table>	
		
				
  		<div> 
  			<a href="#" class="btn btn-dark" style="color: white;">구매하기</a>
  			<a href="#" class="btn btn-dark" style="color: white;">장바구니</a>
  			<button type="button" class="btn btn-dark">Dark</button>
  		</div>
	</div>

 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
		
</body>
</html>