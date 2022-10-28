<%@ page info="게시판 수정하기" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../common/header.jsp"/>

<HTML>
<HEAD>
<link rel="stylesheet" href="css/style.css">

<SCRIPT>
function checkValid() {
	var f = window.document.updateForm;

	if ( f.category.value == "" ) {
        alert( "질문 종류를 입력해 주세요" );
        f.password.focus();
        return false;
    }
	if ( f.q_subject.value == "" ) {
		alert( "제목을 입력해 주세요." );
		f.modelName.focus();
		return false;
	}
	if ( f.emailId.value == "" ) {
		alert( "emailId를 입력해 주세요." );
		f.price.focus();
		return false;
	}
	if ( f.q_content.value == "" ) {
        alert( "질문 내용을 입력해 주세요." );
        f.description.focus();
        return false;
    }
	
    
}

</SCRIPT>
</HEAD>
<BODY>


<form name=updateForm method=post action="${path}/front" onSubmit="return checkValid()">
    <input type="hidden" name="key" value="elec" >
    <input type="hidden" name="methodName" value="update" >
    <input type='hidden' name='emailId' value="${elec.emailId}">
    
	<table align="center" cellpadding="5" cellspacing="1" width="600" border="1">
    <tr>
        <td width="1220" height="20" colspan="2" bgcolor="#00cc00">
            <p align="center"><font color="white" size="3"><b>글 수정하기</b></font></p>
        </td>
    </tr>
    <tr>
        <td width="150" height="20">
            <p align="right"><b><span style="font-size:9pt;">emailId</span></b></p>
        </td>
        <td width="450" height="20"><b><span style="font-size:9pt;">
		<input type=text name="emailId" size="30"
		 value="${elec.emailId}"></span></b></td>
    </tr>
    
    <tr>
        <td width="150" height="20" >
            <p align="right"><b><span style="font-size:9pt;">내 용</span></b></p>
        </td>
        <td width="450" height="20" ><b><span style="font-size:9pt;">
		<textarea name="description" cols="50" rows="10">${elec.description}</textarea></span></b></td>
    </tr>
    <tr>
        <td width="450" height="20" colspan="2" align="center"><b><span style="font-size:9pt;">
		<input type="submit" value="수정하기"> <input type="reset" value="다시쓰기"></span></b></td>
    </tr>
</table>
</form>
<hr>
<div align=right><span style="font-size:9pt;">&lt;<a href="${path}/front">게시판으로 돌아가기</a>&gt;</span></div>
<jsp:include page="../common/footer.jsp"/>

