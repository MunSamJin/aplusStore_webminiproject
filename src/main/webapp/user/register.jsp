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
	
	//가입 관련
	   $("#btn").click(function(){
		   let state=true; //가입 또는 수정을 할때 유효성체크를 하고 ajax를 실행해도 되는지 여부를 판단는 변수(true면 ajax한다, false이면 ajax안한다.) 
		   //유효성체크필요!(값 존재유무)
		   $("input[type=text]").each(function(index, item){ //item은 input element이다.
			   if($(this).val()==""){
				   alert("값을 입력해주세요.");
				   $(this).focus();//커서놓기
				   
				   state=false;
				   return false;//return false의 의미는 each함수를 빠져나가라.
			   }
		   });	
	
	
	   });
	
		//이메일 인증
	   $("#email_auth_btn").click(function(){	     	 
	    	 var email = $('#email').val();
	    	 
	    	 if(email == ''){
	    	 	alert("이메일을 입력해주세요.");
	    	 	return false;
	    	 }
	    	 
	    	 int 
	    	 
	    	 $.ajax({
				type : "POST",
				url : "/ajax",
				dataType:"text",
				data : {key:"user", methodName:"checkEmail"},
				success: function(num){
					if(num != 0){ //여기 있는 mailNum을 어떻게 form에 넣어서 다시 front로 가져갈까?
					alert("인증번호가 발송되었습니다.");
					
					
					//location.href = "${path}/front?key=user&methodName=insert&modelName=" + modelName;
					}else{
	   					//text내용지우고
	   					$("input[type=text]").val("");
	   					$("span").text("이미 사용중인 아이디입니다.");
	   					
	   					$("[name=methodName]").val("insert");
					}
				
				},
				error: function(failmessage){
					alert("메일 발송에 실패했습니다.");
				}
			}); 
		});
	
});//끝


</script>

</head>
<body>
<div id="container" class="container">
	<div class="content">
		<div class="join_wrap">
			<form id="join_frm" method="post" action="${path}/front">
			<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
			<input type="hidden" name="methodName" value = "insert" />  <!-- 메소드이름 -->
			<input type="hidden"> <!-- id를 지정하고 이메일 관련 $("#아이디(받은변수)").attr(); -->
				<div class="join_title">Aplus ID 생성</div>
				<div class="join_box">
					<input type="text"  name="emailId" id="emailId" style="margin: 0;" placeholder="아이디(you@example.com)" required>
					<span id="id_ck" class="dpn">이미 사용중인 아이디입니다.</span>
					

					<input type="password" placeholder="비밀번호" name="pwd" id="pwd" required>

					<input type="password" placeholder="비밀번호 확인" id="password_ck" name="password_ck" required>				
					<input type="text" placeholder="이름" name="name" id="name" required>
					<span id="name_ck" class="dpn">이름을 입력해주세요.</span>
					<input type="text" placeholder="ex)01012345678(-없이)" name="phone" id="phone" required>
					<span id="phone_ck" class="dpn">연락처를 입력해주세요.</span>
            		<input type="text" class="form-control" id="addr" name="addr" placeholder="경상북도 울릉군 독도" required>
            		<span id="addr_ck" class="youraddr"> 주소를 입력해주세요.</span>

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