<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="images/favicon.png" type="image/png" sizes="16x16">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="iLand Multipurpose Landing Page Template">
<meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../css/animate.css">
<!-- Resource style -->
<link rel="stylesheet" href="../css/owl.carousel.css">
<link rel="stylesheet" href="../css/owl.theme.css">
<link rel="stylesheet" href="../css/ionicons.min.css">
<!-- Resource style -->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div id="page">
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
                    <a class="navbar-brand page-scroll" href="${path}/index.jsp"><img src="${path}/images/logo1.png" width="80" alt="iLand">
                    </a></div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">



                        <li><a class="page-scroll" href="${path}storeMain.html">Store</a></li>
                        <li><a class="page-scroll" href="${path}/items/iphoneIndex.jsp">iPhone</a></li>
                        <li><a class="page-scroll" href="${path}/items/watchIndex.jsp">Watch</a></li>
                        <li><a class="page-scroll" href="${path}/items/ariPodIndex.jsp">AirPods</a></li>
                        <li><a class="page-scroll" href="${path}/items/accIndex.jsp">????????????</a></li>
                        <li><a class="page-scroll" href="${path}/qna/qnaMain.html">????????????</a></li>
                        
                        <c:choose>
                        <c:when test="${empty emailId}">
                        <li><a class="page-scroll" href="${path}/user/login.jsp">?????????</a></li>
                        </c:when>
                        <c:when test="${not empty emailId}">
                        <li><a class="page-scroll" href="${path}/user/mypage.jsp">??????</a></li>
	      				<li><a href="${pageContext.request.contextPath}/front?key=user&methodName=logout" class="page-scroll">????????????</a></li>
     			    	</c:when> 
                        </c:choose>
                        
                        <li><a class="page-scroll" href="${path}/cart/cart.jsp">????????????</a></li>
                        <li><a class="page-scroll" href="#contact">????????????</a></li>
                        <li><a class="page-scroll" href="${path}/items/search.jsp">
                            <img src="${path}/images/search_icon.png" height="20px">
                            
                        </a></li>
                   
                    </ul>
                    
                   
                </div>
            </div>
        </nav>
        <!-- /.navbar-collapse -->
    </div>
 </div>
 
 <!-- /.container-fluid -->
  <div class="mypage_form" id="mypage"><!-- Main Section-->
    <div class="hero-section">
    
			<!-- Subscribe Form -->
	    <div>
	      <div class="container">
	        <div class="cta-inner" style="margin-top: 50px">
	          <h1 class="wow fadeInUp" data-wow-delay="0s" style="font-size: 70px; font-weight: bold;">${emailName}???,???????????????!</h1>
	      </div>
	    </div>
    </div>
  </div>

	<div class="pitch text-center">
      <div class="container">
        <div class="col-md-14">
          <div class="col-md wow fadeInDown" data-wow-delay="0.2s">
            <div class="pitch-content">
          
              <h1><a href="updateAccount.jsp">???????????? ????????? ???????????? ??????????????????.</a></h1>
            </div>
          </div>
          
              </div>
          </div>
        </div>
      </div>
    </div>


      <jsp:include page="../common/footer.jsp"/>
  <!-- Main Section --> 
 
 
 
 
 
 
 
</div><!-- div(page) ??? -->

<!-- Jquery and Js Plugins --> 
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script> 
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script> 
<script type="text/javascript" src="../js/menu.js"></script> 
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script> 
</body>
</html>



  