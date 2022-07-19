<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		 <meta name="viewport" content="width=device-width, initial-scale=1" />
         <link rel="stylesheet" 
        	    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
         <style>
         	body{
         	background-color: #909090;
         	}
         	.updatecon{
         	background-color: white;
         	}
         	input[type=submit] {
			  background-color: #21633f;
			  color: white;
			  padding: 6px 10px;
			  margin: 2px;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer;
   
}
         </style>	    
</head>
	<body>
		
		<div class="updatecon" style="border: solid black 1px; width: 400px; margin: 20px auto; ">
				<div style="font-weight: bold; margin: 10px 20px;">
					주문수정
					<a href="./cartMain"><span class="material-symbols-outlined" style="float: right; color: black;">close</span></a>
				</div> 
				<hr/>
				
				<div style="text-align: center;">
					<img src="../resources/imgs/shop/${cartList.pimage1}" width="315px" height="315px" >
				</div>
				<hr/>
				<div style="text-align: center;">
					${cartList.pname} <br>
					${cartList.pprice}원 <br>
					갯수: ${cartList.ccount}개 
				</div>
				
				<div style="text-align: center;">
					<span class="material-symbols-outlined" >arrow_downward</span>
				</div>
				
				<div style="text-align: center;">
					<form method="post">
						<input type="hidden" name="cid" value="${cartList.pid}">
						<input type="hidden" name="userid" value="${signInUserId}">
											
						<select name="ccount">
							<c:forEach begin="1" end="10" var="i">
							<option value="${i}">${i} 
							</c:forEach>
						</select>개
						<input type="submit" value="수정" > 					
					</form>				
				</div>
				<br>		 
		</div>
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>