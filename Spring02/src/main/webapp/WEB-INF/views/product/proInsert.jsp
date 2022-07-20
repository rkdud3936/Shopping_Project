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
		 <link rel="stylesheet" href="../resources/css/shop/proInsert.css">
	
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
	<body>
		<%@ include file = "../include/mainnav.jsp" %>
		<br>
		<div class="container">
			<br>
			<h4 style="text-align: center;">[상품 등록]</h4> 
			<br>
			<form method="post" style="margin: 30px;">
	  			<div class="row">
	    			<div class="col-25">
	     				<label for="pname">상품명</label>
	    			</div>
	    			<div class="col-75">
	      				<input type="text" id="pname" name="pname" placeholder="상품명을 입력하세요.." required autofocus>
	    			</div>
	  			</div>
	  			<div class="row">
	    			<div class="col-25">
	     		 		<label for="pprice">가격</label>
	    			</div>
	    			<div class="col-75">
	      				<input type="text" id="pprice" name="pprice" placeholder="가격을 입력하세요.." required>
	    			</div>
	  			</div>
	  			
	  			<div class="row">
	    			<div class="col-25">
	     				<label for="pdetail">상세정보</label>
	   			 	</div>
	    			<div class="col-75">
	      				<textarea id="pdetail" name="pdetail" placeholder="상세정보를 입력하세요.." style="height:200px" required></textarea>
	    			</div>
	  			</div>
	  			
	  			<div class="row" >
	  				<div class="col-25">
	  				</div>
	  				<div class="col-75">
	  					<input type="file" id="pimage1" name="pimage1" required/>
	  				</div>			
	  			</div>
	
	  			<div class="row" >
	  				<div class="col-25">
	  				</div>
	  				<div class="col-75">
	  					<input type="file" id="pimage2" name="pimage2" required/>
	  				</div>			
	  			</div>
	  			
	  			<div class="row" >
	  				<div class="col-25">
	  				</div>
	  				<div class="col-75">
	  					<input type="file" id="pimage2" name="pimage3" />
	  				</div>			
	  			</div>
		  			
	  			<br>
	  			
	  			<div>
	    			<input type="submit" value="등록" style="float: right;">
	  			</div>
	  		</form>
		</div>
		
		
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>