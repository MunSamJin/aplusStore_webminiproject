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
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../css/animate.css">
<!-- Resource style -->
<link rel="stylesheet" href="../css/owl.carousel.css">
<link rel="stylesheet" href="../css/owl.theme.css">
<link rel="stylesheet" href="../css/ionicons.min.css">
<!-- Resource style -->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- Jquery and Js Plugins --> 
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script> 
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script> 
<script type="text/javascript" src="../js/menu.js"></script> 
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script> 

<style type="text/css">
	.cartTable img{width:140px; height:160px;}
	.cartTable td:first-child {display:none;}
	.cartTable td:nth-child(2) {display:none;}
	
</style>

<script type="text/javascript">
	$(function(){
		//결제
		$("#cartToOrder").click(function(){
			//수량 비교?		
			$.ajax({
				url:"${path}/ajax",
				type:"post",
				dataType:"text",
				data:$("#cartForm").serialize(),
				success: function(result){
					if(confirm("결제하시겠습니까?")){
						$("#cartForm").submit();
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
				data: {key:"cart", methodName : "select", emailId: "sikkk@naver.com"/* `${sessionScope.emailId}` */}, 
				success :function(result){
					let str="";
					let totalPrice = 0;
					$.each(result, function(index, item){
						let name = item.modelName.split("_");
						console.log(name);
						let imgName = name[0]+"_"+name[1];
						console.log(imgName);
						
					    str+="<tr>";
					    str+=`<td display='none'>${"${item.cartNum}"}</td>`; //jsp가 되면서 $를 jstl로 서버에서 인식돼버리면서 나오지 않는다
					    str+=`<td display='none'>${"${item.modelNum}"}</td>`;
					    str+="<td><img src='${path}/images/" + imgName + ".jpeg'></a></td>";
					    str+=`<td>${"${item.modelName}"}</td>`;
					    str+="<td><select name='modelCount' id='selectModelCount'>"+
					    		"<option value='"+ item.modelCount +"' selected disabled hidden>"+ item.modelCount +"</option><option value='1'>1</option>"
					    		+"<option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option></select></td>";
					    //str+=`<td>${"${item.modelPrice}"}</td>`;
					    str+="<td>￦" + (item.modelPrice * item.modelCount) + "</td>";
					    str+=`<td><input type='button' value='삭제' name='delete' id=${"${item.cartNum}"}></td>`;
					    str+="</tr>";
					    
					    totalPrice += (item.modelPrice * item.modelCount);
				    });
					
					//$("#cartTable tr:eq(0)").remove();
					$("#cartTable tr:gt(0)").remove();
					$("#cartTable tr:eq(0)").after(str);
					//$("#cartTable").html(str);
					$("#cartEx").text("장바구니에 들어있는 상품입니다	￦" + totalPrice);
					$("#totalPrice1").text("￦"+totalPrice);
					$("#totalPrice2").text("￦"+(totalPrice));
					
				} , 
				error : function(err){  
					alert(err+"에러 발생했어요.");
				}  
			});
		   }
		   
		   
		   
		   //장바구니 삭제
		   $(document).on("click", "[name=delete]", function(){
			   alert($(this).attr("id"));
			   $.ajax({
					url :"${path}/ajax" , 
					type:"post", 
					dataType:"text"  , 
					//data: {key:"cart", methodName : "delete", emailId: `${sessionScope.emailId}`, modelNum: $(this).attr("id")},
					data: {key:"cart", methodName : "delete", cartNum: $(this).attr("id")},
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
					data: {key:"cart", methodName : "update", cartNum: $(this).parent().parent().children('td:eq(0)').text(), modelCount: $(this).val()},
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
			   //location.href("");
			   
		   })
		   
		   
		   select();
	})
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
        <p><button class="btn btn-primary btn-action btn-fill wow fadeInDown" data-wow-delay="0.2s" type="click"  name="cartToOrder" id="cartToOrder">결제</button></p>
      </div>
  
  <form action="${path}/orders/orderMain.jsp" method="post" id="cartForm">
   <div class="split-features">
    <table id="cartTable" style="text-align:center; margin:auto; vertical-align: center; width:1000px;">
      <tr>
      	  <td display="none"></td>
      	  <td display="none"></td>
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
    	<table id="cartTable" style="text-align:center; margin:auto; vertical-align: center; width:1000px;">
    		<hr>
    		<tr>
    			<td>소계</td>
    			<td id="totalPrice1" name="totalPrice1"></td>
    		</tr>
    		<tr>
    			<td>배송</td>
    			<td id="express">무료</td>
    		</tr>
    		<hr>
    		<tr>
    			<td>총계</td>
    			<td id="totalPrice2" name="totalPrice2"></td>
    		</tr>
    		<tr>
    			<td colspan="2"><p>
    			<button class="btn btn-primary btn-action btn-fill wow fadeInDown" data-wow-delay="0.2s" type="click"  name="cartToOrder" id="cartToOrder">결제</button>
    			</p></td>
    		</tr>
    	</table>
    </div>
   </div>
  </form>
 
   
    <!-- Footer Section -->
    <jsp:include page="../common/footer.jsp"/>
  </div>
    
    <!-- Scroll To Top --> 
    
    <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a> 
    
    <!-- Scroll To Top Ends--> 
    
  </div>
  <!-- Main Section --> 
</div>
<!-- Wrapper--> 


</body>
</html>
