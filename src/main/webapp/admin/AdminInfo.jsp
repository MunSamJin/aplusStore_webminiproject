<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>iLand Multipurpose Landing Page Template</title>
    <link rel="icon" href="../images/favicon.png" type="image/png" sizes="16x16">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iLand Multipurpose Landing Page Template">
    <meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/owl.theme.css">
    <link rel="stylesheet" href="../css/ionicons.min.css">
    <!-- Resource style -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />

    <style>
        .a{border:solid red 5px}
        span{width:150px; color:red}
        input{border:solid gray 1px}

        h2{text-align:center}

        a{text-decoration: none;}
        a:hover{color: red}

    </style>
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

        tr:hover {background-color: lightseagreen;}
    </style>
    <script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>

    <script type="text/javascript" >
        $(function(){

            //전체검색
            function getOrderList(){
                $.ajax({
                    url :"../ajax" , //서버요청주소
                    type:"post", //요청방식(method방식 : get | post | put | delete )
                    dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
                    data: {key:"order" , methodName : "getOrderList"}, //서버에게 보낼 데이터정보(parameter정보)
                    success :function(result){
                        let str="";
                        $.each(result, function(index, item){
                            str+=`<tr>`;
                            str+=`<td><a href='#'>${"${item.orderNum}"}</a></td>`;
                            str+=`<td>${"${item.realAddr}"}</td>`;
                            str+=`<td>${"${item.orderDate}"}</td>`;
                            str+=`<td>${"${item.orderState}"}</td>`;
                            str+=`<td>${"${item.memberGuest}"}</td>`;
                            str+=`<td>${"${item.orderName}"}</td>`;
                            str+=`<td>${"${item.realEmail}"}</td>`;
                            str+=`<td>${"${item.orderPhone}"}</td>`;
                            str+=`<td>${"${item.totalPrice}"}</td>`;
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
            /////////////////////////////////////////////////////////////

            //아이디를 클릭했을 때 값을 폼에 넣기
            $(document).on("click","a", function(){
                //alert($(this).text())
                let orderNum = $(this).text();

                let orderState = $(this).parent().next();

                $("#orderNum").val(orderNum);
                $("#orderState").val(orderState);

            });

            /////////////////////////////////////////////////////////////

            $("#btn").click(function(){
                //radio의 선택된 값
                let orderState= $(":radio:checked").val();
                alert(orderState)

                $.ajax({
                    url :"../ajax" , //서버요청주소
                    type:"post", //요청방식(method방식 : get | post | put | delete )
                    dataType:"text"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
                    data: {key:"order" , methodName : "update" , orderNum: $("#orderNum").val() , orderState}, //서버에게 보낼 데이터정보(parameter정보)
                    success :function(result){
                        getOrderList();//화면갱신
                    } , //성공했을때 실행할 함수
                    error : function(err){
                        alert(err+"에러 발생했어요.");
                    }  //실패했을때 실행할 함수
                });//ajax끝
            });



            ////////////////////////////////////////////////////


        });//ready끝

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
                <div class="hero-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0.1s">관리자 주문 관리 페이지</h1>

                    <hr>
                    <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">






                        <h2> 관리자 - 주문상태변경 </h2>

                        <form name="inForm" method="post" id="inForm">
                            <table cellspacing="0">
                                <tr bgcolor="#e0ffff">
                                    <th >주문번호</th>
                                    <th >주문상태</th>
                                </tr>
                                <tr>
                                    <td style="text-align:left"><input type="text" size="8" name="orderNum" id="orderNum">
                                        <span>상품준비중인 경우에만 주문취소 가능합니다.</span></td>
                                    <td>
                                        <input type="radio" size="8" name="orderState" id="픽업대기중" value="픽업대기중">픽업대기중
                                        <input type="radio" size="8" name="orderState" id="상품준비중" value="상품준비중">상품준비중
                                        <input type="radio" size="8" name="orderState" id="픽업완료" value="픽업완료">픽업완료
                                        <input type="radio" size="8" name="orderState" id="배송중" value="배송중">배송중
                                        <input type="radio" size="8" name="orderState" id="배송완료" value="배송완료">배송완료
                                        <input type="radio" size="8" name="orderState" id="주문취소" value="주문취소">주문취소
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" align="center">
                                        <input type="hidden" name="key" value="order">
                                        <input type="hidden" name="methodName" value="insert">
                                        <input type="button" value="주문상태변경"  id="btn">
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <br>
                        <hr color="red">

                        <h2> 주문 리스트 </h2>
                        <table  id="listTable" cellspacing="0">
                            <tr bgcolor="#e0ffff">
                                <th>주문번호</th>
                                <th>회원여부</th>
                                <th>주문일</th>
                                <th>주문상태</th>
                                <th>주문자 이름</th>
                                <th>주문한 주소</th>
                                <th>주문자 이메일</th>
                                <th>연락처</th>
                                <th>총금액</th>
                            </tr>

                        </table>


                        <!-- subscribe message -->
                        <div id="mesaj">
                    </div>
                        <!-- subscribe message -->
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../common/footer.jsp"/>
    </div>



    <!-- Scroll To Top -->

    <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a>

    <!-- Scroll To Top Ends-->

</div>
<!-- Main Section -->
</div>
<!-- Wrapper-->

<!-- Jquery and Js Plugins -->
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script>
</body>
</html>

