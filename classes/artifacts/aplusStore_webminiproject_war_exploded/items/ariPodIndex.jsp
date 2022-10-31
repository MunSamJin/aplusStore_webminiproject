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
  <style type="text/css">
    body {
      padding: 0px;
      margin: 0px;
    }

    .jb-box {
      width: 100%;
      height: 500px;
      overflow: hidden;
      margin: 0px auto;
      position: relative;
    }

    video {
      width: 100%;
    }

    .jb-text {
      position: absolute;
      top: 50%;
      width: 100%;
    }
    .jb-text2 {
      position: absolute;
      top: 70%;
      width: 100%;
    }

    .jb-text p {
      margin-top: -24px;
      text-align: center;
      font-size: 48px;
      color: #ffffff;
    }
    .jb-text2 p {
      margin-top: -44px;
      text-align: center;
      font-size: 30px;
      color: #ffffff;
    }
  </style>

</head>
<body>
<jsp:include page="../common/header.jsp"/>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->

  <div class="main app form" id="main"><!-- Main Section-->

    <div class="hero-section" style="background-color: #FFFFFF">

      <table id="menu" style="margin-left:auto; margin-right:auto;">
        <tr>

          <td>
            <a href="airpods_2.jsp">
            <img src="../images/airpod2nd_picto.png" height="150px" id="go2nd">
            </a>
          </td>
          <td>
            <a href="airpods_3.jsp">
              <img src="../images/airpod3rd_picto.png" height="150px" id="go3rd"></a>
          </td>
          <td>
            <a href="airpods_pro2.jsp">
              <img src="../images/airpodPro2nd_picto.png" height="150px" id="goPro"></a>
          </td>
          <td>
            <a href="airpods_max.jsp">
            <img src="../images/airpodMax_picto.png" height="150px" id="goMax">
            </a></td>
        </tr>
      </table>
      <div class="jb-box">
        <video muted autoplay loop>
          <source src="../images/airpodIndex.mp4" type="video/mp4">
          <strong>Your browser does not support the video tag.</strong>
        </video>
        <div class="jb-text">
          <p>AirPods, A+ Store 🎧</p>

        </div>
        <div class="jb-text2">
          <p>음악만이 나라에서 허락하는 유일한 마약이니까.</p>
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

<!-- Jquery and Js Plugins -->
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script>
</body>
</html>
