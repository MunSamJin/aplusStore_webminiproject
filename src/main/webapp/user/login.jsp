<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aplus ID 생성 - Aplus(kosta)</title>

</head>
<body>

<div class="jumbotron">
<h1>더욱 빠르게 결제하시려면 로그인하세요.</h1>
<p></p>
<p>
<h2 tabindex="-1" class="si-container-title tk-label  "> Aplus Store에 로그인하세요	</h2>
</p>
</div>
              <!-- Sign In Form -->
           	<c:choose>
				<c:when test="${empty emailId}">
				<form class="form-horizontal" method="post" action="../front">
               		<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
					<input type="hidden" name="methodName" value = "login" />  <!-- 메소드이름 -->
               
                <div class="form-floating mb-3">
                  <input type="email" class="form-control" id="userId" name="userId" placeholder="name@example.com">
                  <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating mb-3">
                  <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
                  <label for="floatingPassword">Password</label>
                </div>

                <div class="form-check mb-3">
                  <input class="form-check-input" type="checkbox" value="" id="rememberIdCheck" name="rememberIdCheck">
                  <label class="form-check-label" for="rememberPasswordCheck">
                    아이디 저장
                  </label>
                </div>

                <div class="d-grid">
                  <button class="btn btn-default">Cancel</button>
                  <button class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" type="submit">Sign in</button><p>
                  
                  <div>
						<span class="aplaplussa">ID가 없으세요? →</span>
						<a id="create-id-aplus" class="idid-forgot" href="register.jsp" target="_blank">지금 만들어보세요.</a><p>
				  </div>
                  
                  <div class="text-center">
                    <a class="small" href="#">Aplus ID 또는 암호를 잊으셨습니까</a>
                  </div>
                </div>

              </form>
  	</c:when>
</c:choose>
</body>
</html>