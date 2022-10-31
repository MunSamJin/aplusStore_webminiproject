<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<style>
 .a{border:solid red 5px}
 span{width:150px; color:red}
 input{border:solid gray 1px}
 table{width:100%}
 th,td{border:1px gray solid; text-align:center;padding:3px}
 h2{text-align:center}
 
 a{text-decoration: none;}
 a:hover{color: red}
 

 .form .hero-section {background: #fff;}
 .nopadding {background: whitesmoke;}
 .subscribe-form .mail {background-color: #fff;}
 .app img {
    
    margin: 65px 140px;
 };
 
 .b {
    width: 100px;
    margin: 65px 140px;
 };
 
 .form .subscribe-form .submit-button {width: 320px;}
 .form .hero-content p {margin: 0 0 15px 0;}
 .form .hero-content {
    padding: 100px 0 100px 20px;
    overflow: hidden;
}
.form .subscribe-form .submit-button {
    padding: 0 130px 0 130px;
}
.col{padding: 10px}

 
</style>

<!-- Jquery and Js Plugins --> 
<script type="text/javascript" src="../js/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-2.1.1.js"></script> 
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/plugins.js"></script> 
<script type="text/javascript" src="../js/menu.js"></script> 
<script type="text/javascript" src="../js/custom.js"></script>
<script src="../js/jquery.subscribe.js"></script> 


<script type="text/javascript" >
$(function(){
	   
	$("#search").on("click" , function(){      
        $.ajax({
                 url :"../ajax" , //서버요청주소
                 type:"post", //요청방식(method방식 : get | post | put | delete )
                 dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
                 data: $("#subscribeform").serialize() ,//서버에게 보낼 데이터정보(parameter정보)
                 success :function(result){ //성공했을때 실행할 함수 
                    alert(result)
                 
                 	$("#subscribeform").hide();
                 	
                    let str="";
  					let state="";
  					let total="";
  					
      				$.each(result, function(index, item){
      				    str+="<tr>";
      				    str+=`<td><img src="${path}/images/${'${item.detailModelName}'}.jpeg" height="150px"></td>`;
      				    str+=`<td>${"${item.detailModelNum}"}</a></td>`;
      				    str+=`<td>${"${item.detailModelName}"}</td>`;
      				    str+=`<td>${"${item.detailQty}"}</td>`;
      				    str+=`<td>${"${item.salePrice}"}</td>`;
      				  	//str+=`<td>${item.orderDTO.orderState}</td>`;
      				  	//if(item.orderDTO.orderState=="상품준비중"){
      				 	//str+=`<td><input type='button' value='주문취소' name='${item.orderDTO.orderState}'></td>`;
      				  	//} else {
      				  	//  str+=`<td>완료</td>`;
      				  	//	}
      				  
      				  	state = item.orderDTO.orderState;    				    
      				    total = item.orderDTO.totalPrice;
      				    
      				  	str+="</tr>";
      			 	});
      				
      				
      				str+="<tr><th colspan='5'>"+"상품상태 : "+"<a href='#'>"+state+"</a></th></tr>";

					str+="<tr><th colspan='5'>"+"총 금액 : "+total+"</th></tr>";
      				
      				$("#listTable tr:gt(0)").remove();
      				$("#listTable tr:eq(0)").after(str);
                 
                 
                    //$("#result").load("GuestPage.html");
                    //$("#result").show();
                    
                  	 
                 } , 
                 error : function(err){  //실패했을때 실행할 함수 
                    alert(err+"에러 발생했어요.");
                 }  
              });//ajax끝
        });
	////////////////////////////////////////////////////////////////////
	 
	//클릭했을 때 값을 폼에 넣기
    $(document).on("click","a", function(){
    	
        
    	let orderState = $(this).text();
    	//alert(orderState);
    	$("#orderState").val(orderState);
    	
    	//alert(${"$('orderState')"});
    	
        //let orderState = $(this).next();
       // $("#orderState").val(orderState);
        
        

    });

    /////////////////////////////////////////////////////////////

    $("#btn").click(function(){
    	let orderState= $("#orderState").val();
        //alert(orderState)
    	
        //let orderState= $("").val();
        //alert("확인" +"orderState: '$(#orderState).val()'");
        //alert("orderState:" +$("#orderState").val());

        $.ajax({
            url :"../ajax" , //서버요청주소
            type:"post", //요청방식(method방식 : get | post | put | delete )
            dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
            data: {key:"pay" , methodName : "update" , orderNum: $("#orderNum").val()}, //서버에게 보낼 데이터정보(parameter정보)  , 
            success :function(result){
            	alert("주문을 취소했습니다.");
            	
            } , //성공했을때 실행할 함수
            error : function(err){
                alert(err+"에러 발생했어요.");
            }  //실패했을때 실행할 함수
        });//ajax끝
        
        $("#inForm > table > tbody > tr:nth-child(1) > td").hide();
        
        $.ajax({
            url :"../ajax" , //서버요청주소
            type:"post", //요청방식(method방식 : get | post | put | delete )
            dataType:"json"  , //서버가 보내온 데이터(응답)타입(text | html | xml | json )
            data: $("#subscribeform").serialize() ,//서버에게 보낼 데이터정보(parameter정보)
            success :function(result){ //성공했을때 실행할 함수 
               alert(result)
            
            	$("#subscribeform").hide();
            	
               let str="";
					let state="";
					let total="";
					
 				$.each(result, function(index, item){
 				    str+="<tr>";
 				    str+=`<td><img src="${path}/images/${'${item.detailModelName}'}.jpeg" height="150px"></td>`;
 				    str+=`<td>${"${item.detailModelNum}"}</a></td>`;
 				    str+=`<td>${"${item.detailModelName}"}</td>`;
 				    str+=`<td>${"${item.detailQty}"}</td>`;
 				    str+=`<td>${"${item.salePrice}"}</td>`;
 				  	//str+=`<td>${item.orderDTO.orderState}</td>`;
 				  	//if(item.orderDTO.orderState=="상품준비중"){
 				 	//str+=`<td><input type='button' value='주문취소' name='${item.orderDTO.orderState}'></td>`;
 				  	//} else {
 				  	//  str+=`<td>완료</td>`;
 				  	//	}
 				  
 				  	state = item.orderDTO.orderState;    				    
 				    total = item.orderDTO.totalPrice;
 				    
 				  	str+="</tr>";
 			 	});
 				
 				
 				str+="<tr><th colspan='5'>"+"상품상태 : "+"<a href='#'>"+state+"</a></th></tr>";

				str+="<tr><th colspan='5'>"+"총 금액 : "+total+"</th></tr>";
 				
 				$("#listTable tr:gt(0)").remove();
 				$("#listTable tr:eq(0)").after(str);
            
            
               //$("#result").load("GuestPage.html");
               //$("#result").show();
               
             	 
            } , 
            error : function(err){  //실패했을때 실행할 함수 
               alert(err+"에러 발생했어요.");
            }  
         });//ajax끝
    });



	   
	   
  
});//ready끝

</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid -->
  
  <div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
      <div class="container nopadding">
      <div class="col">
      <!-- 파워포인트에서 배경제거 해서 새로 넣어주시면 더 깔끔해요! -->
        <div class="col-md-5"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="../images/delivery.png" alt="App" /> </div>
        <div class="col-md-7">
          <div class="hero-content">
            <h1 class="wow fadeInUp" data-wow-delay="0.1s">배송조회</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> 
            
             <form class="subscribe-form wow zoomIn"  method="post" name="subscribeform" id="subscribeform">
              <input class="mail" type="hidden" name="key" value="pay" ><br>  
               <input class="mail" type="hidden" name="methodName" value="getOrders"><br>  
              <input class="mail" type="text" name="orderNum" placeholder="주문번호" autocomplete="off" id="orderNum"><br>            
              <input class="mail" type="email" name="realEmail" placeholder="이메일주소" autocomplete="off" id="realEmail">
              <input class="submit-button" type="button" value="조회하기" name="search" id="search">
             </form>
                 <!-- Scroll To Top --> 
    
     <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a> 
    
    <!-- Scroll To Top Ends--> 
    </div>
  </div>
  <!-- Main Section --> 
  
<!-- Wrapper--> 
    
<table id="listTable" cellspacing="0">
		<th></th>
		<th>주문상세번호</th>
		<th>상품명</th>
		<th>주문수량</th>
		<th>제품금액</th>
		
	</tr>	
	
</table>
<!-- 주문취소 폼 -->
    <form name="inForm" method="post" id="inForm">
        <table cellspacing="0">
            </tr>
            <tr>
                <td>
                	<input type="text" size="8" name="orderState" id="orderState">
                	<input type="button" name="orderState" value="주문취소" id="btn">&nbsp;&nbsp;
					
                </td>
            </tr>
            <tr>
                <td colspan="5" align="center">
                    <input type="hidden" name="key" value="pay">
                    <input type="hidden" name="methodName" value="insert">         
                </td>
            </tr>
        </table>
    </form>
    <br>



<!-- footer -->
          <jsp:include page="../common/footer.jsp"/>


</body>
</html>

