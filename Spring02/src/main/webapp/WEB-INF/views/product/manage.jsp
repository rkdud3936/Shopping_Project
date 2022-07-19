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
		 <link rel="stylesheet" href="../resources/css/shop/proManage.css">
		 
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
	<body>
		<%@ include file = "../include/mainnav.jsp" %> 
		
		<div class="container">
			<a href="./proInsert" style="float: right;">[제품 등록]</a>
	      	<div style="text-align: center; padding: 20px;"><h2>PRODUCT LIST [관리자용]</h2></div>
	 		<div class="proTable">
	        	<table class="table table-hover">
	            	<thead>
	                	<tr>
	                    	<th>번호</th>
	                        <th>상품명</th>
	                        <th>가격</th>
	                        <th>대표이미지</th>
	                        <th>등록일</th>
	                        <th>상세정보</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach var="product" items="${productAllList}">
	                    	<tr>
	                        	<td>${product.pid}</td>
	                            <td>
	                            	<a href="./proUpdate?pid=${product.pid}">${product.pname}</a>
	                            </td>
	                            <td>${product.pprice}</td>
	                            <td>
	                            	<img src="../resources/imgs/shop/${product.pimage1}" style="width: 70px; height: 100px;">
	                            </td>
	                            <td>
	                            	<fmt:formatDate value="${product.prdate}" pattern="yyyy/MM/dd HH:mm"/>
	                            </td>
	                            <td>${product.pdetail}</td>
	                        </tr>
	                    </c:forEach>
	                </tbody>
	            </table> 
	        </div>        
	        
	        	
		</div>
	
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>