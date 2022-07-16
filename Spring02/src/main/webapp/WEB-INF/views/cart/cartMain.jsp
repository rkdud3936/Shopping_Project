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
		 
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
<body>
	<%@ include file = "../include/mainnav.jsp" %>
	
	<div class="container">
		<div class="cartTable">
        	<table class="table table-hover">
            	<thead>
                	<tr>
                    	<th>카트번호</th>
                        <th>이미지</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>수량</th>
						<th>갯수*가격</th>
                        <th>수정</th>
                        <th>삭제</th>
                    </tr>
                </thead>
                <tbody>
                	
                	<c:set var="sum" value="0" />
                	<c:forEach var="cartList" items="${cartList}">
                    <c:if test="${cartList.userid == signInUserId}">
                    	<tr>
                        	<td>${cartList.pid}</td>
                        	<td>
                        		<img src="../resources/imgs/shop/${cartList.pimage1}" style="width: 70px; height: 100px;">
                        	</td>
                        	<td>${cartList.pname}</td>
                        	<td>${cartList.pprice}</td>
                        	<td>${cartList.ccount}</td>
                        	
                        	<td>${cartList.ccount*cartList.pprice}</td>
                        	<td>수정</td>
                        	
                        	<td>삭제</td>
                            
                        </tr>
							<c:set var="sum" value="${sum + (cartList.ccount*cartList.pprice)}" />                    
                    
                    </c:if>
                    </c:forEach>
                    
                </tbody>
            </table> 
        </div>     
        
		<div class="total">
			총 합계: ${sum}원
			<input type="button" value="결제하기" id="payment">	
		</div>   
		    
	</div>

 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		
	</script>
</body>
</html>