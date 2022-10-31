<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>

		
		<link rel="icon" href="${path}/images/favicon.png" type="image/png" sizes="16x16">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="iLand Multipurpose Landing Page Template">
		<meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
		<link href="${path}/hyo_css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
		<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="${path}/hyo_css/animate.css">
	<!-- Resource style -->
		<link rel="stylesheet" href="${path}/hyo_css/owl.carousel.css">
		<link rel="stylesheet" href="${path}/hyo_css/owl.theme.css">
		<link rel="stylesheet" href="${path}/hyo_css/ionicons.min.css">
	<!-- Resource style -->
		<link href="${path}/hyo_css/style.css" rel="stylesheet" type="text/css" media="all" />
		
	</head>
	<body>
	
	<jsp:include page="../common/header.jsp"/>
	
		
	<div class="wrapper">
	
	  <div class="main app form" id="main"><!-- Main Section-->
	    <div class="hero-section">
	      <div class="container nopadding">
	        
	        <div style="margin-left: auto; margin-right: auto; text-align: center;">
	          <div class="hero-content">
	            <h1 class="wow fadeInUp" data-wow-delay="0.1s">결제가 완료되었습니다.</h1>
	            <p class="wow fadeInUp" data-wow-delay="0.2s">감사합니다.</p>
	            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
	              <!-- subscribe message -->
	        	<div id="mesaj"></div>

	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
		
	<jsp:include page="../common/footer.jsp"/>

	
	<!-- Jquery and Js Plugins --> 
	<script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="${path}/js/plugins.js"></script>
	<script type="text/javascript" src="${path}/js/menu.js"></script>
	<script type="text/javascript" src="${path}/js/custom.js"></script>
	<script src="${path}/js/jquery.subscribe.js"></script>
	</body>
</html>