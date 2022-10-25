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
    <!-- Jquery and Js Plugins -->
    <script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>

    <script type="text/javascript" src="../js/plugins.js"></script>
    <script type="text/javascript" src="../js/menu.js"></script>
    <script type="text/javascript" src="../js/custom.js"></script>
    <script src="../js/jquery.subscribe.js"></script>


    <script type="text/javascript">


        $(function () {

                let color = document.getElementById('color');
                let storage = document.getElementById('storage');



                $("#cart").click(function () {
                    let modelName = "_"+
                        color.options[color.selectedIndex].value+"_"+
                        storage.options[storage.selectedIndex].value;

                    location.href ="cart.jsp?modelName=se"+modelName;


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
        <%--    메인 section  iphone--%>
        <div class="hero-section">
            <table>
                <tr>
                    <th colspan="2">
                        <div class="container">
                            <div class="col-md-12 col-sm-12 nopadding">
                                <div class="pricing-intro">
                                    <h1 class="wow fadeInUp" data-wow-delay="0.2s">Iphone SE 구입하기</h1>
                                </div>
                            </div>
                        </div>

                    </th>
                </tr>
                <tr>
                    <td rowspan="2" style="width: 70%">
                        <img src="../images/iphone-se_main.jpeg" width="100%" height="100%">
                    </td>

                </tr>
                <tr>
                    <td>

                        <h2>색상 선택하기</h2>
                        <select id="color">
                            <option value="midnight">midnight</option>
                            <option value="starlight">starlight</option>
                            <option value="red">red</option>
                        </select>

                        <h2>용량 선택하기</h2>
                        <select id="storage">
                            <option value="64">64</option>
                            <option value="128">128</option>
                            <option value="256">256</option>

                        </select>

                        <input type="button" value="장바구니 넣기" id="cart"/>
                    </td>
                </tr>
            </table>


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
