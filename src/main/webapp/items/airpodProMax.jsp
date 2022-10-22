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





        $(function (){
            let color = document.getElementById('color');
            $("#cart").click(function () {
                let modelName = color.options[color.selectedIndex].value;

                location.href = "cart.jsp?modelName=AirPods_Max_"+modelName;
            });
        });





    </script>

</head>
<body>
<div class="wrapper">
    <div class="container">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="../index.jsp"><img src="../images/logo1.png" width="80"
                                                                                 alt="apluslogo"/></a></div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">

                        <li><a class="page-scroll" href="../store/storeMain.html">Store</a></li>
                        <li><a class="page-scroll" href="../items/iphoneIndex.html">iPhone</a></li>
                        <li><a class="page-scroll" href="../items/watchIndex.html">Watch</a></li>
                        <li><a class="page-scroll" href="../items/ariPodIndex.html">AirPods</a></li>
                        <li><a class="page-scroll" href="../items/accIndex.html">액세서리</a></li>
                        <li><a class="page-scroll" href="#contact">고객지원</a></li>
                        <li><a class="page-scroll" href="#contact">로그인</a></li>
                        <li><a class="page-scroll" href="#contact">장바구니</a></li>
                        <li><a class="page-scroll" href="#contact">배송조회</a></li>


                    </ul>
                </div>
            </div>
        </nav>
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
                                    <h1 class="wow fadeInUp" data-wow-delay="0.2s">AirPod Pro Max 구입하기</h1>
                                </div>
                            </div>
                        </div>

                    </th>
                </tr>
                <tr>
                    <td style="width: 40%">
                        <img src="../images/airpodsmax_main.jpeg" width="100%" height="100%">
                    </td>
                    <td>
                        <h2>색상</h2>
                        <select id="color">
                            <option value="spacegray">spacegray</option>
                            <option value="pink">pink</option>
                            <option value="green">green</option>
                            <option value="silver">silver</option>
                            <option value="skyblue">skyblue</option>
                        </select>
                        <h2>장바구니 담기</h2>
                        <input type="button" value="장바구니 넣기" id="cart"/>
                    </td>
                </tr>

            </table>


        </div>

    <!-- Footer Section -->
    <div class="footer">
        <div class="container">
            <div class="col-md-7"><img src="../images/logo1.png" width="80" alt="Image"/>
                <p> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis
                    tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
                <div class="footer-text">
                    Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
                </div>
            </div>
            <div class="col-md-5">
                <h1>Contact Us</h1>
                <p> Contact our 24/7 customer support if you have any <br class="hidden-xs">
                    questions. We'll help you out. </p>
                <a href="mailto:support@gmail.com">contact@iland.com</a></div>
        </div>
    </div>
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
