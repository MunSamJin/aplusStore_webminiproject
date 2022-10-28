<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>iLand Multipurpose Landing Page Template</title>
		<link rel="icon" href="../images/favicon.png" type="image/png" sizes="16x16">
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
	<style type="text/css">
		table{margin-left:auto; margin-right:auto; width: 50%}
		tr,td{text-align: left;}
		
		table > tbody > tr:nth-child(3) > td{font-weight: bold; font-size: 18px;}
		table > tbody > tr:nth-child(5) > td{font-size: 14px; color: gray;}
		table > tbody > tr:nth-child(6) > td{font-size: 14px; color: gray;}
		table > tbody > tr:nth-child(10) > td{font-weight: bold; font-size: 18px}
		table > tbody > tr:nth-child(12) > td{font-size: 14px; color: gray;}
			.center{font-weight: bold; color: gray; background-color: white; 
					border: 1px solid gray; border-radius: 15px; font-size: 10px;}
		
	</style>
	
	<script type="text/javascript" src="${path}/js/jquery-3.6.1.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77c46ba16ddea5666fc1ce880e652cf7"></script>
	
	<script type="text/javascript">
		$(function(){
			//명동
				let container = document.getElementById('map'); 
				let options = { //지도를 생성할 때 필요한 기본 옵션
					center: new kakao.maps.LatLng(37.5208062, 127.0227158),
					level: 3 //지도의 레벨(확대, 축소 정도)
				};

				let map = new kakao.maps.Map(container, options);
			
		     	//마커가 표실될 위치
		      	let markerPosition  = new kakao.maps.LatLng(37.5208062, 127.0227158);
		      		
		      	//마커 생성
		      	let marker = new kakao.maps.Marker({position: markerPosition});
		      		
		      	//지도 위에 마커 표시
		      	marker.setMap(map);
		      		
		      	//마커 제거
		      	//marker.setMap(null); 
		      		
	   		    // 커스텀 오버레이에 표시할 내용입니다     
	   		    // HTML 문자열 또는 Dom Element 입니다 
	   		    let content = "<div class ='label'><span class='left'></span><button class='center'>"+"Aplus Store 가로수길"+"<br>전자제품 판매점</button><span class='right'></span></div>";
	
	   		    // 커스텀 오버레이가 표시될 위치입니다 
	   		    let position = new kakao.maps.LatLng(37.5208062, 127.0227158);  
	
	   		    // 커스텀 오버레이를 생성합니다
	   		    let customOverlay = new kakao.maps.CustomOverlay({
	   		          position: position,
	   		          content: content   
	   		    });
	
	   		    // 커스텀 오버레이를 지도에 표시합니다
	   		    customOverlay.setMap(map);
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
	            <h1 class="wow fadeInUp" data-wow-delay="0.1s">Aplus Store 가로수길</h1>
	            <p class="wow fadeInUp" data-wow-delay="0.2s"> 폐점 시간 10:00 오후</p>
	            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
	              <!-- subscribe message -->
	        	<div id="mesaj"></div>
				
	            </div>
	          </div>
	        </div>
	        
	       <div style="width: 100%; margin-left: auto;margin-right: auto;"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="${path}/images/imgStore/apple가로수길.jpg" alt="App"/></div>
	      </div>
	    </div> 
	  </div> 
	  
	 <div id="pricing" class="pricing-section text-center">
	      <div class="container">
	        <div class="col-md-12 col-sm-12 nopadding">
	          <div class="pricing-intro">
	            <h1 class="wow fadeInUp" data-wow-delay="0s">지도 및 찾아오는 길</h1>
	  		  </div>
	          
	          <div>
	            <div class="wow fadeInUp" data-wow-delay="0.4s">
	              <table >
	              	<tr><td id="map" style="width:350px;height:350px;border-radius: 15px"></td></tr>
	              	<tr><td><br></td></tr>	
	              	<tr><td>주소</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>서울 강남구</td></tr>
	              	<tr><td>가로수길 43</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>찾아오는 길</td></tr>
	              	<tr><td><br></td></tr>
	              	<tr><td>Aplus Store 가로수길은 패션과 문화의 거리, 가로수길의 중간 쯤에 위치해 있습니다. 압구정로 12길과 도산대로 13길이 만나는 지점에 가깝죠. 주차공간이 여의치 않으므로 대중교통을 이용하시길 바랍니다. 대중교통편: 지하철 3호선 신사역 8번 출구에서 도보로 10분 거리입니다. 주변에 버스정류장도 있습니다.</td></tr>
	              </table>
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
	<script type="text/javascript" src="../js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="../js/plugins.js"></script>
	<script type="text/javascript" src="../js/menu.js"></script>
	<script type="text/javascript" src="../js/custom.js"></script>
	<script src="../js/jquery.subscribe.js"></script>
</body>
</html>
