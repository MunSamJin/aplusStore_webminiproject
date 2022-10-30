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


</head>
<body>
<jsp:include page="../common/header.jsp"/>

        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->

    <div class="main app form" id="main"><!-- Main Section-->
        <div class="hero-section">


            <div class="clearfix"></div>
        </div>

    </div>

    <div id="pricing" class="pricing-section text-center">
        <div class="container">
            <div class="col-md-12 col-sm-12 nopadding">
                <div class="pricing-intro">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">원하시는 액세서리를 찾아보세요</h1>
                    </p>
                </div>
                <div class="col-sm-4">
                    <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
                        <div><a href="../front?key=item&methodName=ItemReadByCategory&category=accessory&gps=case">
                            <img src="../images/acc_case_picto.png" height="300px" id="goCase">
                        </a></div>
                        <div class="pricing-details">
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="table-right table-center wow fadeInUp" data-wow-delay="0.6s">
                        <div><a href="../front?key=item&methodName=ItemReadByCategory&category=accessory&gps=cable">
                            <img src="../images/acc_cable_picto.png" height="300px" id="goCable">
                        </a></div>
                        <div class="pricing-details">
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="table-right wow fadeInUp" data-wow-delay="0.6s">
                        <div><a href="../front?key=item&methodName=ItemReadByCategory&category=accessory&gps=band">
                            <img src="../images/acc_band_picto.png" height="300px" id="goBand">
                        </a></div>
                        <div class="pricing-details">
                        </div>
                    </div>
                </div>

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

<!-- Jquery and Js Plugins -->
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script>
</body>
</html>
