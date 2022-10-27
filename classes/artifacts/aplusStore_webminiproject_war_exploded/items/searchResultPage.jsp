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
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" href="css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <!-- Resource style -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Jquery and Js Plugins -->
    <script type="text/javascript" src="js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script src="js/jquery.subscribe.js"></script>


    <script type="text/javascript">


        $(function () {


            $("#back").click(function () {

                history.back();
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
                    <h1 class="wow fadeInUp" data-wow-delay="0.2s">검색결과</h1>
                </div>
            </div>
        </div>


        <div class="clearfix"></div>
    </div>

</div>

<div id="pricing" class="pricing-section text-center">
    <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">


            <c:choose>
                <c:when test="${empty requestScope.list}">
                    <h1>해당하는 제품이 없습니다.</h1>
                    <p/>
                    <input type="button" value="다시 검색하기" class="btn btn-primary btn-lg" id="back"/>
                </c:when>


                <c:otherwise>

                    <c:forEach items="${requestScope.list}" var="list" varStatus="state">
                        <div class="col-sm-4">
                            <div class="table-right wow fadeInUp" data-wow-delay="0.6s">
                                <div>
                                    <c:choose>
                                    <c:when test="${list.category =='king'}">

                                    <a href="${path}/items/${list.modelName}.jsp">
                                        </c:when>
                                        <c:otherwise>
                                        <a href="${path}/front?key=item&methodName=ItemReadDetail&modelName=${list.modelName}">
                                            </c:otherwise>
                                            </c:choose>

                                            <img src="${path}/images/${list.modelName}.jpeg" height="300px">
                                        </a></div>
                                <div class="pricing-details">
                                </div>
                                <span>${list.modelName}</span>
                                <p/>
                                <span>${list.modelPrice}</span>
                                <p/>
                            </div>
                        </div>
                    </c:forEach>


                </c:otherwise>
            </c:choose>
            <%--첫번째 chose 끝--%>
        </div>
    </div>
</div>
</div>


<!-- Footer Section -->
<jsp:include page="../common/footer.jsp"/>
</div>

<!-- Scroll To Top -->

<a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a>


</body>
</html>