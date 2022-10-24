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


            $("#cart").click(function () {
                let model = $("input[type=radio][name=model]:checked").val();
                let color = $("input[type=radio][name=color]:checked").val();
                let storage = $("input[type=radio][name=storage]:checked").val();
                let modelName = model + "_" + color + "_" + storage;
                location.href = "cartServlet?methodName=addCart&modelNum=" + modelName;

            });

            $("input[type=radio][name=storage]").click(function () {
                let m = $("input[type=radio][name=model]:checked").val();
                let s = $(this).val()

                if (s == 128 && m == "14pro") {
                    $("#span").html("<h1>₩ 1,550,000</h1>").show();
                } else if (s == 256 && m == "14pro") {
                    $("#span").html("<h1>₩ 1,700,000</h1>").show();
                }else if (s == 512 && m == "14pro") {
                    $("#span").html("<h1>₩ 2,000,000</h1>").show();
                }else if (s == 1024 && m == "14pro") {
                    $("#span").html("<h1>₩ 2,300,000</h1>").show();

                }else if (s == 128 && m == "14proMax") {
                    $("#span").html("<h1>₩ 1,750,000</h1>").show();
                }else if (s == 256 && m == "14proMax") {
                    $("#span").html("<h1>₩ 1,900,000</h1>").show();
                }else if (s == 512 && m == "14proMax") {
                    $("#span").html("<h1>₩ 2,200,000</h1>").show();
                }else if (s == 1024 && m == "14proMax") {
                    $("#span").html("<h1>₩ 2,500,000</h1>").show();
                }
            });

            $("input[type=radio][name=model]").click(function () {
                let m = $(this).val();
                let s = $("input[type=radio][name=storage]:checked").val();

                if (s == 128 && m == "14pro") {
                    $("#span").html("<h1>₩ 1,550,000</h1>").show();
                } else if (s == 256 && m == "14pro") {
                    $("#span").html("<h1>₩ 1,700,000</h1>").show();
                }else if (s == 512 && m == "14pro") {
                    $("#span").html("<h1>₩ 2,000,000</h1>").show();
                }else if (s == 1024 && m == "14pro") {
                    $("#span").html("<h1>₩ 2,300,000</h1>").show();

                }else if (s == 128 && m == "14proMax") {
                    $("#span").html("<h1>₩ 1,750,000</h1>").show();
                }else if (s == 256 && m == "14proMax") {
                    $("#span").html("<h1>₩ 1,900,000</h1>").show();
                }else if (s == 512 && m == "14proMax") {
                    $("#span").html("<h1>₩ 2,200,000</h1>").show();
                }else if (s == 1024 && m == "14proMax") {
                    $("#span").html("<h1>₩ 2,500,000</h1>").show();
                }
            });

            $("input[type=radio][name=color]").click(function () {
                let c = $(this).val();

                if(c =="black"){
                $("#mainImg").attr("src","../images/iphone-14-pro-main_black.jpeg");
                }else if(c =="gold"){
                    $("#mainImg").attr("src","../images/iphone-14-pro-main_gold.jpeg");
                }else if(c =="purple"){
                    $("#mainImg").attr("src","../images/iphone-14-pro-main_purple.jpeg");
                }else if(c =="silver"){
                    $("#mainImg").attr("src","../images/iphone-14-pro-main_silver.jpeg");
                }

            });
        });

    </script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <script>
        $(function () {
            $("input").checkboxradio();
        });
        $(function () {
            $("#accordion").accordion();
        });


    </script>
    <style type="text/css">
        #jong {
            padding: 20px 100px 20px 100px;
            text-align: left;
        }
    </style>
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
            <div class="container">
                <div class="col-md-12 col-sm-12 nopadding">
                    <div class="pricing-intro">
                        <h1 class="wow fadeInUp" data-wow-delay="0.2s">Iphone 14 Pro 구입하기</h1>
                        ₩1,550,000부터
                    </div>
                </div>
            </div>
        </div>


        <div class="split-features">
            <div class="col-md-6 nopadding">
                <div class="split-image">
                    <img class="img-responsive wow fadeIn" src="../images/iphone14pro_main.jpeg" alt="Image" id="mainImg"/>
                </div>
            </div>
            <div class="col-md-6 nopadding">
                <div class="split-content" id="jong">
                    <h1 class="wow fadeInUp">모델 선택하기</h1>
                    <p class="wow fadeInUp">

                        <label for="14pro">iphone14 Pro</label>
                        <input type="radio" name="model" id="14pro" value="14pro">

                        <label for="14proMax">iphone14 Pro Max</label>
                        <input type="radio" name="model" id="14proMax" value="14proMax">

                    </p>

                    <p class="wow fadeInUp"></p>
                    <h1 class="wow fadeInUp">색상 선택하기</h1>
                    <p class="wow fadeInUp">

                        <label for="black">black</label>
                        <input type="radio" name="color" id="black" value="black">
                        <label for="silver">silver</label>
                        <input type="radio" name="color" id="silver" value="silver">
                        <label for="gold">gold</label>
                        <input type="radio" name="color" id="gold" value="gold">
                        <label for="purple">purple</label>
                        <input type="radio" name="color" id="purple" value="purple">

                    </p>
                    <p class="wow fadeInUp"></p>
                    <h1 class="wow fadeInUp">용량 선택하기</h1>
                    <p class="wow fadeInUp">


                        <label for="128">128</label>
                        <input type="radio" name="storage" id="128" value="128">
                        <label for="256">256</label>
                        <input type="radio" name="storage" id="256" value="256">
                        <label for="512">512</label>
                        <input type="radio" name="storage" id="512" value="512">
                        <label for="1024">1024</label>
                        <input type="radio" name="storage" id="1024" value="1024">

                    </p>
                    <span id="span" hidden></span>
                    <div><h1> </h1></div>
                    <p class="wow fadeInUp">
                        <input type="button" value="장바구니 넣기" id="cart" class="btn btn-primary btn-lg"/>
                    </p>

                </div>
            </div>
        </div>
        <div id="accordion">
            <h3>Section 1</h3>
            <div>
                <p>
                    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
                    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                </p>
            </div>
            <h3>Section 2</h3>
            <div>
                <p>
                    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                    suscipit faucibus urna.
                </p>
            </div>
            <h3>Section 3</h3>
            <div>
                <p>
                    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                </p>
                <ul>
                    <li>List item one</li>
                    <li>List item two</li>
                    <li>List item three</li>
                </ul>
            </div>
            <h3>Section 4</h3>
            <div>
                <p>
                    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                    mauris vel est.
                </p>
                <p>
                    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                    inceptos himenaeos.
                </p>
            </div>
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
