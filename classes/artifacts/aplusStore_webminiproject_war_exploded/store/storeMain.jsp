<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>iLand Multipurpose Landing Page Template</title>
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
		
		<style type="text/css">
			table{cursor: pointer;}
			table > tbody > tr:nth-child(3) > td{font-weight: bold; font-size: 18px}
			table > tbody > tr:nth-child(5) > td{font-size: 14px; color: gray;}
			table > tbody > tr:nth-child(6) > td{font-size: 14px; color: gray;}
			table > tbody > tr:nth-child(8) > td{font-size: 14px; color: gray;}
		
		</style>
		
		<script type="text/javascript" src="${path}/js/jquery-3.6.1.min.js"></script>
		
		<script type="text/javascript">
			$(function(){
				
				
				$("#myeongdong").click(function(){
					window.open("myeongdong.jsp", "_self");
				});
				
				$("#garosugil").click(function(){
					window.open("garosugil.jsp", "_self");
				});
				
				$("#yeouido").click(function(){
					window.open("yeouido.jsp", "_self");
				});
				
				$("#jamsil").click(function(){
					window.open("jamsil.jsp", "_self");
				});
				
				
			});
	
		</script>
</head>
<body>

	<jsp:include page="../common/header.jsp"/>

	<div class="wrapper">
	
	  <div class="main app form" id="main"><!-- Main Section-->
	    <div class="hero-section">
	      <div class="container nopadding">
	        
	        <div style="margin-left: auto; margin-right: auto; text-align: center;">
	          <div class="hero-content">
	            <h1 class="wow fadeInUp" data-wow-delay="0.1s">A+ Store??? ?????? ????????? ????????? ??? ?????? A+ Store ??????</h1>
	            <p class="wow fadeInUp" data-wow-delay="0.2s"> A+ ????????? ????????????, ???????????? ????????? ?????? ?????? ??? ????????????. </p>
	            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
	              <!-- subscribe message -->
	        	<div id="mesaj"></div>

	            </div>
	          </div>
	        </div>
	        
	       <div style="width: 10%; margin-left: auto;margin-right: auto;"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="${path}/images/maps-icon-8214.png" alt="App"/></div>
	      </div>
	    </div>
	
	    <div id="pricing" class="pricing-section text-center">
	      <div class="container">
	        <div class="col-md-12 col-sm-12 nopadding">
	          <div class="pricing-intro">
	            <h1 class="wow fadeInUp" data-wow-delay="0s">????????? ?????? ??????</h1>
	  		  </div>
	          
	          <div class="col-sm-3" id="myeongdong">
	            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
	              <table style="text-align: left;" >
	              	<tr>
	              		<td>
	              			<img src="${path}/images/imgStore/apple??????.jpg"  width="100%">
	              		</td>
	              	</tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>A+ Store ??????</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ?????? ???????????? 2??? 9-1</td></tr>
	              	<tr><td>???????????????</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ?????? 10:00 ??????</td></tr>
	              	
	              </table>
	            </div>
	          </div>
	          
	          <div class="col-sm-3" id="garosugil">
	            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
	              <table style="text-align: left;">
	              	<tr>
	              		<td>
	              			<img src="${path}/images/imgStore/apple????????????.jpg"  width="100%">
	              		</td>
	              	</tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>A+ Store ????????????</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ?????????</td></tr>
	              	<tr><td>???????????? 43</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ?????? 10:00 ??????</td></tr>
	              	
	              </table>
	            </div>
	          </div>
	          
	          <div class="col-sm-3" id="yeouido">
	            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
	              <table style="text-align: left;">
	              	<tr>
	              		<td>
	              			<img src="${path}/images/imgStore/apple?????????.jpg"  width="100%">
	              		</td>
	              	</tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>A+ Store ?????????</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ???????????? ??????????????? 10</td></tr>
	              	<tr><td>IFC MALL, L1</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ?????? 10:00 ??????</td></tr>
	              	
	              </table>
	            </div>
	          </div>
	          
	          <div class="col-sm-3" id="jamsil">
	            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
	              <table style="text-align: left;">
	              	<tr>
	              		<td>
	              			<img src="${path}/images/imgStore/apple??????.png"  width="100%">
	              		</td>
	              	</tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>A+ Store ??????</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ????????? ???????????? 300</td></tr>
	              	<tr><td>??????????????? 1F</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>?????? ?????? 10:00 ??????</td></tr>
	              	
	              </table>
	            </div>
	          </div>
	          
	         </div>
	       </div>
	     </div>
	   </div> 
	</div>
	    
	<!-- Scroll To Top --> 
	<div>
		<a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a> 
	    <!-- Scroll To Top Ends--> 
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
