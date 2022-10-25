<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#orderInfo{margin-left:auto; margin-top: 50px; margin-right: auto; width: 80%;}
			#orderName{width: 90%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			#postcode{width: 90%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			#address{width: 90%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			#detailAddress{width: 90%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			#extraAddress{width: 90%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			#orderEmail{width: 50%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			select{width: 35%; height: 40px; border-radius: 10px; border: 1px solid gray; text-align: left;} 
			#orderPhone{width: 90%; height: 40px; border-radius: 10px; border: 1px solid gray;}
			#pageMove{width: 90%; height: 40px; cursor: pointer; font-size: 15px; color: white;
						background-Color: #1263CE; border-radius: 10px; border: 1px;}
						
			
		</style>
		
		<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77c46ba16ddea5666fc1ce880e652cf7"></script>
		<script>
   		
   			$(function(){
   				
   				//명동
   				$("#store1").click(function(){
   					$("#mapTable").show();
   					
   					let container = document.getElementById('map'); //map : 지도를 표시할 div
   			      	let options = {
   			         	center: new kakao.maps.LatLng(37.5646423, 126.9827078), //좌표
   			         	level: 3 //지도의 확대 레벨
   			      	};

   		      		//지도 생성
   			      	let map = new kakao.maps.Map(container, options);
   		      		
   		      		//마커가 표실될 위치
   		      		let markerPosition  = new kakao.maps.LatLng(37.5646423, 126.9827078);
   		      		
   		      		//마커 생성
   		      		let marker = new kakao.maps.Marker({position: markerPosition});
   		      		
   		      		//지도 위에 마커 표시
   		      		marker.setMap(map);
   		      		
   		      		//마커 제거
   		      		//marker.setMap(null); 
   				});
   				
   				//가로수길
   				$("#store2").click(function(){
   					let container = document.getElementById('map');
   			      	let options = {
   			         	center: new kakao.maps.LatLng(37.5208062, 127.0227158),
   			         	level: 3
   			      	};

   		      		let map = new kakao.maps.Map(container, options);
   				});
   				
   				//여의도
   				$("#stor3").click(function(){
   					let container = document.getElementById('map');
   			      	let options = {
   			         	center: new kakao.maps.LatLng(37.5256135, 126.9260939),
   			         	level: 3
   			      	};

   		      		let map = new kakao.maps.Map(container, options);
   				});
   				
   				//잠실
   				$("#stor4").click(function(){
   					let container = document.getElementById('map');
   			      	let options = {
   			         	center: new kakao.maps.LatLng(37.5134449, 127.1041032),
   			         	level: 3
   			      	};

   		      		let map = new kakao.maps.Map(container, options);
   				});
   				
   			});
   			
   		</script>
		
		
	</head>
	<body>
		<!-- 결제 정보 입력받기 : 픽업 -->
		<div>
			<table id="orderInfo" >
				<tr>
					<td colspan="2" style="text-align: left;"><h1>픽업 매장을 선택해주세요.</h1><br></td>				
				</tr> 
				
				<tr><td colspan="2"><h2>이름 입력:</h2></td></tr>
				<tr><td><input type="text" name="orderName" id="orderName" placeholder="이름"><br></td></tr>
				
				
				<tr><td><h2>픽업 매장 선택:</h2></td></tr>
				<tr><td><input type="radio" name="store" id="store1" value="Apple 명동"><b>Apple 명동</b></td></tr>
				<tr><td style="font-size: 13px;">&nbsp&nbsp&nbsp&nbsp서울 중구 남대문로 2가 9-1 하이드파크</td></tr>
				<tr><td><input type="radio" name="store" id="store2" value="Apple 가로수길"><b>Apple 가로수길</b></td></tr>
				<tr><td><input type="radio" name="store" id="stor3" value="Apple 여의도"><b>Apple 여의도</b></td></tr>
				<tr><td><input type="radio" name="store" id="stor4" value="Apple 잠실"><b>Apple 잠실</b></td></tr>
				<tr>
					<td id="mapTable" colspan="2" style="text-align: center; display: none;">
						<div id="map" style="width:60%;height:300px;"></div>
					</td>
				</tr>
				
				<tr><td colspan="2"><br><h2>연락처 정보를 알려주십시오.</h2></td></tr>
				
				<tr>
					<td>
						<input type="text" name="orderEmail" id="orderEmail" placeholder="이메일주소">@
						<select name="emailSelect">
							<option value="0">선택</option>
							<option value="@naver.com">naver.com</option>
							<option value="@google.com">gmail.com</option>
						</select>
					</td>
					<td style="font-size: 13px">이메일로 주문 정보를 보내 드립니다.</td>
				</tr>
				<tr>
					<td><input type="text" name="orderPhone" id="orderPhone" placeholder="휴대폰번호"></td>
					<td style="font-size: 13px">입력하시는 전화번호는 주문 후 변경할 수 없으므로 맞는 번호인지 확인해 주십시오.</td>
				</tr>
				<tr><td colspan="2"><br><br><hr><br><br></td></tr>
				<tr><td><input type="button" value="결제 페이지로 이동" id="pageMove"></td></tr>
			</table> 
		</div>
		
	</body>
</html>