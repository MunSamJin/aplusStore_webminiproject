<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>iLand Multipurpose Landing Page Template</title>
    <link rel="icon" href="${path}/images/favicon.png" type="image/png" sizes="16x16">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iLand Multipurpose Landing Page Template">
    <meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
    <link href="${path}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" href="${path}/css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="${path}/css/owl.carousel.css">
    <link rel="stylesheet" href="${path}/css/owl.theme.css">
    <link rel="stylesheet" href="${path}/css/ionicons.min.css">

    <!-- Resource style -->
    <link href="${path}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <style>
        fieldset {
            border: 0;
        }

        label {
            display: block;
            margin: 30px 0 0 0;
        }
        
        .form .hero-section {
			background: #fff;
		}
    </style>

    <!-- Jquery and Js Plugins -->
    <script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="${path}/js/plugins.js"></script>
    <script type="text/javascript" src="${path}/js/menu.js"></script>
    <script type="text/javascript" src="${path}/js/custom.js"></script>
    <script src="${path}/js/jquery.subscribe.js"></script>
    <script type="text/javascript" src="${path}/js/jquery-3.6.1.min.js"></script>
    <style type="text/css">
        #admin{
            height: 300px;
            margin: 250px 100px 100px 100px;
        }
    </style>
    <style type="text/css">
        /* Google Web Font */
        @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500&display=swap');
        * {
            box-sizing: border-box;
        }

        /* Table */
        .member {
            width: 600px;
            background-color: #fff;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            border-radius: 5px;
            overflow: hidden;
        }
        .member caption {
            font-size: 20px;
            margin-bottom: 30px;
        }
        .member tr {
            border-bottom: 1px solid #eee;
        }
        .member tr:last-child {
            border: none;
        }
        .member tr {
            background-color: #ddd;
        }
        .member th,
        .member td {
            padding: 12px;

        }
        .member tr th {
            background-color: royalblue;
            color: #fff;
        }
        .member tr th:first-child {
            border-radius: 5px 0 0 0;
        }
        .member tr th:last-child {
            border-radius: 0 5px 0 0;
        }
        .member tr td:last-child {

            font-weight: 500;
        }

		.subscribe-form .mail,
		input[type="text"], textarea, textarea.form-control{
	    	background-color: #fff;
	    	color: #A1A1A1;
	    }
	    
	    .subscribe-form input {
		    color: #878686;
		    font-family: Open Sans;
		    padding: 10px;
		    font-size: 1.1em;
		    background-color: #fff;
		}
		
		.subscribe-form .mail {
		    padding: 0 293px 0 20px;
		}
		
		b, td {
		    vertical-align: baseline;
		}

        input, select , textarea {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;

            color: var(--button-color);

            margin: 0;
            padding: 0.5rem 1rem;

            font-family: 'Noto Sans KR', sans-serif;
            font-size: 1rem;
            font-weight: 400;

            text-decoration: none;

            border: none;
            border-radius: 4px;

            display: inline-block;
            width: auto;

            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);

            cursor: pointer;

            transition: 0.5s;
        }
        #admin{
            height: 300px;
            margin: 10px 100px 100px 100px;
        }
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
            <div class="col-md-5"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
                                       src="${path}/images/logo1.png" alt="App" id="admin"/></div>
            <div class="col-md-7">
                <div class="hero-content">

                    <c:choose>
                        <c:when test="${empty emailId}">
                            <h1 class="wow fadeInUp" data-wow-delay="0.1s">회원만 질문 가능합니다.</h1>
                        </c:when>
                        <c:otherwise>
                        <h1 class="wow fadeInUp" data-wow-delay="0.1s">궁금한 내용을 물어보세요.</h1>

                        <div  data-wow-delay="0.3s" id="add">


                            <form name="writeForm" method="post" action="${path}/front?key=q&methodName=questionInsert"
                                  onSubmit='return checkValid()' class="subscribe-form wow zoomIn">

                                <table align="center"  width="600px" border="1" class="member">

                                    <tr>
                                        <td width="150" height="20" >
                                            <p align="right"><b><span style=" font-size:10pt;">Category</span></b></p>
                                        </td>

                                        <td><select name="category" class="mail" id="category" required>
                                            <option disabled selected>선택</option>
                                            <option>iphone</option>
                                            <option>watch</option>
                                            <option>airpods</option>
                                        </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="150" height="20">
                                            <p align="right"><b><span style="font-size:10pt;">제목</span></b></p>
                                        </td>
                                        <td width="450" height="20" ><b><span style="font-size:9pt;">
		<input type=text name="subject" size="50"></span></b></td>
                                    </tr>
                                    <tr>
                                        <td width="150" height="20">
                                            <p align="right"><b><span style="font-size:10pt;">질문 내용</span></b></p>
                                        </td>
                                        <td width="450" height="20"><b><span style="font-size:9pt;">
		<textarea name="content" cols="50" rows="10" style="width: 400px; height: 250px"></textarea></span></b></td>
                                    </tr>

                                    <tr align="center">
                                        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;">
            <input type="submit" value="글쓰기" id="submit">
        <input type="reset" value="다시쓰기" id="reset"></span></b></td>
                                    </tr>
                                </table>

                            </form>

                        </c:otherwise>
                    </c:choose>







                    </div>
                    <!-- subscribe message -->
                    <div id="mesaj"></div>
                    <!-- subscribe message -->
                </div>
            </div>
        </div>
    </div>
</div>




<!-- Client Section -->

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
