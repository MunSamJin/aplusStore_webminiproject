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
<<<<<<< HEAD
                    <a class="navbar-brand page-scroll" href="${path}/index.jsp"><img src="${path}/images/logo1.png" width="80" alt="iLand">
                    </a></div>
=======
                    <a class="navbar-brand page-scroll" href="${path}/index.jsp"><img src="${path}/images/logo1.png" width="80"
                                                                          alt="iLand"/></a></div>
>>>>>>> merge221027
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">


<<<<<<< HEAD

                        <li><a class="page-scroll" href="store/storeMain.html">Store</a></li>
=======
                        <li><a class="page-scroll" href="${path}/store/storeMain.jsp">Store</a></li>
>>>>>>> merge221027
                        <li><a class="page-scroll" href="${path}/items/iphoneIndex.jsp">iPhone</a></li>
                        <li><a class="page-scroll" href="${path}/items/watchIndex.jsp">Watch</a></li>
                        <li><a class="page-scroll" href="${path}/items/ariPodIndex.jsp">AirPods</a></li>
                        <li><a class="page-scroll" href="${path}/items/accIndex.jsp">액세서리</a></li>
<<<<<<< HEAD
                        <li><a class="page-scroll" href="${path}/qna/qnaMain.html">고객지원</a></li>
                        
                        <c:choose>
                        <c:when test="${empty emailId}">
                        <li><a class="page-scroll" href="${path}/user/login.jsp">로그인</a></li>
                        </c:when>
                        <c:when test="${not empty emailId}">
                        <li><a class="page-scroll" href="${path}/user/mypage.jsp">계정</a></li>
	      				<li><a href="${pageContext.request.contextPath}/front?key=user&methodName=logout" class="page-scroll">로그아웃</a></li>
     			    	</c:when> 
                        </c:choose>
                        
                        <li><a class="page-scroll" href="${path}/cart/cart.jsp">장바구니</a></li>
                        <li><a class="page-scroll" href="#contact">배송조회</a></li>
                        <li><a class="page-scroll" href="${path}/items/search.jsp">
                            <img src="${path}/images/search_icon.png" height="20px">
                            
                        </a></li>
                   
                    </ul>
                    
=======
                        <li><a class="page-scroll" href="${path}/qna/QnaMain.jsp">고객지원</a></li>
                        <li><a class="page-scroll" href="${path}/user/login.jsp">로그인</a></li>
                        <li><a class="page-scroll" href="${path}/cart/cart.jsp">장바구니</a></li>

                        <li><a class="page-scroll" href="${path}/admin/SearchGuest.html">배송조회</a></li>
                        <li><a class="page-scroll" href="${path}/items/search.jsp">
                            <img src="${path}/images/search_icon.png" height="20px">
                        </a></li>

                    </ul>
>>>>>>> merge221027
                   
                </div>
            </div>
        </nav>
<<<<<<< HEAD
        <!-- /.navbar-collapse -->
    </div>
 </div>
=======
    </div>
</div>
>>>>>>> merge221027
