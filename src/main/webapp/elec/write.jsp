<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">

<title>iLand Multipurpose Landing Page Template</title>
    <link rel="icon" href="${path}/images/favicon.png" type="image/png" sizes="16x16">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iLand Multipurpose Landing Page Template">
    <meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" href="${path}/css/animate.css">
    <!-- Resource style -->
    <link rel="stylesheet" href="${path}/css/owl.carousel.css">
    <link rel="stylesheet" href="${path}/css/owl.theme.css">
    <link rel="stylesheet" href="${path}/css/ionicons.min.css">
    <!-- Resource style -->
    <link href="${path}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Jquery and Js Plugins -->
    <script type="text/javascript" src="${path}/js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="${path}/js/plugins.js"></script>
    <script type="text/javascript" src="${path}/js/menu.js"></script>
    <script type="text/javascript" src="${path}/js/custom.js"></script>
    <script src="${path}/js/jquery.subscribe.js"></script>

 

<SCRIPT language=javascript>
function checkValid() {
    var f = window.document.writeForm;
		
	if ( f.q_subject.value == "") {
	    alert( "제목을 입력해 주세요." );
	    f.model_num.focus();
		return false;
    }
	if ( f.emailId.value == "" ) {
		alert( "emailId를 입력해 주세요." );
		f.model_name.focus();
		return false;
	}
	if ( f.q_content.value == "" ) {
        alert( "질문 내용을 입력해 주세요." );
        f.description.focus();
        return false;
    }
	
    return true;
}
</SCRIPT>
</HEAD>
<BODY>
<jsp:include page="../common/header.jsp"/>
<div>
<form name="writeForm" method="post" action="${path}/front?key=elec&methodName=insert" 
  onSubmit='return checkValid()' enctype="multipart/form-data">
<!-- 
     아래 문장으로 전송하면 post방식으로 전송되고 현재 파일업로드 때문에 enctype="multipart/form-data" 설정되어 있기때문에 
     request로 값을 받을수가 없다.( MulitpartRequest로 받아야한다.) 그런데 Controller로 가기전에 Controller를 찾기위해서 
     DispatherServlet에서 request로 두개의 값을 받고 있기때문에 key, methodName은 get방식으로 별도로 전송해야한다.
     
	<input type="hidden" name="key" value = "elec" />
	<input type="hidden" name="methodName" value = "insert" />  

 -->
<table align="center" cellpadding="5" cellspacing="2" width="600" border="1" >
    <tr>
        <td width="1220" height="45" colspan="2" bgcolor="#00cc00">
            <p align="center"><font color="white" size="3"><b> 질문 등록 </b></font></p>
        </td>
    </tr>
    <tr>
        <td width="200" height="35" >
            <p align="right"><b><span style="font-size:10pt;">제목</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<input type=text name="q_num" size="52"></span></b></td>
    </tr>
    <tr>
        <td width="150" height="35">
            <p align="right"><b><span style="font-size:10pt;">emailId</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<input type=text name="email_id" size="52"></span></b></td>
    </tr>
    <tr>
        <td width="150" height="250">
            <p align="right"><b><span style="font-size:10pt;">질문 내용</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<textarea name="description" cols="50" rows="16"></textarea></span></b></td>
    </tr>
    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;"><input type=submit value=등록하기> 
        <input type=reset value=다시쓰기></span></b></td>
    </tr>
</table>
</form>

