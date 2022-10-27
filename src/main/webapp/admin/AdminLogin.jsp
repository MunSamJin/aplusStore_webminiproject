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
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" href="../css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/owl.theme.css">
    <link rel="stylesheet" href="../css/ionicons.min.css">

    <!-- Resource style -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
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
    <script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
    <style type="text/css">
        #admin{
            height: 300px;
            margin: 100px 100px 100px 100px;
        }
    </style>


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
                                       src="${path}/images/logo1.png" alt="App" id="admin"/></div>
            <div class="col-md-7">
                <div class="hero-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0.1s">제품 관리페이지</h1>
                    <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta Aplus Store </p>
                    <div class="sub-form wow fadeInUp" data-wow-delay="0.3s" id="add">


                        <form class="subscribe-form wow zoomIn"
                              action="${path}/front?key=item&methodName=AdminLogin" method="post"
                              name="adminLogin">
                            관리자 로그인 <p/>

                            아이디 : <input class="mail" type="text" name="adminId" placeholder="관리자아이디"
                                                autocomplete="off">
                            <p/>
                            <p/>
                            비밀번호 : <input class="mail" type="password" name="adminPwd" placeholder="비밀번호"
                                           autocomplete="off">
                            <p/>
                            <p/>

                            <input class="submit-button" type="submit" value="로그인" name="send">
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


<div class="pitch text-center" id="selectAll" hidden>
    <div class="container">
        <div class="pitch-intro">
            <h1 class="wow fadeInDown" data-wow-delay="0.2s">제품 조회</h1>
        </div>
        <div>
            <table id="list" cellspacing="0">
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
                </tr>

            </table>

            </form>

        </div>
    </div>
</div>
<!-- Client Section -->
<div class="client-section">
    <div class="container text-center">
        <div class="clients owl-carousel owl-theme">
            <div class="single"><img src="../images/client_hg.png" alt="효경" height="50px"/></div>
            <div class="single"><img src="../images/client_jy.png" alt="종영" height="50px"/></div>
            <div class="single"><img src="../images/client_r.png" alt="란" height="50px"/></div>
            <div class="single"><img src="../images/client_ys.png" alt="용식" height="50px"/></div>
            <div class="single"><img src="../images/client_sj.png" alt="삼진" height="50px"/></div>
            <div class="single"><img src="../images/client_sr.png" alt="세륜" height="50px"/></div>
        </div>
    </div>
</div>

<div class="feature-sub">
    <div class="container">
        <div class="sub-inner">
            <h1 class="wow fadeInUp">Creative Landing App For Your Easy Life! Simple Reliable & Understandable for
                your customers </h1>
            <a href="#" class="btn btn-action wow fadeInUp">Buy now</a></div>
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
