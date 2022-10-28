<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>QnA_sub</title>
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
<style type="text/css">
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        padding: 8px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {background-color: lightcyan;}
    
    fieldset {border: 0;}
    .overflow {height: 200px;}
    .form .hero-section {background: #fff;}
    
    label {
        display: block;
        margin: 30px 0 0 0;
    }
    
    input[type="text"], textarea, textarea.form-control {background: #fff;}
    input[type="text"], textarea, textarea.form-control {padding: 0 70px 0 20px; height: 42px;}
</style>
</head>
<body>


<jsp:include page="../common/header.jsp"/>
    <!-- /.navbar-collapse -->
  </div>
  

  
<!-- /.container-fluid -->
  <div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
      <div class="container nopadding">
        <div class="col-md-5"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="../images/apple_watch.png" alt="App" /> </div>
        <div class="col-md-7">
          <div class="hero-content">
            <h1 class="wow fadeInUp" data-wow-delay="0.1s">Watch</h1>
            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
              <form class="subscribe-form wow zoomIn" action="php/subscribe.php" method="post" name="query" id="query">
              <input id="query" type="text" name="query" placeholder="검색 또는 질문하기" autocomplete="off" id="query" >
              <input class="submit-button" type="submit" value="Subscribe" name="send" id="subsubmit">
                                          
              <a href="../qna/QnaWrite.jsp"><input class="submit-button" type="button" value="question" name="send" ></a>
            </form>
          </div>
        </div>
      </div>
    </div>
   </div>
   
   
        <div class="navbar-header"> <!-- 홈페이지의 로고 -->
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    <div class= "container">
    	<div class="row">
    	    <table class= "table table-stripped" style= "text-align: center; boarder: 1px solid #dddddd">

    	    	<tr>
                    <th style="background-color: #1eb858; text-align: center; width: 50%; color: #fff;">제목</th>
                    <th style="background-color: #1eb858; text-align: center; width: 20%; color: #fff;">질문자</th>
                    <th style="background-color: #1eb858; text-align: center; width: 20%; color: #fff;">작성일</th>
                    <th style="background-color: #1eb858; text-align: center; width: 10%; color: #fff;">조회수</th>
    	    		
    	    	</tr>

    	    </table>
    	</div>
    </div>

	  <jsp:include page="../common/footer.jsp"/>
</div>

</body>
</html>
