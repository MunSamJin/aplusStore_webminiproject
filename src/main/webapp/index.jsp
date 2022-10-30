<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <title>A+ Store</title>
  <link rel="icon" href="images/favicon.png" type="image/png" sizes="16x16">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="iLand Multipurpose Landing Page Template">
  <meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
  <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="css/animate.css">
  <!-- Resource style -->
  <link rel="stylesheet" href="css/owl.carousel.css">
  <link rel="stylesheet" href="css/owl.theme.css">
  <link rel="stylesheet" href="css/ionicons.min.css">
  <!-- Resource style -->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<style>
.client-section {background: radial-gradient(black, #0000009c); padding: 15px 0;}
.nopadding {padding: 0 0 40px;}
.review-section {padding: 50px 0;}
.review-single img {width: 100px; height: 100px;}
.img-responsive wow fadeInUp img {width: 120px; height: 120px;}
.col-md-5,.col-md-7 {width: 44%;}
.navbar-default {background-color: #fff;}
.navbar {padding-top: 20px; height: 90px;}
.form .hero-section {padding: 150px 0 0;}
.back-to-top {background: rgb(30 184 88);}
.form .hero-section {background: repeating-linear-gradient(44deg, #ebbcc212, transparent 100px);}
.clients .single img {-webkit-filter: none; opacity: inherit;}
.feature-sub .sub-inner .btn-action {background: #d0112b; border-color: #d0112b;}
.pitch-intro p {font-size: 16px;}
.feature-sub {background: linear-gradient(to right, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(${path}/images/imgStore/magsafe-202209.jpeg) no-repeat center center}
.split-features {background: #f5f5f7; padding: 110px 0;}
.split-content {padding: 120px 250px 50px 10px;}
.second {padding: 120px 30px 50px 250px;}
.pitch {background-color: #f4f4f4;}
.review-section {background: #fff;}
.split-features2 {padding: 100px 0;}
.pitch-intro {padding: 30px 0 70px 0;}
.pitch {padding: 40px 0 40px 0;}

</style>

</head>
<body>
<jsp:include page="common/header.jsp"/>
<!-- /.container-fluid -->
<div class="main app form" id="main"><!-- Main Section-->
  <div class="hero-section">
    <div class="container nopadding">
      <div class="col-md-5"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" style="margin: 60px;" src="${path}/images/imgStore/applecare-plus-homepage_2x.png" alt="App" /> </div>
      <div class="col-md-7">
        <div class="hero-content">
          <h1 class="wow fadeInUp" data-wow-delay="0.1s">Welcome to</h1>
          <h1 class="wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; font-size:70px">Aplus Store!</h1>
          <p class="wow fadeInUp" data-wow-delay="0.1s"> Kosta Aplus Store 에 오신것을 환영합니다! </p>
        </div>
      </div>
   	</div>
  </div>


  <!-- Client Section -->
  <div class="client-section">
    <div class="container text-center">
      <div class="clients owl-carousel owl-theme">
          <div class="single">
          	<a href="${path}/items/iphoneIndex.jsp">
          	<img src="${path}/images/imgStore/store-card-13-iphone-nav-202209.png" alt="아이폰" height="50px" background= "#000"/></a>
          </div>
          <div class="single">
          	<a href="${path}/items/watchIndex.jsp">
          	<img src="${path}/images/imgStore/store-card-13-watch-nav-202209_GEO_KR.png" alt="애플워치" height="50px"/></a>
          </div>
          <div class="single">
          	<a href="${path}/items/ariPodIndex.jsp">
          	<img src="${path}/images/imgStore/store-card-13-airpods-nav-202209.png" alt="에어팟" height="50px"/></a>
          </div>
          <div class="single">
          	<a href="${path}/items/accIndex.jsp">
          	<img src="${path}/images/imgStore/store-card-13-accessories-nav-202209.png" alt="악세서리" height="50px"/></a>
          </div>
          <div class="single">
          	<a href="${path}/items/accIndex.jsp">
          	<img src="${path}/images/imgStore/store-card-13-airtags-nav-202108.png" alt="악세서리" height="50px"/></a>
          </div>
      	</div>
      </div>
    </div>
  </div>
  
    
  
  <div class="app-features text-center" id="features">
    <div class="container">
      <h1 class="wow fadeInDown" data-wow-delay="0.1s">ApplePlue을 더욱 더 즐기는 방법</h1>
      <p class="wow fadeInDown" data-wow-delay="0.2s">How to enjoy appleplus more and more</p>
      <div class="col-md-4 features-left">
        <div class="col-md-12 wow fadeInDown" data-wow-delay="0.2s">
          <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
          <div class="feature-single">
            <h1>MagSafe</h1>
            <p>다채로운 컬러로 착착 붙이는 재미가 있는</br> 케이스 및 지갑. 게다가 더 빠른 무선 충전까지.</p>
          </div>
        </div>
        <div class="col-md-12 wow fadeInDown" data-wow-delay="0.3s">
          <div class="icon"> <i class="ion-ios-briefcase-outline"></i> </div>
          <div class="feature-single">
            <h1>AirPods Pro</h1>
            <p>온몸을 휘감는 듯한 사운드를 선사하는</br> 개인 맞춤형 공간 음향. 오직 Apple에서만 제공!</p>
          </div>
        </div>
        <div class="col-md-12 wow fadeInDown" data-wow-delay="0.4s">
          <div class="icon"> <i class="ion-ios-chatboxes-outline"></i> </div>
          <div class="feature-single">
            <h1>Apple Watch</h1>
            <p>iPhone을 어디에 두었는지 모를 땐?</br> 시계를 탭해 iPhone에서 소리가 울리게 하는 기능이 딱!</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 wow fadeInDown" data-wow-delay="0.5s"> <img class="img-responsive" src="images/iPhone-app.png" alt="App" /> </div>
      <div class="col-md-4 features-left">
        <div class="col-md-12 wow fadeInDown" data-wow-delay="0.6s">
          <div class="icon"> <i class="ion-ios-cloud-download-outline"></i> </div>
          <div class="feature-single">
            <h1>AirTag</h1>
            <p>하나는 열쇠에, 또 하나는 백팩에. 어디 두었는지 기억이 나지 않을 땐, ‘나의 찾기’ 앱으로 찾는 것도 손쉽게.</p>
          </div>
        </div>
        <div class="col-md-12 wow fadeInDown" data-wow-delay="0.7s">
          <div class="icon"> <i class="ion-ios-copy-outline"></i> </div>
          <div class="feature-single">
            <h1>App Store</h1>
            <p>가장 엄격한 개인 정보 보호 기준을 준수하는</br> 180만여 개의 다양한 앱 마련.</p>
          </div>
        </div>
        <div class="col-md-12 wow fadeInDown" data-wow-delay="0.8s">
          <div class="icon"> <i class="ion-ios-game-controller-b-outline"></i> </div>
          <div class="feature-single">
            <h1>apple-one</h1>
            <p>Apple One 음악, 영화, 게임 등을 위한</br> 4가지 서비스를 하나로 묶은 간편한 구독 서비스.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="split-features">
    <div class="col-md-6 nopadding">
      <div class="split-image"> <img class="img-responsive wow fadeIn" src="${path}/images/imgStore/xdr_display__cxbhgrgt5keq_large.jpg" alt="Image" width= "600px"/> </div>
    </div>
    <div class="col-md-6 nopadding">
      <div class="split-content">
        <h1 class="wow fadeInUp">당신만의 iPhone.</h1>
        <p class="wow fadeInUp">iOS 16이 잠금 화면에 자신만의 개성을 더하는 새롭고 재밌는 방식을 선보입니다. 레이어 효과로 사진을 돋보이게 할 수 있고, ‘활동’ 링을</br> 보거나, 다양한 실시간 앱 정보를 확인할 수도 있습니다.</p>
        <ul class="wow fadeInUp">
          <li>App tracking transparency</li>
          <li>Collision detection function</li>
          <li>OLED technology and True Tone technology</li>
          <li>wireless charging</li>
          <li>a bigger screen</li>
          <li>Camera details</li>
        </ul>
      </div>
    </div>
  </div>


  <div class="split-features2">

    <div class="col-md-6 nopadding">
      <div class="split-content second">
        <h1 class="wow fadeInUp">부담 없이 빠져들다.</h1>
        <p class="wow fadeInUp">건강과 피트니스에 대한 통찰을 제공하는 강력한 센서. 여기에 한층 향상된 성능을 위한 더 빠른 듀얼 코어 프로세서까지.</br> 수많은 기능들로 가득 찬 Apple Watch SE, 최신 Apple Watch를</br> 가장 부담없이 만나는 방법입니다.</p>
        <ul class="wow fadeInUp">
          <li>a meeting with speed and style</li>
          <li>Optimization optimization</li>
          <li>Collision detection function</li>
          <li>Remote control of the camera remote control</li>
          <li>Tracking the menstrual cycle tracking</li>
          <li>Various apps</li>
        </ul>
      </div>
    </div>
    <div class="col-md-6 nopadding">
      <div class="split-image"> <img class="img-responsive wow fadeIn" src="${path}/images/imgStore/hero__fmx18j9bq0ya_large.jpg" alt="Image"  width= "600px"/> </div>
    </div>
  </div>



  <div class="pitch text-center">
    <div class="container">
      <div class="pitch-intro">
        <h1 class="wow fadeInDown" data-wow-delay="0.2s">Other Services</h1>
        <p class="wow fadeInDown" data-wow-delay="0.2s">Experience various services in the appropriate application.</p>
      </div>
      <div class="col-md-12">
        <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
          <div class="pitch-icon"><img src="${path}/images/imgStore/communication.png" alt="배송" width= "52px"/></div>
          <div class="pitch-content">
            <h1>업무일 기준 무료 익일 배송</h1>
            <p>오후 3시 이전에 주문된 재고 보유 제품에 한합니다.</p>
          </div>
        </div>
        <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
          <div class="pitch-icon"><img src="${path}/images/imgStore/coin.png" width= "52px" alt="금융"/></div>
          <div class="pitch-content">
            <h1>금융 혜택</h1>
            <p>무이자 할부를 통해 Apple 제품을 부담 없이 구매하실 수 있습니다.</p>
          </div>
        </div>
        <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
          <div class="pitch-icon"><img src="${path}/images/imgStore/delivery2_main.png" width= "60px" alt="질문"/></div>
          <div class="pitch-content">
            <h1>도움이 필요하다면</h1>
            <p>질문이 있으신가요? 전문가와 전화로 상담하거나 온라인으로 채팅하세요. 080-330-8877로 전화 주세요.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  	<div id="review-section" class="review-section">
    <div class="container">
      <div class="col-md-10 col-md-offset-1">
        <div class="reviews owl-carousel owl-theme">
          <div class="review-single">
          <img class="img-circle" src="images/customer1.png" alt="Client Testimonoal" />
            <div class="review-text wow fadeInUp" data-wow-delay="0.2s">
              <p>맡은 역할 자세히</p>
              <h3>고종영</h3>
              <h3>맡은 역할</h3>
            </div>
          </div>
          <div class="review-single"><img class="img-circle" src="images/customer2.png" alt="Client Testimonoal" />
            <div class="review-text">
              <p>맡은 역할 자세히</p>
              <h3>천세륜</h3>
              <h3>맡은 역할</h3>
            </div>
          </div>
          <div class="review-single"><img class="img-circle" src="images/customer3.png" alt="Client Testimonoal" />
            <div class="review-text">
              <p>맡은 역할 자세히</p>
              <h3>엄용식</h3>
              <h3>맡은 역할</h3>
            </div>
          </div>
          <div class="review-single"><img class="img-circle" src="images/customer4.png" alt="Client Testimonoal" />
            <div class="review-text">
              <p>맡은 역할 자세히</p>
              <h3>채란</h3>
              <h3>맡은 역할</h3>
            </div>
          </div>
          <div class="review-single"><img class="img-circle" src="images/customer5.png" alt="Client Testimonoal" />
            <div class="review-text">
              <p>맡은 역할 자세히</p>
              <h3>문삼진</h3>
              <h3>맡은 역할</h3>
            </div>
          </div>
          <div class="review-single"><img class="img-circle" src="images/customer4.png" alt="Client Testimonoal" />
            <div class="review-text">
              <p>맡은 역할 자세히</p>
              <h3>안효경</h3>
              <h3>맡은 역할</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="feature-sub">
    <div class="container">
      <div class="sub-inner">
        <h1 class="wow fadeInUp">Creative Landing App For Your Easy Life! Simple Reliable & Understandable for your customers </h1>
        <a href="#" class="btn btn-action wow fadeInUp">Buy now</a> </div>
    </div>
  </div>


  <!-- Footer Section -->
  <jsp:include page="common/footer.jsp"/>
</div>

<!-- Scroll To Top -->

<a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a>

<!-- Scroll To Top Ends-->

</div>
<!-- Main Section -->
</div>
<!— Wrapper—>

<!— Jquery and Js Plugins —>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script src="js/jquery.subscribe.js"></script>
</body>
</html>
