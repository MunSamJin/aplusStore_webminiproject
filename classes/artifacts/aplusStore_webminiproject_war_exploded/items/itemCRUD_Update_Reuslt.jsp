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
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(function () {
            $(document).on("click", "button[name=close]", function () {

                window.close();

            });
        });

    </script>
    <style>
        .find-btn{
            text-align: center;
        }
        .find-btn1{
            display :inline-block;
        }
    </style>
</head>
<body>


    <div class="find-btn">
        <img src="${path}/images/wink.gif" width="300px">
        <h1>수정 완료 되었습니다.</h1>
        <button name="close" class="btn btn-navy navbar-btn find-btn1">창닫기</button>
    </div>
</body>
</html>
