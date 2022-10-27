<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>iLand Multipurpose Landing Page Template</title>
    <link rel="icon" href="${path}/images/favicon.png" type="image/png" sizes="16x16">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iLand Multipurpose Landing Page Template">
    <meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
    <link href="${path}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" href="${path}/css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="${path}/css/owl.carousel.css">
    <link rel="stylesheet" href="${path}/css/owl.theme.css">
    <link rel="stylesheet" href="${path}/css/ionicons.min.css">

    <!-- Resource style -->
    <link href="${path}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <style>
        fieldset {
            border: 0;
        }

        label {
            display: block;
            margin: 30px 0 0 0;
        }

        .overflow {
            height: 200px;
        }
    </style>

    <!-- Jquery and Js Plugins -->
    <script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="${path}/js/plugins.js"></script>
    <script type="text/javascript" src="${path}/js/menu.js"></script>
    <script type="text/javascript" src="${path}/js/custom.js"></script>
    <script src="${path}/js/jquery.subscribe.js"></script>
    <script type="text/javascript" src="${path}/js/jquery-3.6.1.min.js"></script>

    <style type="text/css">
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {background-color: coral;}
    </style>
    <script type="text/javascript">
        $(function(){

            //전체검색
            function getOrderList(){
                $.ajax({
                    url :"../ajax" , //서버요청주소
                    type:"post", //요청방식(method방식 : get | post | put | delete )
                    dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
                    data: {key:"q" , methodName : "selectAllByiphone"}, //서버에게 보낼 데이터정보(parameter정보)
                    success :function(arr){
                        let str="";
                        $.each(arr, function(index, item){
                            str+=`<tr>`;
                            str+=`<td><a href='#'>${"${item.qSubject}"}</a></td>`;
                            str+=`<td>${"${item.eMail}"}</td>`;
                            str+=`<td>${"${item.qDate}"}</td>`;
                            str+=`<td>${"${item.qHits}"}</td>`;
                            str+=`</tr>`;
                        });

                        $("#listTable tr:gt(0)").remove();
                        $("#listTable tr:eq(0)").after(str);

                    } , //성공했을때 실행할 함수
                    error : function(err){
                        alert(err+"에러 발생했어요.");
                    }  //실패했을때 실행할 함수
                });//ajax끝
            }//getOrderList 함수끝

            getOrderList();
        });

    </script>
</head>

<body>


<jsp:include page="../common/header.jsp"/>
<!-- /.navbar-collapse -->
</div>


<!-- /.container-fluid -->
<div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
        <div class="container nopadding">
            <div class="col-md-5"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
                                       src="../images/iPhone_qna.png" alt="App"/></div>
            <div class="col-md-7">
                <div class="hero-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0.1s">iPhone</h1>
                    <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
                        <form class="subscribe-form wow zoomIn" action="php/subscribe.php" method="post" name="query"
                              >
                            <input id="query" type="text" name="query" placeholder="검색 또는 질문하기" autocomplete="off">
                            <input class="submit-button" type="submit" value="Subscribe" name="send" id="subsubmit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="navbar-header"> <!-- 홈페이지의 로고 -->
        <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
            <span class="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>

    <div class="container">
        <div class="row">
            <table class="table table-stripped" id="listTable">
                <tr>
                    <th style="background-color: #eeeeee; text-align: center; width: 50%;">제목</th>
                    <th style="background-color: #eeeeee; text-align: center; width: 20%;">질문자</th>
                    <th style="background-color: #eeeeee; text-align: center; width: 20%;">작성일</th>
                    <th style="background-color: #eeeeee; text-align: center; width: 10%">조회수</th>
                </tr>


            </table>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp"/>
</div>

</body>
</html>
