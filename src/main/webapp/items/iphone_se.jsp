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
                let model = "se";
                let color = $("input[type=radio][name=color]:checked").val();
                let storage = $("input[type=radio][name=storage]:checked").val();
                let modelName = model + "_" + color + "_" + storage;
                location.href = "${path}/front?key=cart&methodName=insert&modelName=" + modelName;

            });

            $("input[type=radio][name=storage]").click(function () {
                let s = $(this).val()

                if (s == 64) {
                    $("#span").html("<h1>₩ 650,000</h1>").show();
                } else if (s == 128) {
                    $("#span").html("<h1>₩ 730,000</h1>").show();
                }else if (s == 256) {
                    $("#span").html("<h1>₩ 880,000</h1>").show();
                }

            });


            $("input[type=radio][name=color]").click(function () {
                let c = $(this).val();


                if(c =="midnight"){
                    $("#mainImg").attr("src","../images/iphone-se-main_midnight.jpeg");

                }else if(c =="starlight"){
                    $("#mainImg").attr("src","../images/iphone-se-main_starlight.jpeg");

                $("#cart").click(function () {
                    let modelName = "_"+
                        color.options[color.selectedIndex].value+"_"+
                        storage.options[storage.selectedIndex].value;
					//test 경로
                    location.href ="${path}/front?key=cart&methodName=insert&emailId=sikkk@naver.com&modelName=se"+modelName;


                });


                }else if(c =="red"){
                    $("#mainImg").attr("src","../images/iphone-se-main_red.jpeg");
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
                    <h1 class="wow fadeInUp" data-wow-delay="0.2s">Iphone se 구입하기</h1>
                    ₩1,250,000부터
                </div>
            </div>
        </div>
    </div>


    <div class="split-features">
        <div class="col-md-6 nopadding">
            <div class="split-image">
                <img class="img-responsive wow fadeIn" src="../images/iphone-se_main.jpeg" alt="Image" id="mainImg"/>
            </div>
        </div>
        <div class="col-md-6 nopadding">
            <div class="split-content" id="jong">


                <p class="wow fadeInUp"></p>
                <h1 class="wow fadeInUp">색상 선택하기</h1>
                <p class="wow fadeInUp">


                    <label for="midnight">midnight</label>
                    <input type="radio" name="color" id="midnight" value="midnight">
                    <label for="starlight">starlight</label>
                    <input type="radio" name="color" id="starlight" value="starlight">
                    <label for="red">red</label>
                    <input type="radio" name="color" id="red" value="red">

                </p>
                <p class="wow fadeInUp"></p>
                <h1 class="wow fadeInUp">용량 선택하기</h1>
                <p class="wow fadeInUp">


                    <label for="64">64</label>
                    <input type="radio" name="storage" id="64" value="64">
                    <label for="128">128</label>
                    <input type="radio" name="storage" id="128" value="128">
                    <label for="256">256</label>
                    <input type="radio" name="storage" id="256" value="256">

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
