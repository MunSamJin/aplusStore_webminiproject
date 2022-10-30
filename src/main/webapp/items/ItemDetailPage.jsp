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


    <script type="text/javascript">

        $(function () {

            $("#cart").click(function () {


                //location.href = "${path}front?key=cart&methodName=insert&modelNum=${requestScope.itemDTO.modelName}";

                location.href = "${path}/front?key=cart&methodName=insert&emailId=sikkk@naver.com&modelName=${requestScope.itemDTO.modelName}";

            });

        });
    </script>
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
                        <h1 class="wow fadeInUp" data-wow-delay="0.2s">Apple 제품 구입하기</h1>
                    </div>
                </div>
            </div>


            <div class="clearfix"></div>
        </div>

    </div>

    <div class="split-features">
        <div class="col-md-6 nopadding">
            <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/${requestScope.itemDTO.modelName}.jpeg" alt="Image"
            style="height: 450px; border-radius: 20px"/> </div>
        </div>
        <div class="col-md-6 nopadding">
            <div class="split-content">
                <h1 class="wow fadeInUp">${requestScope.itemDTO.modelName}</h1>
                <p class="wow fadeInUp">가격 : ${requestScope.itemDTO.modelPrice}</p>

                <input type="button" value="장바구니 넣기" id="cart" class="btn btn-primary btn-lg"/>

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
