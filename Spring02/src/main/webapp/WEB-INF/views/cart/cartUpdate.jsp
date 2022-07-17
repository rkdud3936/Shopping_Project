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
</head>
<body>
	
	<div style="border: solid black 1px; width: 500px; margin: 20px auto; ">
			<div style="font-weight: bold; margin: 10px 20px;">주문수정</div> 
			<hr/>
			<table>
				<tr>
					<td>
						<img src="../resources/imgs/shop/${cartList.pimage1}" width="150" height="150">
					</td>
					<td>
						<table>
							<tr align="center">
								<td>상품명</td>
								<td>${cartList.pname}</td> 
							</tr>
							<tr align="center">
								<td>가격</td>
								<td>${cartList.pprice}원</td> 
							</tr>
							<tr align="center">
								<td>갯수</td>
								<td>${cartList.ccount}개</td> 
							</tr>
													
							<tr align="center">
								<td colspan="2">
									<form method="post">
										<input type="hidden" name="cid" value="${cartList.pid}">
										<input type="hidden" name="userid" value="${signInUserId}">
										
										<select name="ccount">
										<c:forEach begin="1" end="10" var="i">
											<option value="${i}">${i} 
										</c:forEach>
									</select>개
									<input type="submit" value="수정"> 
										
									</form>
			
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