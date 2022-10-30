<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
<<<<<<< HEAD
	<title>A+ Store</title>
	<link rel="icon" href="../images/favicon.png" type="image/png" sizes="16x16">
=======
	<title>iLand Multipurpose Landing Page Template</title>
	<link rel="icon" href="${path}/images/favicon.png" type="image/png" sizes="16x16">
>>>>>>> seryun

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="iLand Multipurpose Landing Page Template">
	<meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
	<link href="${path}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${path}/css/animate.css">
	<!-- Resource style -->
	<link rel="stylesheet" href="${path}/css/owl.carousel.css">
	<link rel="stylesheet" href="${path}/css/owl.theme.css">
	<link rel="stylesheet" href="${path}/css/ionicons.min.css">
	<!-- Resource style -->
	<link href="${path}/css/style.css" rel="stylesheet" type="text/css" media="all" />

	<!-- Jquery and Js Plugins -->
	<script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="${path}/js/plugins.js"></script>
	<script type="text/javascript" src="${path}/js/menu.js"></script>
	<script type="text/javascript" src="${path}/js/custom.js"></script>
	<script src="${path}/js/jquery.subscribe.js"></script>

	<style type="text/css">
		table img{width:140px; height:160px;}
		#cartTable td:first-child {display:none;}
		#cartTable td:nth-child(2) {display:none;}

	</style>

	<script type="text/javascript">
		$(function(){
			//결제
			$("[name=cartToOrder]").click(function(){
				//수량 비교?
				$.ajax({
					url:"${path}/ajax",
					type:"post",
					dataType:"json",
					data:{key:"cart", methodName : "select", /*emailId: "sikkk@naver.com" `${sessionScope.emailId}` */},
					success: function(result){
						let resultCheck = 0;
						
						$.each(result, function(index, item){
							if(item.modelStock <= 0){ //품절
								resultCheck = 1;
							} else if(item.modelStock < item.modelCount){ //재고량 < 주문수량
								resultCheck = 2;
							}
						})
						
						
						if(resultCheck == 0){
							if(confirm("결제하시겠습니까?")){ //정상
								location.href = "${path}/orders/orderMain.jsp";
							}
						} else if(resultCheck == 1){
							if(confirm(" 품절 상품은 결제에 포함되지 않습니다. 그대로 주문을 진행하려면 확인을 누르세요.")){
								location.href = "${path}/orders/orderMain.jsp";
							}
						} else if(resultCheck == 2){
							if(confirm(item.modelName + " 상품 재고량이 부족합니다. 수량이 맞지 않는 제품은 결제에 포함되지 않습니다. 수량 변경없이 그대로 주문을 진행하려면 확인을 누르세요.")){
								location.href = "${path}/orders/orderMain.jsp";
							}
						}

					},
					error : function(err){
						alert(err+"에러 발생했어요.");
					}
				})

			});

		
		
		
		//장바구니 전체검색
		   function select(){	
			   $.ajax({
				url :"${path}/ajax" , 
				type:"post", 
				dataType:"json"  , 
				data: {key:"cart", methodName : "select" /*,emailId: "sikkk@naver.com" `${sessionScope.emailId}` */}, 
				success :function(result){
					let str="";
					let totalPrice = 0;
					$.each(result, function(index, item){
						if(Object.keys(result).length == 0){//빈 장바구니
							//alert(Object.keys(result).length);
							//str = `<div style='height:500px; text-align:center;'>장바구니가 비었습니다</div>`;
						}
						
						
						//imgName 조작
						let imgName = item.modelName;
						let name = imgName.split("_");
						if((item.category=="iphone") || (item.category=="watch")){
							imgName = name[0]+"_"+name[1];
						}
						
						

					    str+="<tr>";
					    str+=`<td display='none'>${"${item.cartNum}"}</td>`; //jsp가 되면서 $를 jstl로 서버에서 인식돼버리면서 나오지 않는다
					    str+=`<td display='none'>${"${item.modelNum}"}</td>`;
					    str+="<td><img src='${path}/images/" + imgName + ".jpeg'></a></td>";
					    str+=`<td>${"${item.modelName}"}</td>`;
					    str+="<td><select name='modelCount' id='selectModelCount'>"+
					    		"<option value='"+ item.modelCount +"' selected disabled hidden>"+ item.modelCount +"</option><option value='1'>1</option>"
					    		+"<option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option></select><p>"
					    		
					    		if(item.modelStock <= 0){
					    			 str+="<b style='color:red'>  품절</b>"
					    		}
					    		
					    		+"</td>";
					    //str+=`<td>${"${item.modelPrice}"}</td>`;
					    str+="<td>￦" + numberDot(item.modelPrice * item.modelCount) + "</td>";
					    //str+=`<td><input type='button' value='삭제' name='delete' id=${"${item.cartNum}"}></td>`;
					    str+=`<td><input type='button' value='삭제' name='delete' id=${"${item.modelName}"}></td>`;
					    str+="</tr>";
					    
					    totalPrice += (item.modelPrice * item.modelCount);
				    });
					
					
					
					//$("#cartTable tr:eq(0)").remove();
					$("#cartTable tr:gt(0)").remove();
					$("#cartTable tr:eq(0)").after(str);
					//$("#cartTable").html(str);
					
					$("#cartEx").text("장바구니에 들어있는 상품입니다	￦" + (numberDot(totalPrice)));
					
					//let formatPrice = " ￦<fmt:formatNumber value='" + totalPrice + "'/>";
					//$("#totalPrice1").text(formatPrice);
					$("#totalPrice1").text("￦"+(numberDot(totalPrice)));
					$("#totalPrice2").text(" ￦"+(numberDot(totalPrice)));
					
				} , 
				error : function(err){  
					alert(err+"에러 발생했어요.");
				}  
			});
		   }
		   
		   
		   
		   //장바구니 삭제
		   $(document).on("click", "[name=delete]", function(){
			   //alert($(this).attr("id"));
			   $.ajax({
					url :"${path}/ajax" , 
					type:"post", 
					dataType:"text"  , 
					data: {key:"cart", methodName : "delete", emailId: `${sessionScope.emailId}`, modelName: $(this).attr("id")},
					//data: {key:"cart", methodName : "delete", cartNum: $(this).attr("id")},

					success :function(result){
						alert(result);
						select();//다시 전체검색
					} ,
					error : function(err){
						alert(err+"에러 발생했어요.");
					}
				})
			})


		   
		   //장바구니 업데이트
		   $(document).on("change","#selectModelCount",function(){
			   //alert("수정 " + $(this).val());
			   $.ajax({
					url :"${path}/ajax" , 
					type:"post", 
					dataType:"text"  , 
					//data: {key:"cart", methodName : "update", cartNum: $(this).parent().parent().children('td:eq(0)').text(), modelCount: $(this).val()},
					data: {key:"cart", methodName : "update", modelName: $(this).parent().prev().text() , modelCount: $(this).val()},

					success :function(result){
						select();//다시 전체검색

					} ,
					error : function(err){
						alert(err+"에러 발생했어요.");
					}
				})
			})


			
			//이미지 선택시 이동
			$(document).on("click","img",function(){
				alert();

			})
			
			//숫자 콤마
			function numberDot(num){
			    return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}


			select();
		})//readyEnd
	</script>
</head>

<body>
<jsp:include page="../common/header.jsp"/>
<!-- /.container-fluid -->
<!-- Main Section-->
<div class="main app form" id="main">
	<div class="app-features text-center" id="features">
		<div class="container">
			<h1 class="wow fadeInDown" data-wow-delay="0.1s" id="cartEx">장바구니에 들어있는 제품입니다 </h1>
			<p class="wow fadeInDown" data-wow-delay="0.2s"> 모든 주문에 무료 배송 서비스가 제공됩니다 <br class="hidden-xs">

			</p>
			<p><button class="btn btn-primary btn-action btn-fill wow fadeInDown" data-wow-delay="0.2s" type="button"  name="cartToOrder" id="cartToOrder">결제</button></p>
		</div>


		<div class="split-features">
			<table id="cartTable" style="text-align:center; margin:auto; vertical-align: center; width:1000px;">
				<tr style="display:none;">
					<td ></td>
					<td ></td>
					<td width="30%"><!-- <div class="col-md-6 nopadding"> -->
						<div class="split-image"> <img class="img-responsive wow fadeIn" src="../images/iPhone-app.png" alt="Image" width="140px"/> </div>
					</td>

					<td width="40%">
						<div ><!-- class="split-content" -->
							<h2 class="wow fadeInUp">장바구니 상품1</h2>
							<p class="wow fadeInUp">상품 설명</p>
						</div>
					</td>
					<td width="15%"><h2 class="wow fadeInUp">수량</h2></td>
					<td width="15%"><h2 class="wow fadeInUp">가격</h2></td>
					<td><input type="button" value="삭제" name="delete" class="wow fadeInUp"></td>
				</tr>
			</table>
			<div class="split-features">
				<hr>
				<table id="countTable" style="text-align:center; margin:auto; vertical-align: center; width:1000px;">

					<tr><td>소계</td><td id="totalPrice1" ></td></tr>
					<tr><td>배송</td><td id="express">무료</td></tr>
					<tr><td>총계</td><td id="totalPrice2" ><p></td></tr>
					<tr>
						<td colspan="2"><p>
							<button class="btn btn-primary btn-action btn-fill wow fadeInDown" data-wow-delay="0.2s" type="button"  name="cartToOrder" id="cartToOrder">결제</button>
						</p></td>
					</tr>
				</table>
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
<!-- </div> -->
<!-- Wrapper-->


</body>
</html>
