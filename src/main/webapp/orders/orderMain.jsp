<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style type="text/css">
			#memberGuest{text-align: center; margin-top: 100px;}
			#guest{background-Color: #1263CE; border-radius: 10px; border: 1px;
					font-size: 15px; color: white; width: 70%; height: 50px; cursor: pointer;}
			#memberId{width: 70%; height: 30px; border-radius: 5px; border: 1px solid gray;	font-size: 15px;}
						
			#choice{margin-left: auto; margin-top: 100px; margin-right: auto; width: 80%; text-align: center;}
			#deliver{width: 250px; height: 65px;  font-size: 20px; cursor: pointer;
					border-radius: 5px; border: 1px solid gray; background-color: white;}
			#pickup{width: 250px; height: 65px; font-size: 20px; cursor: pointer;
					border-radius: 5px; border: 1px solid gray; background-color: white;}
					
			#orderInfo{margin-left:auto; margin-top: 100px; margin-right: auto; width: 80%;}
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
						
			#cardInfo{margin-left: auto; margin-right: auto; width: 40%;
						padding: 20px 20px 20px 20px;
						border: 10px solid #F5F5F5; }
			.cardNum{width: 71px; height: 40px; text-align: center; border-radius: 10px; border: 1px solid gray;}
			.cardPwd{width: 71px; height: 40px; text-align: center; border-radius: 10px; border: 1px solid gray;}
			.birth{width: 71px; height: 40px; text-align: center; border-radius: 10px; border: 1px solid gray;}

		</style>
		
		<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77c46ba16ddea5666fc1ce880e652cf7"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
		<script>
		    function execDaumPostcode() {
		       new daum.Postcode({
		           oncomplete: function(data) {
		               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		               var addr = ''; // 주소 변수
		               var extraAddr = ''; // 참고항목 변수
		
		               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                   addr = data.roadAddress;
		               } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                   addr = data.jibunAddress;
		               }
		
		               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		               if(data.userSelectedType === 'R'){
		                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                       extraAddr += data.bname;
		                   }
		                   // 건물명이 있고, 공동주택일 경우 추가한다.
		                   if(data.buildingName !== '' && data.apartment === 'Y'){
		                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                   }
		                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                   if(extraAddr !== ''){
		                       extraAddr = ' (' + extraAddr + ')';
		                   }
		                   // 조합된 참고항목을 해당 필드에 넣는다.
		                   document.getElementById("extraAddress").value = extraAddr;
		                
		               } else {
		                   document.getElementById("extraAddress").value = '';
		               }
		
		               // 우편번호와 주소 정보를 해당 필드에 넣는다.
		               document.getElementById('postcode').value = data.zonecode;
		               document.getElementById("address").value = addr;
		               // 커서를 상세주소 필드로 이동한다.
		               document.getElementById("detailAddress").focus();
		           }
		       }).open();
		   }
		</script>
	
		<script type="text/javascript">
			$(function(){
				
				//Apple ID로 결제하기 - 로그인 화면 가져오기
				
				//방문객 결제
				$("#guest").click(function(){
					$("#choice").show();	
				});
					
				
				//배송을 원합니다.
				$("#deliver").click(function(){
					$("#cardInfo").hide();
					$("#orderInfo").show();				
				});
				
				
				//직접 픽업하겠습니다.
				$("#pickup").click(function(){
					$("#orderInfo").load("pickup.jsp");
					$("#orderInfo").show();
				});
				
				
		
				//결제 페이지로 이동
				$("#pageMove").click(function(){
					$("#memberGuest").hide();
					$("#choice").hide();
					$("#orderInfo").hide();
					$("#cardInfo").show();
				});
				
				
				//결제하기!!
				$(document).on("click","[value=결제]" , function(){
					 
					$.ajax({
				   			url :"../ajax" , //서버요청주소
				   			type:"post", //요청방식(method방식 : get | post | put | delete )
				   			dataType:"text"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
				   			data: $("#orderForm").serialize(), //서버에게 보낼 데이터정보(parameter정보)
				   			success :function(result){ //성공했을때 실행할 함수 
				   				
				   				$("#orderPage").hide();
								$("#cardInfo").hide(); 
				   				
				   				//결제여부 최종확인
				   				alert("결제되었습니다.");
				   		
				   				$("#memberGuest").load("orderSuccess.html");
				   				$("#memberGuest").show();
				   				
				   				
				   			} , 
				   			error : function(err){  //실패했을때 실행할 함수 
				   				alert(err+"에러 발생했어요.");
				   			}  
				   		});//ajax끝
				   });
				
			});//readyEnd
		</script>
	
	</head>
	<body>
		<form name="orderForm" method="post" id="orderForm">
		<input type="hidden" name="key" value="pay">
		<input type="hidden" name="methodName" value="orderInsert">
<!-- 회원 or 비회원 결제 선택하기 -->	
			<div id="memberGuest">
				<h1>더욱 빠르게 결제하시려면 로그인하세요.</h1>
				<table style="margin-left: auto;margin-top: 100px; margin-right: auto;">
					<tr>
						<td style="width: 30%">
							<h2>Apple ID로 결제하기</h2><br>
							<input type="text" name="memberId" id="memberId" placeholder="Apple ID"><br><br> 
						</td>
						<td style="width: 30%; border-left: solid; border-color: #E6E6E6;">
							<h2>방문객 결제</h2><br>
							<input type="button" name="guest" id="guest" value="방문객으로 계속하기"><br><br>
						</td>
					</tr>
				</table>
			</div>
		

	
	
<!-- 배송 또는 픽업 결정 -->	
			<div>	
				<table id="choice" style="display: none;"> 
					<tr>
						<td>
							<hr>
							<h1>주문하신 제품을 어떻게 받으시겠습니까?</h1><br>
							<input type="button" value="배송을 원합니다." id="deliver">
							<input type="button" value="직접 픽업하겠습니다." id="pickup"><br><br><br><br>
							<hr>
						</td>
					</tr>
					
				</table>
			</div>
	
	
	
<!-- 결제 정보 입력받기 : 배송 -->
			<div >
				<table id="orderInfo" style="display: none;"> 
					<tr>
						<td colspan="2" style="text-align: left;">
							<h1>주문하신 제품이 어디로 배송되길 원하십니까?</h1><br>						
						</td>
					</tr> 
					<tr><td><h2>이름 및 주소 입력:</h2></td></tr>
					<tr><td><input type="text" name="orderName" id="orderName" placeholder="이름"><br></td></tr>
					
					<tr><td><input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"></td></tr>
					<tr><td><input type="text" name="postcode" id="postcode"  placeholder="우편번호"></td></tr>
					<tr><td><input type="text" name="address" id="address"  placeholder="주소"></td></tr>
					<tr><td><input type="text" name="detailAddress" id="detailAddress"  placeholder="상세주소"></td></tr>
					<tr><td><input type="text" name="extraAddress" id="extraAddress"  placeholder="참고항목"></td></tr>
					<tr>
						<td colspan="2"><br><h2>연락처 정보를 알려주십시오.</h2></td>
					</tr>
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
						<td>
							<input type="text" name="orderPhone" id="orderPhone" placeholder="휴대폰번호">
						</td>
						<td style="font-size: 13px">입력하시는 전화번호는 주문 후 변경할 수 없으므로 맞는 번호인지 확인해 주십시오.</td>
					</tr>
					<tr><td colspan="2"><br><br><hr><br><br></td></tr>
					<tr>
						<td>						
							<input type="button" value="결제 페이지로 이동" id="pageMove">
						</td>
					</tr>
				</table>
			</div>
		
		
<!-- 신용카드 정보 입력받기 -->
			<div  id="cardInfo" style="display: none;"> 
				<table> 
					<tr>
						<td>신용카드 정보</td>
					</tr>
					<tr>
						<td>
							<b>결제구분</b>
						</td>
						<td>
							<input type="radio" name="card" value="internalCard">국내발급카드 <br>
							<input type="radio" name="card" value="foreignCard">해외발급카드 (Visa/Master/JCB/Diners/Amex)
						</td>
					</tr>
					<tr>
						<td>
							<b>카드번호</b>
						</td>
						<td>
							<input type="text" class="cardNum"/>-<input type="password" placeholder="****" class="cardNum"/>-<input type="text" class="cardNum"/>-<input type="password" placeholder="****" class="cardNum"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>유효기간</b>
						</td>
						<td>
							<select class="cardMonth">
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select> 월
							<select class="cardYear">
								<option value="2022">2022</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
								<option value="2025">2025</option>
								<option value="2026">2026</option>
								<option value="2027">2027</option>
								<option value="2028">2028</option>
								<option value="2029">2029</option>
								<option value="2030">2030</option>
								<option value="2031">2031</option>
								<option value="2032">2032</option>
								<option value="2033">2033</option>
								<option value="2034">2034</option>
								<option value="2035">2035</option>
								<option value="2036">2036</option>
								<option value="2037">2037</option>
								<option value="2038">2038</option>
								<option value="2039">2039</option>
								<option value="2040">2040</option>
							</select> 년
						</td>
					</tr>
					<tr>
						<td>
							<b>비밀번호</b>
						</td>
						<td>
							<input type="password" class="cardPwd"/>XX(앞 2자리)
						</td>
					</tr>
					<tr>
						<td>
							<b>생년월일</b><br>
							<b>(사업자번호)</b>
						</td>
						<td>
							<input type="text" class="birth"> * 생년월일 6자리/사업자번호 10자리
						</td>
					</tr>
					<tr>
						<td>
							<b>할부기간</b>
						</td>
						<td>
							<select name=" installmentSelect" >
								<option value="00">00</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select> 개월
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<br><hr><br>
							<input type="checkbox" >고유식별 정보 수집 및 이용약관
							<br><br><hr>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 12px;">
							* 결제하고자하는 내용을 충분히 확인후, 동의하시면 결제버튼을 눌러주십시오.
						</td>
					</tr>
					<tr><td><br></td></tr>
				</table>
				<div style="text-align: center; ">
					<input type="reset" value="취소" />
					<input type="button" value="결제"/>
				</div>
				
			</div>
		
		</form>
	</body>
</html>