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
		 <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
		 <link rel="stylesheet" href="../resources/css/shop/menubar.css">
		 <link rel="stylesheet" href="../resources/css/shop/caMain.css">
		 
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		    #cart-delete {
				background-color: rgba(0,0,0,0); 
				border: none;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				cursor: pointer;
			}
			
			table {
   				width:800px; 
    			margin: auto;
			}
			
			th {
				
			}
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
	                        	<td>${cartList.cid}</td>
	                        	<td>
	                        		<a href="../product/proDetail?pid=${cartList.pid}">
	                        		<img src="../resources/imgs/shop/${cartList.pimage1}" style="width: 70px; height: 100px;">
	                        		</a>
	                        	</td>
	                        	<td>${cartList.pname}</td>
	                        	
	                        	<td>${cartList.pprice}</td>
	                        	<td>${cartList.ccount}</td>
	                        	
	                        	<td>${cartList.ccount*cartList.pprice}</td>
	                        	<td>
	                        		<a href="./cartUpdate?cid=${cartList.cid}" class="button"><span class="material-symbols-outlined">edit_square</span></a>
	                        	</td>
	                        	<td>
	                        		<a  href="./cartDelete?cid=${cartList.cid}" class="button"><span class="material-symbols-outlined">delete</span></a>
	                  			</td>
	                            
	                        </tr>
								<c:set var="sum" value="${sum + (cartList.ccount*cartList.pprice)}" />                    
	                    
	                    </c:if>
	                    </c:forEach>
	                    
	                </tbody>
	            </table> 
	        </div>     
	        <hr><br>
	        <div style="text-align: center;">
		    	<div>
		    	<table>
	 				<tr>
	   					<th>
	   						<div style="font-size: 20px;">
	   							총상품금액
	   						</div>
	   						<div style="padding: 5px;">
	   							${sum}원
	   						</div>
	   					</th>
	   					<th>
	    					<div>
	    						<span class="material-symbols-outlined">add</span>
	    					</div>
	    					<div>
	    					</div>
	    				</th>
	    				
	    				<th>
	   						<div style="font-size: 20px;">
	   							배송비
	   						</div>
	   						<div style="padding: 5px;">
	   							2500원
	   						</div>    				
	    				</th>
	    				
	    				<th>
	    					<div style="font-size: 18px; text-align: right; ">
	    						총 주문금액: <span>${sum+2500}</span>원
	    					</div>
	    				</th>
	    				
	    			</tr>
	  
				</table>
				</div>
			</div>
	        <br><hr>
	        
	        
				<input type="button" value="결제하기" id="payment">	
			
			
	  
		</div>
		
	
	
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<script>
	        $(document).ready(function () {
	        	
	        	$('#cart-delete').click(function (event) {
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