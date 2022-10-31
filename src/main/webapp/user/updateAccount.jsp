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
		<div class="join_wrap" ">
			<form id="join_frm" method="post" action="${path}/front">
			<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
			<input type="hidden" name="methodName" value = "update" />  <!-- 메소드이름 -->
			<input type="hidden"> <!-- id를 지정하고 이메일 관련 $("#아이디(받은변수)").attr(); -->
				<div class="join_title">수정할 정보를 입력하세요.</div>
				<div class="join_box" style="width: 95%">
					<input type="password" placeholder="비밀번호" name="pwd" id="pwd" required>
					<input type="text" class="form-control" id="phone" name="phone" placeholder="연락처" required>
					<input type="text" class="form-control" id="addr" name="addr" placeholder="주소" required>
            		<span id="addr_ck" class="youraddr"> 주소를 입력해주세요.</span>
					

				 </div>
					<button type="submit" id="btn" value="저장" class="join_btn">저장하기</button>
					<button type ="reset" class="join_btn">취소</button>
			</form>
		</div>

	</div>



</body>
</html>