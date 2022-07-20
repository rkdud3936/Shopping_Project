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
		 <link rel="stylesheet" href="../resources/css/shop/proAll.css">
		 <link rel="stylesheet" href="../resources/css/shop/footer.css">
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
	<body> 
		<%@ include file = "../include/mainnav.jsp" %>
	
		<div class="container">
			<br/>
			<div class="fimage">
	     	   <img src="../resources/imgs/shop/pr22.jpg" alt="">
	    	</div> 
	
			<br/>
			
			<section id="tabs">
				<div class="container">
					<h6 class="section-title h1">EARRING</h6>
					<div class="row">
						<div class="col-xs-12 ">
							<nav>
								<div class="nav nav-tabs " id="nav-tab" role="tablist">
									<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-date" role="tab" aria-controls="nav-home" aria-selected="true">최신등록순</a>
									<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-price" role="tab" aria-controls="nav-profile" aria-selected="false">낮은가격순</a>	
								</div>
							</nav>
							<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-date" role="tabpanel" aria-labelledby="nav-home-tab">
									<div>
										<c:forEach var="product" items="${productEarringList}">
											<div class="gallery">
	  											<div class="images">
	  												<a href="./proDetail?pid=${product.pid}">
	   													<img src="../resources/imgs/shop/${product.pimage1}"  style="width: 255px; height: 300px;" >
	 												</a>
	   		 									</div>
	   		 									<div class="pro">
	   		 										<div style="color: white;">${product.pid}</div>
	   		 										<div class="proName">${product.pname}</div>
	   		 										<div class="proPrice">${product.pprice}원</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>					
						
								<div class="tab-pane fade" id="nav-price" role="tabpanel" aria-labelledby="nav-profile-tab">
									<div>
										<c:forEach var="product" items="${productEarringListPrice}">
											<div class="gallery">
	  											<div class="images">
	  												<a href="./proDetail?pid=${product.pid}">
	   													<img src="../resources/imgs/shop/${product.pimage1}"  style="width: 255px; height: 300px;" >
	 												</a>
	   		 									</div>
	   		 									<div class="pro">
							   		 				<div style="color: white;">${product.pid}</div>
							   		 				<div class="proName">${product.pname}</div>
							   		 				<div class="proPrice">${product.pprice}원</div>
												</div>
											</div>
										</c:forEach>
									</div>	
								</div>
							</div>
						</div>
					</div>
				</div> 
			</section>        		
		</div>
		
		<%@ include file = "../include/footer.jsp" %>
		
	
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>