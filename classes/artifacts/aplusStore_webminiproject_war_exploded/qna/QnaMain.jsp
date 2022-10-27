<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>QnA_main</title>
<link rel="icon" href="images/favicon.png" type="image/png" sizes="16x16">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="iLand Multipurpose Landing Page Template">
<meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
<link href="../hyo_css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../hyo_css/animate.css">
<!-- Resource style -->
<link rel="stylesheet" href="../hyo_css/owl.carousel.css">
<link rel="stylesheet" href="../hyo_css/owl.theme.css">
<link rel="stylesheet" href="../hyo_css/ionicons.min.css">
<!-- Resource style -->
<link href="../hyo_css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<jsp:include page="../common/header.jsp"/>
    <!-- /.navbar-collapse -->
  </div>
  
  
  <!-- /.container-fluid -->
  <div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
    
			<!-- Subscribe Form -->
	    <div class="cta-sub no-color">
	      <div class="container">
	        <div class="cta-inner">
	          <h1 class="wow fadeInUp" data-wow-delay="0s">Apple 지원</h1>
	          
	      </div>
	    </div>
    </div>
  </div>

	<div class="pitch text-center">
      <div class="container">
        <div class="col-md-12">
          <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
            <div class="pitch-icon"> <i class="ion-ios-checkmark-outline"></i> </div>
            <div class="pitch-content">
              <h1><a href="${path}/qna/QnaSub_iphone.jsp">iPhone</a></h1>
            </div>
          </div>
          <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
            <div class="pitch-icon"> <i class="ion-ios-mic-outline"></i> </div>
            <div class="pitch-content">
              <h1><a href="${path}/qna/QnaSub_watch.jsp">Watch</a></h1>
              </div>
          </div>
          <div class="col-md-4 wow fadeInDown" data-wow-delay="0.2s">
            <div class="pitch-icon"> <i class="ion-ios-folder-outline"></i> </div>
            <div class="pitch-content">
              <h1><a href="${path}/qna/QnaSub_airpods.jsp">AirPods</a></h1>
              </div>
          </div>
        </div>
      </div>
    </div>


      <jsp:include page="../common/footer.jsp"/>
  <!-- Main Section --> 
</div>

</body>
</html>
