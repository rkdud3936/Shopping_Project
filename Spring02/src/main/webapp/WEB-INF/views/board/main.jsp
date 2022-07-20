<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 반복할때 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 포맷변경시 사용 -->
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
		<link rel="stylesheet" href="../resources/css/shop/board1.css">
		<link rel="stylesheet" href="../resources/css/shop/footer.css">
		
		<style>
			.container a { color: black;}
		    .container a:hover { color: black;}
		</style>
	</head> 

	<body>
		<%@ include file = "../include/mainnav.jsp" %>

	    
		<div class="container">
			
	       <div>
	       		 <img class="img" src="../resources/imgs/shop/web04.jpg" width="100%" height="200"> 
	       </div>
	       <hr> 
	        <div class="flex-container">
	        	<div class="leftselect text-center">
	        		<h3>공지사항</h3>
	       		</div>
	        	<div class="midselect text-right">
	        		<h2>DREAM</h2>  
	        	</div>
	        	<div  class="rightselect">
	                <form class="select form-inline" action="./search" method="get" >
	                    <select name="type" style="height:40px; width: 100px; margin: 1px;"   >
	                        <option value="1">제목</option>
	                        <option value="2">내용</option>
	                        <option value="3">제목+내용</option> 
	                    </select>
	                    <input type="text" name="keyword" placeholder="검색어 입력" required style="height:40px; width: 300px; margin: 1px;"/>
	                    <input type="submit" value="검색" class="butt" style="height:40px; width: 78px; margin: 1px;"/> 
	                </form>        		
	        	</div>
			</div>
			<br><br>
	                
	        
	        <nav class="mainmenu"> <!-- 메뉴 -->
	        	<ul>
	        		<c:if test="${signInUserId == '관리자'}">
	        		<li>
	        			<a href="./insert">새 글 작성</a>
	        		</li> 
	        		</c:if>
	        	</ul>
	        </nav> 
	        
	        
	        <div class="container mt-3">
	                <table class="table table-hover">
	                    <thead>
	                        <tr>
	                            <th>글 번호</th>
	                            <th>글 제목</th>
	                            <th>작성자</th>
	                            <th>수정 시간</th>
	                            <th>조회수</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <c:forEach var="board" items="${boardList}">
	                            <tr>
	                                <td>${board.bno}</td>
	                                <td>
	                                    <a href="./detail?bno=${board.bno}">${board.title}</a>
	                                    <span>[${board.reply_cnt}]</span>
	                                </td>
	                                <td>${board.userid}</td>
	                                <td>
	                                    <fmt:formatDate value="${board.reg_date}" pattern="yyyy/MM/dd HH:mm"/>
	                                </td>
	                                <td>${board.view_cnt}</td>
	                            </tr>
	                        </c:forEach>
	                    </tbody>
	                </table>
	            </div>           
		</div>
		
		<%@ include file = "../include/footer.jsp" %>
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
	</body>
</html>