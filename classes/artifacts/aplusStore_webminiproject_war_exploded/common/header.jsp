<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="wrapper">
    <div class="container">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="${path}/index.jsp"><img src="${path}/images/logo1.png" width="80"
                                                                          alt="iLand"/></a></div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">


                        <li><a class="page-scroll" href="${path}/store/storeMain.jsp">Store</a></li>
                        <li><a class="page-scroll" href="${path}/items/iphoneIndex.jsp">iPhone</a></li>
                        <li><a class="page-scroll" href="${path}/items/watchIndex.jsp">Watch</a></li>
                        <li><a class="page-scroll" href="${path}/items/ariPodIndex.jsp">AirPods</a></li>
                        <li><a class="page-scroll" href="${path}/items/accIndex.jsp">액세서리</a></li>
                        <li><a class="page-scroll" href="${path}/qna/QnaMain.jsp">고객지원</a></li>
                        <li><a class="page-scroll" href="${path}/user/login.jsp">로그인</a></li>
                        <li><a class="page-scroll" href="${path}/cart/cart.jsp">장바구니</a></li>

                        <li><a class="page-scroll" href="#contact">배송조회</a></li>
                        <li><a class="page-scroll" href="${path}/items/search.jsp">
                            <img src="${path}/images/search_icon.png" height="20px">
                        </a></li>

                    </ul>
                   
                </div>
            </div>
        </nav>
    </div>
</div>
