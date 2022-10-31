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
  <!-- Resource style -->
  <link href="${path}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
  <!-- Jquery and Js Plugins -->
  <script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
  <script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>

  <script type="text/javascript" src="${path}/js/plugins.js"></script>
  <script type="text/javascript" src="${path}/js/menu.js"></script>
  <script type="text/javascript" src="${path}/js/custom.js"></script>
  <script src="${path}/js/jquery.subscribe.js"></script>


</head>

<body>
<jsp:include page="../common/header.jsp"/>

<!-- /.navbar-collapse -->
</div>
<div class="main app form" id="main"><!-- Main Section-->
  <div class="hero-section">
    <div class="container">
      <div class="col-md-12 col-sm-12 nopadding">
        <div class="pricing-intro">
          <h1 class="wow fadeInUp" data-wow-delay="0.2s">더욱 빠르게 결제하시려면 로그인하세요.</h1>
        </div>
      </div>
    </div>


    <div class="clearfix"></div>
  </div>

</div>

<div class="split-features">
  <div class="col-md-6 nopadding">
    <div class="split-image"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" style="margin: 60px; height: 250px;" src="${path}/images/imgStore/applecare-plus-homepage_2x.png" alt="App"/>  </div>
  </div>
  <div class="col-md-6 nopadding">
    <div class="split-content">
      <!-- Sign In Form -->
      <c:choose>
        <c:when test="${empty emailId}">
          <form class="form-horizontal" method="post" action="../front">
            <input type="hidden" name="key" value = "user" /> <!-- Controller를 찾는 정보 -->
            <input type="hidden" name="methodName" value = "login" />  <!-- 메소드이름 -->

            <div class="form-floating mb-3">

              <input type="email" class="form-control" id="emailId" name="emailId" placeholder="name@example.com">

              <label for="emailId">Email address</label>
            </div>
            <div class="form-floating mb-3">
              <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
              <label for="pwd">Password</label>
            </div>

            <div class="form-check mb-3">
              <input class="form-check-input" type="checkbox" value="" id="rememberIdCheck" name="rememberIdCheck">
              <label class="form-check-label" for="rememberIdCheck">
                아이디 저장
              </label>
            </div>

            <div class="d-grid">
              <button class="btn btn-default">Cancel</button>
              <button class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" type="submit">Sign in</button><p>

              <div>
                <span class="aplaplussa">ID가 없으세요? →<a id="create-id-aplus" class="idid-forgot" href="register.jsp" target="_blank">지금 만들어보세요.</a></span>
                <p>
              </div>
              <div class="text-center">
                <a class="small" href="lookforPwd.jsp">Aplus ID 또는 암호를 잊으셨습니까</a>
              </div>
            </div>

          </form>
        </c:when>
      </c:choose>
    </div>
  </div>
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
