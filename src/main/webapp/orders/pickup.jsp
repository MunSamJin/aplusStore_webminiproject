<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77c46ba16ddea5666fc1ce880e652cf7"></script>
		<script>
   		
   			$(function(){
   				
   				//명동
   				$("[name=store]").click(function(){
   					let addr= $(this).val();
   					//alert(addr);
   					
   					$("[name=address]").attr("value", "오리역");
   					//alert($("[name=address]").val());
   					
   					let wido =""; //위도
   					let longitude =""; //경도
   					
   					if( addr== "Apple 명동"){
   						$("[name=postcode]").attr("value", "서울 중구 ");
   						$("[name=address]").attr("value", "남대문로 2가 9-1");
   						$("[name=detailAddress]").attr("value", "하이드파크");
   						$("[name=extraAddress]").attr("value", "addr");
   						
   						wido="37.5646423"; longitude = "126.9827078";
   						//alert(wido);
   						} 
   					
   					else if(addr == "Apple 가로수길"){
   						$("[name=postcode]").attr("value", "서울 강남구");
   						$("[name=address]").attr("value", "가로수길 43");
   						$("[name=detailAddress]").attr("value", "addr");
   						$("[name=extraAddress]").attr("value", "addr");
   						
   						wido="37.5208062"; longitude = "127.0227158";} 
   					  
   					else if(addr == "Apple 여의도"){
   						$("[name=postcode]").attr("value", "서울 영등포구");
   						$("[name=address]").attr("value", "국제금융로 10");
   						$("[name=detailAddress]").attr("value", "IFC MALL, L1");
   						$("[name=extraAddress]").attr("value", "addr");
   						
   						wido="37.5256135"; longitude = "126.9260939";} 
   					  
   					else if(addr == "Apple 잠실"){
   						$("[name=postcode]").attr("value", "서울 송파구");
   						$("[name=address]").attr("value", "올림픽로 300");
   						$("[name=detailAddress]").attr("value", "롯데월드몰 1F");
   						$("[name=extraAddress]").attr("value", "addr");
   						
   						wido="37.5134449"; longitude = "127.1041032";}
   					
   					$("#mapTable").show();
   					
   					let container = document.getElementById('map'); //map : 지도를 표시할 div
   			      	let options = {
   			         	center: new kakao.maps.LatLng(wido, longitude), //좌표
   			         	level: 2 //지도의 확대 레벨
   			      	};

   		      		//지도 생성
   			      	let map = new kakao.maps.Map(container, options);
   		      		
   		      		
   		      		//마커가 표실될 위치
   		      		let markerPosition  = new kakao.maps.LatLng(wido, longitude);
   		      		
   		      		//마커 생성
   		      		let marker = new kakao.maps.Marker({position: markerPosition});
   		      		
   		      		//지도 위에 마커 표시
   		      		marker.setMap(map);
   		      		
   		      		//마커 제거
   		      		//marker.setMap(null); 
   		      		
		   		    // 커스텀 오버레이에 표시할 내용입니다     
		   		    // HTML 문자열 또는 Dom Element 입니다 
		   		    let content = "<div class ='label'><span class='left'></span><button class='center'>"+addr+"<br>전자제품 판매점</button><span class='right'></span></div>";
		
		   		    // 커스텀 오버레이가 표시될 위치입니다 
		   		    let position = new kakao.maps.LatLng(wido, longitude);  
		
		   		    // 커스텀 오버레이를 생성합니다
		   		    let customOverlay = new kakao.maps.CustomOverlay({
		   		          position: position,
		   		          content: content   
		   		    });
		
		   		    // 커스텀 오버레이를 지도에 표시합니다
		   		    customOverlay.setMap(map);
   		      		
   				});
   			});
   		</script>
		
		
	
		<!-- 결제 정보 입력받기 : 픽업 -->
		<div>
			<table id="pickupInfo" >
				<tr><td colspan="2" style="text-align: left;"><h1>픽업 매장을 선택해주세요.</h1><br></td></tr> 
				
				<tr><td><h2>이름 입력:</h2></td></tr>
				<tr><td><input type="text" name="pickupName" id="pickupName" placeholder="이름"><br></td></tr>
				
				
				<tr><td><h2>픽업 매장 선택:</h2></td></tr>
				<tr><td><input type="radio" name="store" id="store1" value="Apple 명동"><b>Apple 명동</b></td></tr>
				<tr><td style="font-size: 13px; color:gray">&nbsp&nbsp&nbsp&nbsp서울 중구 남대문로 2가 9-1 하이드파크</td></tr>
				<tr><td><input type="radio" name="store" id="store2" value="Apple 가로수길"><b>Apple 가로수길</b></td></tr>
				<tr><td style="font-size: 13px; color:gray">&nbsp&nbsp&nbsp&nbsp서울 강남구 가로수길 43</td></tr>
				<tr><td><input type="radio" name="store" id="stor3" value="Apple 여의도"><b>Apple 여의도</b></td></tr>
				<tr><td style="font-size: 13px; color:gray">&nbsp&nbsp&nbsp&nbsp서울 영등포구 국제금융로 10 IFC MALL, L1</td></tr>
				<tr><td><input type="radio" name="store" id="stor4" value="Apple 잠실"><b>Apple 잠실</b></td></tr>
				<tr><td style="font-size: 13px; color:gray">&nbsp&nbsp&nbsp&nbsp서울 송파구 올림픽로 300 롯데월드몰 1F</td></tr>
				
				
				<tr><td><input type="hidden" name="postcode" id="postcode"  value=""></td></tr>
				<tr><td><input type="hidden" name="address" id="address"  value=""></td></tr>
				<tr><td><input type="hidden" name="detailAddress" id="detailAddress"  value=""></td></tr>
				<tr><td><input type="hidden" name="extraAddress" id="extraAddress"  value=""></td></tr>
				
				<tr>
					<td id="mapTable" colspan="2" style="text-align: center; display: none;">
						<div id="map" style="width:60%;height:300px;"></div>
					</td>
				</tr>
				
				<!-- <tr><td colspan="2"><br><h2>연락처 정보를 알려주십시오.</h2></td></tr>
				
				<tr>
					<td>
						<input type="text" name="pickupEmail" id="pickupEmail" placeholder="이메일주소">@
						<select name="emailSelect">
							<option value="0">선택</option>
							<option value="@naver.com">naver.com</option>
							<option value="@google.com">gmail.com</option>
						</select>
					</td>
					<td style="font-size: 13px">이메일로 주문 정보를 보내 드립니다.</td>
				</tr>
				<tr>
					<td><input type="text" name="pickupPhone" id="pickupPhone" placeholder="휴대폰번호"></td>
					<td style="font-size: 13px">입력하시는 전화번호는 주문 후 변경할 수 없으므로 맞는 번호인지 확인해 주십시오.</td>
				</tr>
				<tr><td colspan="2"><br><br><hr><br><br></td></tr> -->
			</table> 
		</div>
		
