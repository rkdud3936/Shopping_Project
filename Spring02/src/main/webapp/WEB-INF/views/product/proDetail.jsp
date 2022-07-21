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
		<br>
		<div class="container">
			<table>  
				<tr>
					<td>
						<div id="demo" class="carousel slide" data-ride="carousel">
							<ul class="carousel-indicators">
				   				<li data-target="#demo" data-slide-to="0" class="active"></li>
				   	 			<li data-target="#demo" data-slide-to="1"></li>
				    			
				  			</ul>
				
				  			<div class="carousel-inner" style="padding-right: 20px; width: 550px; text-align: center;" >  
				    			<div class="carousel-item active">
				     				 <img src="../resources/imgs/shop/${product.pimage1}" alt="이미지1" width="400" height="500">
				    			</div> 
				    			<div class="carousel-item">
				     				 <img src="../resources/imgs/shop/${product.pimage2}" alt="이미지2" width="400" height="500">
				    			</div>
				  			</div>
				  
				  
				  			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				    			<span class="carousel-control-prev-icon" style="color: black;"></span>
				  			</a>
				 			 <a class="carousel-control-next" href="#demo" data-slide="next">
				    			<span class="carousel-control-next-icon"></span>
				  			</a>
						</div>		
					</td>
					<td>
						<table style="height: 500px; width:550px;"> 
							<tr>
								<td>
									<div style="text-align:left; font-size:25px; font-weight: bold;">
										${product.pname}
									</div>
									<div  style="text-align:right; font-size:28px; font-weight:500; padding-right: 10px;">
										${product.pprice}<span style="font-size: 20px;">원</span>
									</div>
							
									<hr>
									<div style="padding: 10px 0; ">
										${product.pdetail}
									</div>
									
									<hr> 

									<div style="font-weight: bold; font-size: 14px;">배송정보</div>
									<div style="padding-left: 20px; font-size: 13px;">일반배송 2500원 [주문일로부터 7~10일 이내(주말 및 공휴일 제외) 소요됩니다.]</div>
									
									<hr>
									<br>
									<div style="text-align: center;">
										<form name="form1" method="post"> <!-- /cart/cartMain POST submit -->
											<input type="hidden" name="pid" value="${product.pid}">
											<input type="hidden" name="userid" value="${signInUserId}">
											
											
											<select name="ccount" style=" margin: 10px;">
												<c:forEach begin="1" end="10" var="i">
													<option value="${i}">${i} 
												</c:forEach>
											</select>개
											
											<c:if test="${empty signInUserId}"> <%-- 로그인 되어 있지 않은 경우 --%>		
												<a href="../user/signin" class="button" style="background-color: #1b5033; color: white; margin: 0 15px; border: none; border-radius: 4px; font-size: 13px; padding: 6px 15px;">CART</a>	
											</c:if>
											
											<c:if test="${not empty signInUserId}"> <%-- 로그인 되어 있는 경우 --%>
												<input type="submit" value="CART" style="background-color: #1b5033; color: white; margin: 0 15px; border: none; border-radius: 4px; font-size: 13px; padding: 6px 15px;"> 	
											</c:if>												
											
										</form>	
									</div>
									
								
									
										
									<br>
									<hr>
									<div class="row" style="text-align: center;">
										<c:if test="${empty signInUserId}"> <%-- 로그인 되어 있지 않은 경우 --%>		
											<a href="../user/signin" class="button" style="background-color:#1b5033; color: white; margin: 0 auto;  font-size: 16px; padding: 25px 90px; ">바로 구매</a>
										</c:if>
										
										<c:if test="${not empty signInUserId}"> <%-- 로그인 되어 있는 경우 --%>
											<a href="../order/buyDirect?pid=${product.pid}" class="button" style="background-color:#1b5033; color: white; margin: 0 auto;  font-size: 16px; padding: 25px 90px; ">바로 구매</a>
										</c:if>										
									
									<a href="./all" class="button" style="background-color:#1b5033; color: white; margin: 0 auto;  font-size: 16px; padding: 25px 90px;">상품 목록</a>
									
									</div>	
													
								</td> 
							</tr>												
						</table>
					</td>
				</tr>
			
			</table>	
			
					

		</div>
	
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
			
	</body>
</html>