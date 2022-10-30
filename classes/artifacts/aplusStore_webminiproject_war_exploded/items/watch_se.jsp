<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                let color = $("input[type=radio][name=color]:checked").val();
                let size = $("input[type=radio][name=size]:checked").val();
                let gps = $("input[type=radio][name=gps]:checked").val();
                let modelName = "_" + color + "_" + size+ "_" +gps;
                location.href = "${path}front?key=cart&methodName=insert&modelName=se" + modelName;

            });

            $("input[type=radio][name=size]").click(function () {
                let g = $("input[type=radio][name=gps]:checked").val();
                let s = $(this).val()

                if (s == 40 && g == "gps") {
                    $("#span").html("<h1>₩ 359,000</h1>").show();
                } else if (s == 40 && g == "cellular") {
                    $("#span").html("<h1>₩ 429,000</h1>").show();
                }else if (s == 44 && g == "gps") {
                    $("#span").html("<h1>₩ 399,000</h1>").show();
                }else if (s == 44 && g == "cellular") {
                    $("#span").html("<h1>₩ 469,000</h1>").show();
                    }
            });

            $("input[type=radio][name=gps]").click(function () {
                let g = $(this).val();
                let s = $("input[type=radio][name=size]:checked").val();

                if (s == 40 && g == "gps") {
                    $("#span").html("<h1>₩ 359,000</h1>").show();
                } else if (s == 40 && g == "cellular") {
                    $("#span").html("<h1>₩ 429,000</h1>").show();
                }else if (s == 44 && g == "gps") {
                    $("#span").html("<h1>₩ 399,000</h1>").show();
                }else if (s == 44 && g == "cellular") {
                    $("#span").html("<h1>₩ 469,000</h1>").show();
                }

            });

            $("input[type=radio][name=color]").click(function () {
                let c = $(this).val();

                if(c =="starlight"){
                    $("#mainImg").attr("src","../images/watch-se-main_starlight.jpeg");
                }else if(c =="midnight"){
                    $("#mainImg").attr("src","../images/watch-se-main_midnight.jpeg");
                }else if(c =="silver"){
                    $("#mainImg").attr("src","../images/watch-se-main_silver.jpeg");
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
                    <h1 class="wow fadeInUp" data-wow-delay="0.2s">Apple Watch SE 구매하기</h1>
                    ₩ 359,000부터
                </div>
            </div>
        </div>
    </div>


    <div class="split-features">
        <div class="col-md-6 nopadding">
            <div class="split-image">
                <img class="img-responsive wow fadeIn" src="../images/watch_8_main.jpeg" alt="Image" id="mainImg"
                     style="height: 440px; border-radius: 20px;"/>
            </div>
        </div>
        <div class="col-md-6 nopadding">
            <div class="split-content" id="jong">


                <p class="wow fadeInUp"></p>
                <h1 class="wow fadeInUp">색상</h1>
                <p class="wow fadeInUp">

                    <label for="midnight">midnight</label>
                    <input type="radio" name="color" id="midnight" value="midnight">
                    <label for="silver">silver</label>
                    <input type="radio" name="color" id="silver" value="silver">
                    <label for="starlight">starlight</label>
                    <input type="radio" name="color" id="starlight" value="starlight">


                </p>
                <p class="wow fadeInUp"></p>
                <h1 class="wow fadeInUp">케이스 크기</h1>
                <p class="wow fadeInUp">


                    <label for="40">40mm</label>
                    <input type="radio" name="size" id="40" value="40">
                    <label for="44">44mm</label>
                    <input type="radio" name="size" id="44" value="44">

                </p>
                <p class="wow fadeInUp"></p>
                <h1 class="wow fadeInUp">연결성</h1>
                <p class="wow fadeInUp">


                    <label for="gps">gps</label>
                    <input type="radio" name="gps" id="gps" value="gps">
                    <label for="cellular">gps + cellular</label>
                    <input type="radio" name="gps" id="cellular" value="cellular">

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
