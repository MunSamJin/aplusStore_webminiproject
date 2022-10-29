<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제품 수정하기</title>
    <style type="text/css">
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script type="text/javascript">

        $(function () {
            $(document).on("click", "button[name=cancel]", function () {

                window.close();

            });


            <%--$(document).on("click", "button[name=update]", function () {--%>
            <%--    update();--%>

            <%--});--%>

            <%--function update(){--%>
            <%--    $.ajax({--%>
            <%--        url: "${path}/ajax", //서버요청주소--%>
            <%--        type: "post", //요청방식(method방식 : get | post | put | delete )--%>
            <%--        dataType: "text", //서버가 보내온 데이터(응답)타입(text | html | xml | json )--%>
            <%--        data: $("#updateForm").serialize(), //.serialize()는 폼전송!--%>
            <%--        success: function (result) {--%>
            <%--            if (result == 0) {--%>
            <%--                alert("실패하였습니다.");--%>
            <%--                window.close();--%>
            <%--            } else {--%>
            <%--                alert("수정 완료 하였습니다.")--%>
            <%--                window.close();--%>

            <%--            }--%>

            <%--        }, //성공했을때 실행할 함수--%>
            <%--        error: function (err) {--%>
            <%--            alert(err + "에러 발생했어요.");--%>
            <%--        }  //실팽했을때 실행할 함수--%>
            <%--    });//ajax끝--%>
            <%--}--%>
        });


    </script>
</head>
<body>

<form id="updateForm" action="${path}/front?key=item&methodName=updateItem" method="post">
<form>
    <table>
        <tr>
            <th>
                모델번호
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelNum}" name="modelNum" readonly>
            </td>
        </tr>
        <tr>
            <th>
                카테고리
            </th>
            <td>
                <select name="category" id="category">
                    <option disabled selected>카테고리</option>
                    <option value="airpods">airpods</option>
                    <option value="accessory">accessory</option>
                    <option value="watch">watch</option>
                    <option value="iphone">iphone</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                모델이름
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelName}" name="modelName">
            </td>
        </tr>
        <tr>
            <th>모델가격</th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelPrice}" name="modelPrice">
            </td>
        </tr>
        <tr>
            <th>
                모델옵션<br>
                (아이폰 - 용량 / 워치 - 줄길이)
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelOption}" name="modelOption">
            </td>
        </tr>
        <tr>
            <th>
                모델색상
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelColor}" name="modelColor">
            </td>
        </tr>
        <tr>
            <th>
                재고
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelStock}" name="modelStock">
            </td>
        </tr>
        <tr>
            <th>
                GPS or Cellular(워치)
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelGPS}" name="modelGPS">
            </td>
        </tr>
        <tr>
            <th>
                등록일
            </th>
            <td>
                <input type="text" value="${requestScope.itemDTO.modelRegDate}" name="modelRegDate">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="수정하기">
                <button name="cancel">취소하기</button>
                <input type="hidden" name="key" value="item">
                <input type="hidden" name="methodName" value="updateItem">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
