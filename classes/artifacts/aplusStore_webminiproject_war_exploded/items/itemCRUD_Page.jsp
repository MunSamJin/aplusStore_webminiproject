<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <style type="text/css">
        #jong{
            margin: 150px auto;
        }
        #add{
            padding: 50px 0 100px 0;
            overflow: hidden;
        }
    </style>
    <!-- Resource style -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
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
    <script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>

    <script type="text/javascript" src="../js/plugins.js"></script>
    <script type="text/javascript" src="../js/menu.js"></script>
    <script type="text/javascript" src="../js/custom.js"></script>
    <script src="../js/jquery.subscribe.js"></script>
    <script type="text/javascript">
        $(function () {


            $("#cart").click(function () {
                let model = "12";
                let color = $("input[type=radio][name=color]:checked").val();
                let storage = $("input[type=radio][name=storage]:checked").val();
                let modelName = model + "_" + color + "_" + storage;
                location.href = "cartServlet?methodName=addCart&modelNum=" + modelName;

            });

            $("#category").change(function () {

                let s = $("#category option:selected").val();

                if(s == "airpods"){
                    $("#AirPods").show();
                    $("#accessory").hide();
                    $("#iphone").hide();
                    $("#watch").hide();
                }else if(s == "accessory"){
                    $("#accessory").show();
                    $("#AirPods").hide();
                    $("#watch").hide();
                    $("#iphone").hide();

                }else if(s == "watch"){
                    $("#watch").show();
                    $("#AirPods").hide();
                    $("#iphone").hide();
                    $("#accessory").hide();
                }else if(s == "iphone"){
                    $("#iphone").show();
                    $("#accessory").hide();
                    $("#AirPods").hide();
                    $("#watch").hide();

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

<div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
        <div class="container nopadding">
            <div class="col-md-5"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="../images/search_main.png" alt="App" id="jong"/> </div>
            <div class="col-md-7">
                <div class="hero-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0.1s">제품 등록하기</h1>
                    <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta Aplus Store </p>
                    <div class="sub-form wow fadeInUp" data-wow-delay="0.3s" id="add">
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
                        <p/><p/>

                        <div hidden id="watch">
                            <form class="subscribe-form wow zoomIn" action="${path}/front?key=item&methodName=ItemSearch" method="post" name="crudForm">
                                애플 워치 모델 등록하기<p/>
                                Model Name : <input class="mail" type="text" name="modelName" placeholder="⌚️" autocomplete="off" ><p/><p/>
                                Price : <input class="mail" type="text" name="modelPrice" placeholder="가격" autocomplete="off" ><p/><p/>
                                Option : <input class="mail" type="text" name="modelOption" placeholder="사이즈 ex)45mm"  autocomplete="off" ><p/><p/>
                                Color : <input class="mail" type="text" name="modelColor" placeholder="🎨" autocomplete="off" ><p/><p/>
                                GPS : <select name="gps" class="mail" id="gps">
                                <option disabled selected>⌚</option>
                                <option>gps</option>
                                <option>cellular</option>
                            </select>
                                <p/><p/>
                                Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량(숫자)" autocomplete="off" ><p/><p/>
                                <input class="submit-button" type="submit" value="등록하기" name="send">
                            </form>
                        </div>

                        <div hidden id="accessory">
                            <form class="subscribe-form wow zoomIn" action="${path}/front?key=item&methodName=InsertItemByAcc" method="post" name="crudForm"
                                  enctype="multipart/form-data">
                                악세서리 모델 등록하기<p/>
                                Model Name : <input class="mail" type="text" name="modelName" placeholder="모델이름" autocomplete="off" ><p/><p/>
                                Price : <input class="mail" type="text" name="modelPrice" placeholder="가격" autocomplete="off" ><p/><p/>
                                Color : <input class="mail" type="text" name="modelColor" placeholder="🎨" autocomplete="off" ><p/><p/>
                                Mini  Category :<select name="mini" class="mail" id="mini">
                                <option disabled selected>Mini Category</option>
                                <option>cable</option>
                                <option>case</option>
                                <option>band</option>
                            </select>
                                <p/><p/>
                                Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량(숫자)" autocomplete="off" ><p/><p/>
                                <input class="mail" type="file" name="file" maxlength="60" size="40"> 모델이름.jpeg 파일로 올려주세요
                                <input class="submit-button" type="submit" value="등록하기" name="send">
                            </form>
                        </div>

                        <div hidden id="airpods">
                            <form class="subscribe-form wow zoomIn" action="${path}/front?key=item&methodName=ItemSearch" method="post" name="crudForm" >
                                에어팟 모델 등록하기<p/>
                                Model Name : <input class="mail" type="text" name="modelName" placeholder="모델이름" autocomplete="off" ><p/><p/>
                                Price : <input class="mail" type="text" name="modelPrice" placeholder="가격" autocomplete="off" ><p/><p/>
                                Color : <input class="mail" type="text" name="modelColor" placeholder="🎨" autocomplete="off" ><p/><p/>
                                Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량" autocomplete="off" ><p/><p/>
                                <input class="submit-button" type="submit" value="등록하기" name="send">
                            </form>
                        </div>

                        <div hidden id="iphone">
                            <form class="subscribe-form wow zoomIn" action="${path}/front?key=item&methodName=ItemSearch" method="post" name="crudForm" >
                                아이폰 모델 등록하기<p/>
                                Model Name : <input class="mail" type="text" name="modelName" placeholder="모델이름" autocomplete="off" ><p/><p/>
                                Price : <input class="mail" type="text" name="modelPrice" placeholder="가격" autocomplete="off" ><p/><p/>
                                Storage : <input class="mail" type="text" name="modelOption" placeholder="iphone 용량"  autocomplete="off" ><p/><p/>
                                Color : <input class="mail" type="text" name="modelColor" placeholder="🎨" autocomplete="off" ><p/><p/>
                                Stock : <input class="mail" type="text" name="modelStock" placeholder="재고량" autocomplete="off" ><p/><p/>
                                <input class="submit-button" type="submit" value="등록하기" name="send">
                            </form>
                        </div>

                        <!-- subscribe message -->
                        <div id="mesaj"></div>
                        <!-- subscribe message -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Client Section -->
    <div class="client-section">
        <div class="container text-center">
            <div class="clients owl-carousel owl-theme">
                <div class="single"> <img src="../images/client_hg.png" alt="효경" height="50px"/> </div>
                <div class="single"> <img src="../images/client_jy.png" alt="종영" height="50px"/> </div>
                <div class="single"> <img src="../images/client_r.png" alt="란" height="50px"/> </div>
                <div class="single"> <img src="../images/client_ys.png" alt="용식" height="50px"/> </div>
                <div class="single"> <img src="../images/client_sj.png" alt="삼진" height="50px"/> </div>
                <div class="single"> <img src="../images/client_sr.png" alt="세륜" height="50px"/> </div>
            </div>
        </div>
    </div>

    <div class="feature-sub">
        <div class="container">
            <div class="sub-inner">
                <h1 class="wow fadeInUp">Creative Landing App For Your Easy Life! Simple Reliable & Understandable for your customers </h1>
                <a href="#" class="btn btn-action wow fadeInUp">Buy now</a> </div>
        </div>
    </div>

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
