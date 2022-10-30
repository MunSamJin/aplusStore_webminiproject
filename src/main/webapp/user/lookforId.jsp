<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 <form name=pleaselookformyId class="lookfor-form" method="post" action="${path}/front">
               		<input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
					<input type="hidden" name="methodName" value = "lookforId" />  <!-- 메소드이름 -->
<table>
    <tr>
      <td>이메일 :</td>
      <td><input type="text" name="emailId" id="emailId" placeholder="email" required></td>
    </tr>
    <tr>
      <td>연락처 :</td>
      <td><input type="text" name="phone" id="phone" required></td>
    </tr>
    <tr>
      <td colspan="2">
        <button type="submit" id="lookforId" onclick="lookforId()"><span>아이디 찾기</span></button>
      </td>
    </tr>
</table>
<a href="login.jsp"><h3> 로그인 하러 가기</h3></a><p>
</form>
  


</body>
</html>

