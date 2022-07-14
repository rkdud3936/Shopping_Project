<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="https://kit.fontawesome.com/1324c7db76.js" crossorigin="anonymous"></script>
		
		<meta charset="UTF-8">
		
		 <meta name="viewport" content="width=device-width, initial-scale=1" />
         <link rel="stylesheet" 
        	    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
			<title>Brand</title>
		<link rel="stylesheet" href="../resources/css/shop/menubar.css">
		<link rel="stylesheet" href="../resources/css/shop/register1.css">
		
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		
		
		<script src="./resources/js/po.js" defer></script>
		
		<style>
        .valid {
            color: green;
            display: none;
            padding-bottom: 20px;
        }
        .invalid {
            color: red;
            display: none;
        	padding-bottom: 20px;
        }
        </style>
</head>
<body>
	
	<%@ include file = "../include/mainnav.jsp" %>
	
	<div class="registerCont">
		<div class="container">
        
        <h5><span>DREAM</span> 회원가입</h5>
        
        <hr /><br />
        <form action="./register" method="post" >
            <input type="text" id="userid" name="userid" placeholder="아이디"  required style="height:30px; width: 495px" /><br /><br />
            	<div class="valid">멋진 아이디입니다!</div>
                <div class="invalid">이미 사용중인 아이디입니다.</div>
                         
            <input type="password" name="pwd" placeholder="비밀번호"  required style="height:30px; width: 495px" /><br /><br />
            <input type="email"  name="email" placeholder="이메일 주소"  required style="height:30px; width: 495px" /><br />
            
            <p>
            <input type="submit" value="가입하기" id="signup" required style="height:60px; width: 495px" /><br /><br />
            </p>
        </form>
        <hr />
    </div>
    
    
	</div>     

	
 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
        $(document).ready(function () {
        	
        	// userid 아이디를 갖는 HTML 요소(input)에 변화가 생겼을 때 호출될 이벤트 리스너 콜백 함수를 등록. 
        	$('#userid').change(function (event) {
        		// Ajax를 이용해서 아이디 중복 체크
        		var params = { userid: $(this).val() };
        		// $.post(Ajax 요청 주소, 요청 파라미터, 응답 성공일 때 실행될 콜백 함수);
        		$.post('./checkid', params, function (response) {
        			if (response == 'valid') {  // 사용 가능한 아이디(DB에 없는 아이디)인 경우
        				$('.valid').show();  // valid div 보여줌.
        				$('.invalid').hide(); // valid div 없앰(display=none).
        				$('#signup').removeAttr('disabled'); // 버튼 활성화
        			} else {
        				$('.valid').hide(); // valid div 없앰(display=none).
        				$('.invalid').show(); // invalid div 보여줌.
        				$('#signup').attr('disabled', 'true'); // 버튼 비활성화
        			}
        		});
        	});
        	
        });
        </script>
	
</body>
</html>