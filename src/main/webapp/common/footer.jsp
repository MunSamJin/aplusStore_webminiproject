<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="footer">
    <div class="container">
        <div class="col-md-7"><img src="${path}/images/logo1.png" width="80" alt="Image"/>
            <p> Kosta 248기 2nd mini Project - Aplus Store🍎 </p>
            <div class="footer-text">

            </div>
        </div>
        <div class="col-md-5">
            <h1>Contact Us</h1>
            <p> (13637) 경기도 성남시 분당구 성남대로 34 6층(구미동 하나프라자빌딩) <br class="hidden-xs">
                © 2021 KOSTA All rights reserved. </p>

            <c:choose>
            <c:when test="${empty adminLogin}">
                <a href="${path}/admin/AdminLogin.jsp">관리자 로그인</a>
            </c:when>
            <c:otherwise>
                <a href="${path}/front?key=item&methodName=AdminLogOut">관리자 로그아웃</a>
            </c:otherwise>
            </c:choose>

        </div>
    </div>
</div>