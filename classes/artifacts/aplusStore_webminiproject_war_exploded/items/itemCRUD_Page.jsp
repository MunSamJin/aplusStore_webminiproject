<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <style type="text/css">
        jong {
            margin: 150px auto;
        }

        #add {
            padding: 50px 0 100px 0;
            overflow: hidden;
        }
    </style>
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
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {background-color: lightblue;}
    </style>
    <script type="text/javascript">
        $(function () {

            $("#CRUD").change(function () {

                let crud = $("#CRUD option:selected").val();

                if(crud == "제품등록"){
                    $("#insert").show();
                    $("#delete").hide();
                    $("#selectAll").hide();
                    $("#update").hide();
                } else if(crud == "제품수정"){
                    $("#insert").hide();
                    $("#delete").hide();
                    $("#selectAll").hide();
                    $("#update").show();
                }else if(crud == "제품삭제"){
                    $("#insert").hide();
                    $("#delete").show();
                    $("#selectAll").hide();
                    $("#update").hide();
                }else if(crud == "제품조회"){
                    $("#insert").hide();
                    $("#delete").hide();
                    $("#selectAll").show();
                    $("#update").hide();
                }
            });


            $("#category").change(function () {

                let s = $("#category option:selected").val();

                if (s == "airpods") {
                    $("#airpods").show();
                    $("#accessory").hide();
                    $("#iphone").hide();
                    $("#watch").hide();
                } else if (s == "accessory") {
                    $("#accessory").show();
                    $("#airpods").hide();
                    $("#watch").hide();
                    $("#iphone").hide();

                } else if (s == "watch") {
                    $("#watch").show();
                    $("#airpods").hide();
                    $("#iphone").hide();
                    $("#accessory").hide();
                } else if (s == "iphone") {
                    $("#iphone").show();
                    $("#accessory").hide();
                    $("#airpods").hide();
                    $("#watch").hide();

                }


            });

            $("#button").click(function () {
                location.href=
                    "${path}/admin/AdminLogin.jsp";
            });

            $("#adminInfo").click(function () {
                location.href=
                    "${path}/admin/AdminInfo.jsp";
            });


        });



    </script>
    <script type="text/javascript" >
        $(function(){

            //전체검색
            function selectAll(){
                $.ajax({
                    url :"${path}/ajax" , //서버요청주소
                    type:"post", //요청방식(method방식 : get | post | put | delete )
                    dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
                    data: {key:"item" , methodName : "selectAll"}, //서버에게 보낼 데이터정보(parameter정보)
                    success :function(arr){
                        let str="";
                        $.each(arr, function(index, item){
                            str+=`<tr>`;
                            str+=`<td>${"${item.modelNum}"}</a></td>`;
                            str+=`<td>${"${item.category}"}</td>`;
                            str+=`<td>${"${item.modelName}"}</td>`;
                            str+=`<td>${"${item.modelPrice}"}</td>`;
                            str+=`<td>${"${item.modelOption}"}</td>`;
                            str+=`<td>${"${item.modelColor}"}</td>`;
                            str+=`<td>${"${item.modelGPS}"}</td>`;
                            str+=`<td>${"${item.modelStock}"}</td>`;
                            str+=`<td>${"${item.modelRegDate}"}</td>`;
                            str+=`<td><button name='update' value='${"${item.modelNum}"}'>수정하기</button>`
                            str+=`<td><button name='delete' id='${"${item.modelName}"}'>삭제하기</button>`
                            str+=`</tr>`;
                        });

                        $("#list tr:gt(0)").remove();
                        $("#list tr:eq(0)").after(str);

                    } , //성공했을때 실행할 함수
                    error : function(err){
                        alert(err+"에러 발생했어요.");
                    }  //실패했을때 실행할 함수
                });//ajax끝
            }//selectAll 함수끝

            selectAll();

            $(document).on("click","button[name=update]", function(){

                let modelNum = $(this).attr("value");

                let popupWidth = 400;
                let popupHeight = 450;

                let left = Math.ceil((window.screen.width)/2)-(popupWidth/2) ;
                let top = Math.ceil((window.screen.height)/2 -(popupHeight));



                window.open("${path}/front?key=item&methodName=updateItemRead&modelNum="+modelNum,"update",
                    'status=no, height='+popupHeight+',width='+popupWidth+
                ',left='+left+'top='+top);



            });

            $(document).on("click","button[name=delete]", function(){

                let modelName = $(this).attr("id");

                if(confirm(modelName+" 을 정말로 삭제하시겠습니까?")){
                    location.href = "${path}/front?key=item&methodName=deleteItem&modelName="+modelName;
                    alert(modelName+"가 삭제되었습니다.")
                }else {
                    alert(modelName+" 제품이 삭제되지 않았습니다.")
                }

            });



        });
    </script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid -->

<c:choose>
<c:when test="${empty adminLogin}">
<div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
        <div class="container nopadding">
            <div class="col-md-5"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
                                       src="${path}/images/search_main.png" alt="App" name="jong"/></div>
            <div class="col-md-7">
                <div class="hero-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0.1s">관리자 로그인 후 진행해주세요</h1>
                    <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta Aplus Store </p>
                    <div class="sub-form wow fadeInUp" data-wow-delay="0.3s" i>
                        <input class="btn btn-primary btn-lg" type="button" value="관리자 로그인" name="send" id="button">
                        <!-- subscribe message -->
                    </div>
                </div>
            </div>
        </div>
    </div>



    </c:when>



    <c:otherwise>
    <div class="main app form" id="main"><!-- Main Section-->
        <div class="hero-section">
            <div class="container nopadding">
                <div class="col-md-5"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
                                           src="${path}/images/search_main.png" alt="App" name="jong"/></div>
                <div class="col-md-7">
                    <div class="hero-content">
                        <h1 class="wow fadeInUp" data-wow-delay="0.1s">제품 관리페이지</h1>
                        <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta Aplus Store </p>
                        <div class="sub-form wow fadeInUp" data-wow-delay="0.3s" id="add">

                            <input type="button" id="adminInfo" value="주문 관리 페이지" class="mail">
                            <form class="subscribe-form wow zoomIn">
                                Category : <select name="CRUD" class="mail" id="CRUD">
                                <option disabled selected>C.R.U.D</option>
                                <option>제품조회</option>
                                <option>제품등록</option>
                            </select>



                                <div id="insert" hidden>
                                    등록할 상품의 <br>
                                    카테고리를 선택해주세요. <p/>
                                    <form class="subscribe-form wow zoomIn">
                                        Category : <select name="category" class="mail" id="category">
                                        <option disabled selected>Category</option>
                                        <option>airpods</option>
                                        <option>accessory</option>
                                        <option>watch</option>
                                        <option>iphone</option>
                                    </select>
                                    </form>
                                    <p/>
                                    <p/>

                                    <div hidden id="watch">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            애플 워치 모델 등록하기<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="⌚️"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="가격"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Option : <input class="mail" type="text" name="modelOption"
                                                            placeholder="사이즈 ex)45mm" autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="🎨"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            GPS : <select name="gps" class="mail" id="gps">
                                            <option disabled selected>⌚</option>
                                            <option>gps</option>
                                            <option>cellular</option>
                                        </select>
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량(숫자)"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            모델이름.jpeg 파일로 올려주세요
                                            <input class="submit-button" type="submit" value="등록하기" name="send">
                                        </form>
                                    </div>

                                    <div hidden id="accessory">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            악세서리 모델 등록하기<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="모델이름"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="가격"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="🎨"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Mini Category :<select name="mini" class="mail" id="mini">
                                            <option disabled selected>Mini Category</option>
                                            <option>cable</option>
                                            <option>case</option>
                                            <option>band</option>
                                        </select>
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량(숫자)"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            모델이름.jpeg 파일로 올려주세요
                                            <input class="submit-button" type="submit" value="등록하기" name="send">
                                        </form>
                                    </div>

                                    <div hidden id="airpods">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            에어팟 모델 등록하기<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="모델이름"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="가격"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="🎨"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            모델이름.jpeg 파일로 올려주세요
                                            <input class="submit-button" type="submit" value="등록하기" name="send">
                                        </form>
                                    </div>

                                    <div hidden id="iphone">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            아이폰 모델 등록하기<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="모델이름"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="가격"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Storage : <input class="mail" type="text" name="modelOption"
                                                             placeholder="iphone 용량" autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="🎨"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            모델이름.jpeg 파일로 올려주세요
                                            <input class="submit-button" type="submit" value="등록하기" name="send">
                                        </form>
                                    </div>
                                </div>
                                <!-- subscribe message -->
                                <div id="mesaj"></div>
                                <!-- subscribe message -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="pitch text-center" id="selectAll" hidden>
            <div class="container">
                <div class="pitch-intro">
                    <h1 class="wow fadeInDown" data-wow-delay="0.2s">제품 조회</h1>
                </div>
                <div>
                    <table  id="list" cellspacing="0">
                        <tr>
                            <th>모델번호</th>
                            <th>카테고리</th>
                            <th>모델이름</th>
                            <th>모델가격</th>
                            <th>모델옵션</th>
                            <th>모델색상</th>
                            <th>GPS</th>
                            <th>재고량</th>
                            <th>등록일</th>
                            <th>수정</th>
                            <th>삭제</th>
                        </tr>

                    </table>

                    </form>

                </div>
            </div>
        </div>



        </c:otherwise>

        </c:choose>




        <!-- Client Section -->


        <!-- Footer Section -->
        <jsp:include page="../common/footer.jsp"/>
    </div>

    <!-- Scroll To Top -->

    <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a>

    <!-- Scroll To Top Ends-->

</div>
<!-- Main Section -->
</div>
<!-- Wrapper-->


</body>
</html>
