<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aplus ID 복구 - Aplus(Kosta)</title>
<link rel="stylesheet" href="${path}/css/join.css">
</head>
<body>

  
<div id="container" class="container">
	<div class="content">
		<div class="join_wrap">
 			<form name=pleaselookformyPwd class="lookforPwd-form" method="post" action="${path}/front">
               		<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
					<input type="hidden" name="methodName" value = "lookforPwd" />  <!-- 메소드이름 -->
				<div></div><p>
				<div class="join_title">로그인이 안 되나요?</div><br>
						<h5>시작하려면 Apple ID를 입력하십시오.</h5>	
				<div class="join_box">
					<input type="text"  name="emailId" id="emailId" placeholder="이메일" required><p>
					<span id="emailid_ck" class="dpn">가입하신 이메일을 입력해주세요.</span>
					
					<input type="text"  name="name" id="name" placeholder="이름" required>
					<span id="name_ck" class="dpn">이름을 입력해주세요.</span>
					
				 </div>
				     	<h5>Apple ID를 잊어버린 경우 <a href="lookforId.jsp">아이디 찾기</a></h5>
					<button type="submit" id="btn" value="lookforPwd" class="join_btn">임시 비밀번호 받기</button>
			</form>
		</div>

	</div>
</div>

</body>
</html>

