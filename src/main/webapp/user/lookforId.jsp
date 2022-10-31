<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/join.css">
</head>
<body>
 <div id="container" class="container">
	<div class="content">
		<div class="join_wrap">
 			<form name=pleaselookformyId class="lookforId-form" method="post" action="${path}/front">
               		<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
					<input type="hidden" name="methodName" value = "lookforId" />  <!-- 메소드이름 -->
				<div></div><p>
				<div class="join_title">아래에 정보를 입력하여 Aplus ID를 찾으십시오.</div><br>
				<div class="join_box">
					<input type="text"  name="emailId" id="emailId" placeholder="이메일" required><p>
					<span id="emailid_ck" class="dpn">가입하신 이메일을 입력해주세요.</span>
					
					<input type="text"  name="phone" id="phone" placeholder="연락처" required>
					<span id="name_ck" class="dpn">연락처를 입력해주세요.</span>
					
				 </div>
					<button type="submit" id="btn" value="lookforPwd" class="join_btn">아이디 찾기</button>
			</form>
		</div>

	</div>
</div>


</body>
</html>

