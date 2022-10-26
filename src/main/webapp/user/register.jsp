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
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		let state = true;
		
		$("input[type=text]").each(function(index, item){
			if($(this).val()==""){
				alert("값을 입력해주세요.");
				$(this).focus();//커서놓기
				
				state = false;
				
				return false;
				
			}
			
		});
	
		    $.ajax({
	   			url :"../ajax" , //서버요청주소
	   			type:"post", //요청방식(method방식 : get | post | put | delete )
	   			dataType:"text"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
	   			data: $("#join_frm").serialize() , //.serialize()는 폼전송!
	   			success :function(result){
	   				if(result==0){
	   					alert("실패하였습니다.");
	   				}else{
	   					//text내용지우고
	   					$("input[type=text]").val("");
	   					$("span").text("중복결과여부");
	   					
	   					//화면갱신
	   					selectAll();
	   					
	   					$("[name=methodName]").val("insert");
	   				}
	   				
	   			} , //성공했을때 실행할 함수 
	   			error : function(err){  
	   				alert(err+"에러 발생했어요.");
	   			}  //실팽했을때 실행할 함수 
	   		});//ajax끝
		  
	   		
	  
	
	
	
	});

});//끝


</script>
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
					
					<input type="text" placeholder="비밀번호" name="pwd" id="pwd" required>
					<input type="password" placeholder="비밀번호 확인" id="password_ck" name="password_ck" required>				
					<input type="text" placeholder="이름" name="name" id="name" required>
					<span id="name_ck" class="dpn">이름을 입력해주세요.</span>
					<input type="text" placeholder="ex)01012345678(-없이)" name="phone" id="phone" required>
					<span id="phone_ck" class="dpn">연락처를 입력해주세요.</span>
            		<input type="text" class="form-control" id="addr" name="addr" placeholder="경상북도 울릉군 독도" required>
            		<span id="addr_ck" class="youraddr"> 주소를 입력해주세요.
					  
					
				</div>
				
				
			</form>
			
				<form id="join_frm" method="post" action="../front">
					
					<div class="join_sec_title"></div>
						<div class="email_auth">
							<input type="text" placeholder="기입한 아이디 이메일" name="email" id="email" class="email" required>
							<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button>
						</div>
							<input type="text" placeholder="인증번호 입력" id="email_auth_key" required>
							<input type="button" id="btn" value="가입하기" class="join_btn"></button>
				</form>
		</div>
	</div>
</div>
</body>
</html>