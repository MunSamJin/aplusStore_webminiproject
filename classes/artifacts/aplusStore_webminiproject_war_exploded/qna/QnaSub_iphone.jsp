<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>A+ Store</title>
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

        tr:hover {background-color: lightcyan;}
        
        fieldset {border: 0;}
        .overflow {height: 200px;}
        .form .hero-section {background: #fff;}
        
        label {
            display: block;
            margin: 30px 0 0 0;
        }
        
        input[type="text"], textarea, textarea.form-control {background: #fff;}
        input[type="text"], textarea, textarea.form-control {padding: 0 70px 0 20px; height: 42px;}
    </style>
    <script type="text/javascript">
        $(function(){

            //????????????
            function selectAll(){
                $.ajax({
                    url :"../ajax" , //??????????????????
                    type:"post", //????????????(method?????? : get | post | put | delete )
                    dataType:"json"  , //????????? ????????? ?????????(??????)??????(text | html | xml | json )
                    data: {key:"q" , methodName : "selectAllByiphone"}, //???????????? ?????? ???????????????(parameter??????)
                    success :function(arr){
                        let str="";
                        $.each(arr, function(index, item){
                            str+=`<tr>`;
                            str+=`<td><a href='../front?key=q&methodName=readQuestion&qNum=${"${item.qNum}"}'>${"${item.qSubject}"}</a></td>`;
                            str+=`<td>${"${item.eMail}"}</td>`;
                            str+=`<td>${"${item.qDate}"}</td>`;
                            str+=`<td>${"${item.qHits}"}</td>`;
                            str+=`<td>${"${item.qHits}"}</td>`;
                            str+=`</tr>`;
                        });

                        $("#listTable tr:gt(0)").remove();
                        $("#listTable tr:eq(0)").after(str);

                    } , //??????????????? ????????? ??????
                    error : function(err){
                        alert(err+"?????? ???????????????.");
                    }  //??????????????? ????????? ??????
                });//ajax???
            }

            selectAll();
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
                            <input id="query" type="text" name="query" placeholder="??????" autocomplete="off">
                            <input class="submit-button" type="submit" value="search" name="send" id="subsubmit">
                            
                            <a href="../qna/QnaWrite.jsp"><input class="submit-button" type="button" value="question" name="send" ></a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="navbar-header"> <!-- ??????????????? ?????? -->
        <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
            <span class="icon-bar"></span> <!-- ???????????? ?????? ????????? -->
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>

    <div class="container">
        <div class="row">
            <table class="table table-stripped" id="listTable">
                <tr>
                    <th style="background-color: #1eb858; text-align: center; width: 50%; color: #fff;">??????</th>
                    <th style="background-color: #1eb858; text-align: center; width: 20%; color: #fff;">?????????</th>
                    <th style="background-color: #1eb858; text-align: center; width: 20%; color: #fff;">?????????</th>
                    <th style="background-color: #1eb858; text-align: center; width: 10%; color: #fff;">?????????</th>
                </tr>


            </table>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp"/>
</div>

</body>
</html>
