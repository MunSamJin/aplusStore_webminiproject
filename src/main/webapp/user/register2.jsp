<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>iLand Multipurpose Landing Page Template</title>
	<link rel="icon" href="${path}/images/favicon.png" type="image/png" sizes="16x16">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="iLand Multipurpose Landing Page Template">
	<meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
	<link href="${path}/hyo_css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${path}/hyo_css/animate.css">
	<!-- Resource style -->
	<link rel="stylesheet" href="${path}/hyo_css/owl.carousel.css">
	<link rel="stylesheet" href="${path}/hyo_css/owl.theme.css">
	<link rel="stylesheet" href="${path}/hyo_css/ionicons.min.css">
	<!-- Resource style -->
	<script src="${path}/join.jsp"></script>

	<script type="text/javascript" src="${path}/js/jquery-3.6.1.min.js"></script>
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

<jsp:include page="../common/header.jsp"/>

<div class="wrapper">



	<div id="pricing" class="pricing-section text-center">
		<div class="container">
			<div class="col-md-12 col-sm-12 nopadding">
				<div class="pricing-intro">
					<h1 class="wow fadeInUp" data-wow-delay="0s">Aplus ID 생성</h1>
				</div>

				<div>
					<div id="container" class="container">
						<div class="content">
							<div class="join_wrap">
								<form id="join_frm" method="post" action="${path}/front">
									<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
									<input type="hidden" name="methodName" value = "insert" />  <!-- 메소드이름 -->
									<input type="hidden"> <!-- id를 지정하고 이메일 관련 $("#아이디(받은변수)").attr(); -->
<%--									<div class="join_title">Aplus ID 생성</div>--%>
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
											<input type="text" placeholder="이메일" name="email" id="email" class="email" required>
										</div>
									</div>
									<button type="submit" id="btn" value="가입" class="join_btn">가입하기</button>
								</form>
							</div>

						</div>
					</div>


				</div>

			</div>
		</div>
	</div>
</div>

<!-- Scroll To Top -->
<div>
	<a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a>
	<!-- Scroll To Top Ends-->
</div>

<jsp:include page="../common/footer.jsp"/>

<!-- Jquery and Js Plugins -->
<script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${path}/js/plugins.js"></script>
<script type="text/javascript" src="${path}/js/menu.js"></script>
<script type="text/javascript" src="${path}/js/custom.js"></script>
<script src="${path}/js/jquery.subscribe.js"></script>
</body>
</html>
