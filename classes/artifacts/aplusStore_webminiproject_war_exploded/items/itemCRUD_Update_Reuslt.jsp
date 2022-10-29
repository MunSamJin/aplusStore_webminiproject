<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2022/10/29
  Time: 7:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수정완료 되었습니다.</title>
    <script type="text/javascript">
        $(document).on("click", "button[name=close]", function () {
            
            window.close();

        });
    </script>
</head>
<body>
    <img src="${path}/images/wink.png" width="300px">
    <h1>수정 완료 되었습니다.</h1>
    <button name="close">창닫기</button>
</body>
</html>
