<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>A+ Store</title>
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
  </style>
  <!-- Resource style -->
  <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
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
            <h1 class="wow fadeInUp" data-wow-delay="0.1s">어떤 제품을 찾으세요?</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta A+ Store </p>
            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
              <form class="subscribe-form wow zoomIn" action="${path}/front?key=item&methodName=ItemSearch" method="post" name="searchform" id="searchform">
                <input class="mail" type="text" name="search" placeholder="🔎" id="search">
                <input class="submit-button" type="submit" value="검색하기" name="send" id="subsubmit">
              </form>
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

<!-- Jquery and Js Plugins -->
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script>
</body>
</html>
