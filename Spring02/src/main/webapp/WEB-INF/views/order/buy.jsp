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
         <link rel="stylesheet" href="../resources/css/shop/footer.css">
         <link rel="stylesheet" href="../resources/css/shop/buy.css">
		 
		 <style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		 </style>
	</head>
	<body>
		<%@ include file = "../include/mainnav.jsp" %>
		
		<div class="container">
			<div class="buyTable" style="text-align: center;" >
	        	<br>
	        	
	        	<h2>주문목록</h2>
	        	
	        	<br>
	       
	        	<table class="table table-hover" style="width: 700px; margin: auto;">
	            	<thead>
	                	<tr>
	                    	<th>카트번호</th>	
	                        <th>이미지</th>
	                        <th>상품명</th>
	                        <th>수량</th>
							<th>가격</th>
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
	                        		<img src="../resources/imgs/shop/${cartList.pimage1}" style="width: 70px; height: 100px;">
	                        	</td>
	                        	<td>${cartList.pname}</td>
	                        	<td>${cartList.ccount}</td>
	                        	<td>${cartList.ccount*cartList.pprice}</td>
	                        	<td>
	                        		<a href="./buyUpdate?cid=${cartList.cid}" class="button"><span class="material-symbols-outlined">edit_square</span></a>
	                        	</td>
	                        	<td>
	                        		<a  href="./buyDelete?cid=${cartList.cid}" class="button"><span class="material-symbols-outlined">delete</span></a>
	                  			</td>
	                            
	                        </tr>
								<c:set var="sum" value="${sum + (cartList.ccount*cartList.pprice)}" />                    
	                    
	                    </c:if>
	                    </c:forEach>
	                    
	                </tbody>
	            </table> 
	        </div>  
	        
	        <br><br> 
	        <div>    		
				<div style="text-align: center;">
					<h2>주문 정보</h2>
				</div>
				<br>
				<div class="info" style="width: 500px; margin: auto;">
					<form>
						<div>
	                    	<label for="name" style="font-weight:bold;">이름</label>
	                        <input type="text" id="name" name="name" placeholder="이름을 입력하시오.." required autofocus/>
	                    </div>
	                    <div class="zip">
	                    	<label for="zip" style="font-weight:bold;">우편번호</label>
	                        <input type="text" id="zip" name="zip" placeholder="검색 버튼을 클릭하세요" />
	                        <button type="button" style="width:60px; height:32px;" onclick="openZipSearch()">검색</button>
	                    </div>
	                    <div>
	                        <label for="addr1" style="font-weight:bold;">-</label>
	                        <input type="text" id="addr1" name="addr1" required readonly/> 
	                        
	                    </div>
	                    <div>
	                        <label for="addr2" style="font-weight:bold;">상세주소</label>
	                        <input type="text" id="addr2" name="addr2" placeholder="상세주소를 입력하세요" required />
	                    </div>
	                    <div>
	                    	<label for="email" style="font-weight:bold;">이메일</label>
	                        <input type="email" id="email" name="email" placeholder="이메일을 입력하세요" required />
	                    </div>
	                    <div>
	                    	<label for="tel" style="font-weight:bold;">전화번호</label>
	                        <input type="text" id="tel" name="tel" placeholder="전화번호를 입력하세요" required autofocus/>
	                    </div>
	                    <div>
	                    	<label for="message" style="font-weight:bold;">배송 메세지</label>
	                        <input type="text" id="message" name="message" placeholder="배송 메세지를 입력하세요" required autofocus/>
	                    </div>    
	                    
					</form>
				</div>			
			
			</div>
			
			<br><br>
			
			<div class="payment" style="text-align: center;">
				<br>
				<h2>결제 수단</h2>
				<br>
				<hr>
				<input type="radio" name="payment" value="a"> 계좌이체
     			<input type="radio" name="payment" value="b"> 무통장 입급
     			<input type="radio" name="payment" value="c"> 핸드폰 결제
     			<input type="radio" name="payment" value="d"> 카드 결제
				<hr>
			</div>
			
	        <div style="text-align: center;">
		    	<table style="width: 700px; margin: auto; border-bottom: solid lightgrey 10px; border-top: solid lightgrey 10px;">
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
			
			<div class="endBtn">
				<a href="./payEnd"><button type="button" class="btn btn-dark">결제하기</button></a>
				<a href="../cart/cartMain"><button type="button" class="btn btn-dark">돌아가기</button></a>				
				
			</div>
			
		
		</div>
		
		
	    <%@ include file = "../include/footer.jsp" %>
	 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		function openZipSearch() {
			new daum.Postcode({
				oncomplete: function(data) {
					$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
					$('[name=addr1]').val(data.address);
					$('[name=addr2]').val(data.buildingName);
				}
			}).open();
		}
		</script>
	</body>
</html>