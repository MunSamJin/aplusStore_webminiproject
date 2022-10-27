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

                if (s == 128 && m == "13") {
                    $("#span").html("<h1>₩ 1,090,000</h1>").show();
                } else if (s == 256 && m == "13") {
                    $("#span").html("<h1>₩ 1,230,000</h1>").show();
                }else if (s == 512 && m == "13") {
                    $("#span").html("<h1>₩ 1,500,000</h1>").show();

                }else if (s == 128 && m == "13mini") {
                    $("#span").html("<h1>₩ 950,000</h1>").show();
                }else if (s == 256 && m == "13mini") {
                    $("#span").html("<h1>₩ 1,090,000</h1>").show();
                }else if (s == 512 && m == "13mini") {
                    $("#span").html("<h1>₩ 1,360,000</h1>").show();
                }
            });

            $("input[type=radio][name=model]").click(function () {
                let m = $(this).val();
                let s = $("input[type=radio][name=storage]:checked").val();

                if (s == 128 && m == "13") {
                    $("#span").html("<h1>₩ 1,090,000</h1>").show();
                } else if (s == 256 && m == "13") {
                    $("#span").html("<h1>₩ 1,230,000</h1>").show();
                }else if (s == 512 && m == "13") {
                    $("#span").html("<h1>₩ 1,500,000</h1>").show();

                }else if (s == 128 && m == "13mini") {
                    $("#span").html("<h1>₩ 950,000</h1>").show();
                }else if (s == 256 && m == "13mini") {
                    $("#span").html("<h1>₩ 1,090,000</h1>").show();
                }else if (s == 512 && m == "13mini") {
                    $("#span").html("<h1>₩ 1,360,000</h1>").show();
                }
            });



            $("input[type=radio][name=color]").click(function () {
                let c = $(this).val();

                if(c =="midnight"){
                    $("#mainImg").attr("src","../images/iphone-13-main_midnight.jpeg");
                }else if(c =="pink"){
                    $("#mainImg").attr("src","../images/iphone-13-main_pink.jpeg");
                }else if(c =="blue"){
                    $("#mainImg").attr("src","../images/iphone-13-main_blue.jpeg");
                }else if(c =="starlight"){
                    $("#mainImg").attr("src","../images/iphone-13-main_starlight.jpeg");
                }else if(c =="green"){
                    $("#mainImg").attr("src","../images/iphone-13-main_green.jpeg");
                }else if(c =="red"){
                $("#mainImg").attr("src","../images/iphone-13-main_red.jpeg");
            }

            });
        });

    </script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <script type="text/javascript">
        $(function () {
            $("input").checkboxradio();
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
<jsp:include page="../common/header.jsp"/>
<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid -->

<div class="main app form" id="main"><!-- Main Section-->
    <%--    메인 section  iphone--%>
    <div class="hero-section">
        <div class="container">
            <div class="col-md-12 col-sm-12 nopadding">
                <div class="pricing-intro">
                    <h1 class="wow fadeInUp" data-wow-delay="0.2s">Iphone 13 구입하기</h1>
                    ₩1,250,000부터
                </div>
            </div>
        </div>
    </div>


    <div class="split-features">
        <div class="col-md-6 nopadding">
            <div class="split-image">
                <img class="img-responsive wow fadeIn" src="../images/iphone13_main.jpeg" alt="Image" id="mainImg"/>
            </div>
        </div>
        <div class="col-md-6 nopadding">
            <div class="split-content" id="jong">
                <h1 class="wow fadeInUp">모델 선택하기</h1>
                <p class="wow fadeInUp">

                    <label for="13">iphone13</label>
                    <input type="radio" name="model" id="13" value="13">

                    <label for="13mini">iphone13 mini</label>
                    <input type="radio" name="model" id="13mini" value="13mini">

                </p>

                <p class="wow fadeInUp"></p>
                <h1 class="wow fadeInUp">색상 선택하기</h1>
                <p class="wow fadeInUp">

                    <label for="pink">pink</label>
                    <input type="radio" name="color" id="pink" value="pink">
                    <label for="blue">blue</label>
                    <input type="radio" name="color" id="blue" value="blue">
                    <label for="midnight">midnight</label>
                    <input type="radio" name="color" id="midnight" value="midnight">
                    <br>
                    <label for="starlight">starlight</label>
                    <input type="radio" name="color" id="starlight" value="starlight">
                    <label for="green">green</label>
                    <input type="radio" name="color" id="green" value="green">
                    <label for="red">red</label>
                    <input type="radio" name="color" id="red" value="red">

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

                </p>
                <span id="span" hidden></span>
                <div><h1> </h1></div>
                <p class="wow fadeInUp">
                    <input type="button" value="장바구니 넣기" id="cart" class="btn btn-primary btn-lg"/>
                </p>

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
