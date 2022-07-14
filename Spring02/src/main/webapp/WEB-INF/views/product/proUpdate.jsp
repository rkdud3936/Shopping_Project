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
		<nav>
        	<ul class=nav_update>	
        		<li><a id="menu-delete" href="./proDelete?pid=${product.pid}">삭제</a></li>
        		<li><a href="./manager">상품관리목록</a></li>
        	</ul>	
    	</nav>			
			
		 <form  action="./proUpdate" method="post">
		 	<div style="display: none;">
            	<input type="number" id="pid" value="${product.pid}"  readonly/>
            </div>
  			<div class="row">
    			<div class="col-25">
     				<label for="pname">상품명</label>
    			</div>
    			<div class="col-75">
      				<input type="text" id="pname" name="pname" value="${product.pname}" required autofocus>
    			</div>
  			</div>
  			<div class="row">
    			<div class="col-25">
     		 		<label for="pprice">가격</label>
    			</div>
    			<div class="col-75">
      				<input type="text" id="pprice" name="pprice" value="${product.pprice}" required>
    			</div>
  			</div>
  			
  			<div class="row">
    			<div class="col-25">
     				<label for="pdetail">상세정보</label>
   			 	</div>
    			<div class="col-75">
      				<textarea id="pdetail" name="pdetail" style="height:200px" required>${product.pdetail}
      				</textarea>
    			</div>
  			</div>
  			
  			<div class="row" >
  				<div class="col-25">
  				</div>
  				<div class="col-75">
  					<input type="file" id="pimage1" name="pimage1" value="${product.pimage1}" required/>
  				</div>			
  			</div>

  			<div class="row" >
  				<div class="col-25">
  				</div>
  				<div class="col-75">
  					<input type="file" id="pimage2" name="pimage2" value="${product.pimage2}" />
  				</div>			
  			</div>

  			<div class="row" >
  				<div class="col-25">
  				</div>
  				<div class="col-75">
  					<input type="file" id="pimage3" name="pimage3" value="${product.pimage3}" />
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
		<script>
        $(document).ready(function () {
        	
        	$('#menu-delete').click(function (event) {
        		event.preventDefault(); // 링크를 클릭했을 때의 기본 동작인 요청 보내기를 하지 않음.
        		var result = confirm('정말 삭제할까요?');
        		if (result) { // 사용자가 YES를 선택했을 때
        			location = $(this).attr('href'); // 원래 이동하려고 했던 요청 주소로 요청 보내기.
        		}
        	});
        	
        });
    </script>
</body>
</html>