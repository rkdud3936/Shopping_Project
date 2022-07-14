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
	
	<div class="container">
				 <form>
		 	<div style="display: none;">
            	<input type="number" id="pid" value="${product.pid}"  readonly/>
            </div>
  			<div class="row">
    			<div class="col-25">
     				<label for="pname">상품명</label>
    			</div>
    			<div class="col-75">
      				<input type="text" id="pname" name="pname" value="${product.pname}" required autofocus  readonly>
    			</div>
  			</div>
  			<div class="row">
    			<div class="col-25">
     		 		<label for="pprice">가격</label>
    			</div>
    			<div class="col-75">
      				<input type="text" id="pprice" name="pprice" value="${product.pprice}" required  readonly>
    			</div>
  			</div>
  			
  			<div class="row">
    			<div class="col-25">
     				<label for="pdetail">상세정보</label>
   			 	</div>
    			<div class="col-75">
      				<textarea id="pdetail" name="pdetail" style="height:200px" required  readonly>${product.pdetail}
      				</textarea>
    			</div>
  			</div>
  			
  			<div class="row" >
  				<img src="../resources/imgs/shop/${product.pimage1}" style="width: 70px; height: 100px;">	
  			</div>

  			<div class="row" >
  				<img src="../resources/imgs/shop/${product.pimage2}" style="width: 70px; height: 100px;">			
  			</div>

  			
  			
  		</form>
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