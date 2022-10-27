<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="${path}/join.jsp"></script>
<link rel="stylesheet" href="${path}/css/join.css">
	<title>A+ ID 생성 - Aplus(Kosta)</title>
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>

</head>
<body>
<div id="container" class="container">
	<div class="content">
		<div class="join_wrap">
			<form id="join_frm" method="post" action="../front">
			<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
			<input type="hidden" name="methodName" value = "insert" />  <!-- 메소드이름 -->
				<div class="join_title">Aplus ID 생성</div>
				<div class="join_box">
					<input type="text"  name="id" id="id" style="margin: 0;" placeholder="아이디(you@example.com)" required>
					<span id="id_ck" class="dpn">이미 사용중인 아이디입니다.</span>
					
					<input type="password" placeholder="비밀번호" name="pwd" id="pwd" required>
					<input type="password" placeholder="비밀번호 확인" id="password_ck" name="password_ck" required>				
					<input type="text" placeholder="이름" name="name" id="name" required>
					<span id="name_ck" class="dpn">이름을 입력해주세요.</span>
					<input type="text" placeholder="ex)01012345678(-없이)" name="phone" id="phone" required>
					<span id="phone_ck" class="dpn">연락처를 입력해주세요.</span>
            		<input type="text" class="form-control" id="addr" name="addr" placeholder="경상북도 울릉군 독도" required>
            		<span id="addr_ck" class="youraddr"> 주소를 입력해주세요.
				 <div class="email_auth">
					<input type="text" placeholder="기입한 아이디 이메일" name="email" id="email" class="email" required>
					<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button>
			     </div>
					<input type="text" placeholder="인증번호 입력" id="email_auth_key" required>
				 </div>
					<button type="submit" id="btn" value="가입" class="join_btn">가입하기</button>
			</form>
		</div>
		
	</div>
</div>
</body>
</html>