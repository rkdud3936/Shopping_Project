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
         	.payCompletion{
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
		
		<div class="payCompletion" style="border: solid black 1px; width: 400px; margin: 200px auto; ">
				<div style="font-weight: bold; margin: 10px 20px;">
					결제완료
					<a href="../"><span class="material-symbols-outlined" style="float: right; color: black;">close</span></a>
				</div> 
				<hr/>
				
				<div style="text-align: center;">
					<span>[${signInUserId}]님<br> 결제가 완료 되었습니다.</span>
				</div>
				
				<hr/>
				
				
				
				<br>		 
		</div>
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>