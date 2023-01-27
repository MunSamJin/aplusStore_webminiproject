# A+ Store 🍎
<div align="center">
<img src="https://user-images.githubusercontent.com/104367020/215093850-7cf35afd-183a-4e35-8484-80315786ec21.gif" alt="main">
</div>

## 1️⃣ 프로젝트 개요도

- 프로젝트 명 : 에이플 스토어 🍁
- 개발 프로그램 명 : 애플 상품 쇼핑몰 시스템 요구분석
- 주요기능 : 애플 상품 검색 및 판매
- 구성원 : 천세륜, 엄용식, 고종영, 안효경, 문삼진, 채란
- 프로젝트 개요 :

현대인들은 PC보다 스마트폰을 더 자주 구매하고 사용한다. 이러한 니즈를 만족시키기 위해서 일상에서 친숙한 스마트 기기들을 판매 대상으로 선정하였다.<br>
애플 스토어 공식 사이트 디자인의 세련됨과 유려함은 가져가면서 UI의 불편함을 개선하여 사용자의 편의성과 접근성을 높여서 판매실적을 향상 시킨다.<br>
또한, 관리자(판매자)는 판매통계를 바탕으로 차후에 새로운 상품 개발에 필요한 사용자들의 니즈를 쉽게 파악할 수 있다.


## 2️⃣ 개발환경

![java badge](https://img.shields.io/badge/-JAVA_11-%23F7DF1E?style=flat-square&logo=buymeacoffee&logoColor=white&color=3c679e)
![javascript badge](https://img.shields.io/badge/-JAVASCRIPT-%23F7DF1E?style=flat-square&logo=javascript&logoColor=white&color=f2df3a)<br>
![oracle badge](https://img.shields.io/badge/-Oracle_19c-%23F7DF1E?style=flat-square&logo=oracle&logoColor=white&color=e62e18)
![HTML badge](https://img.shields.io/badge/-HTML5-%23F7DF1E?style=flat-square&logo=html5&logoColor=white&color=d1512b)
![CSS badge](https://img.shields.io/badge/-CSS3-%23F7DF1E?style=flat-square&logo=css3&logoColor=white&color=2b62aa)
![BootStrap badge](https://img.shields.io/badge/-BootStrap-%23F7DF1E?style=flat-square&logo=bootstrap&logoColor=white&color=6a45a6)
![jQuery badge](https://img.shields.io/badge/-jQuery-%23F7DF1E?style=flat-square&logo=jquery&logoColor=white&color=0769AD)
![AJAX badge](https://img.shields.io/badge/-AJAX-%23F7DF1E?style=flat-square&color=4e575d)
![JspServlet badge](https://img.shields.io/badge/-Jsp_&_Servlet-%23F7DF1E?style=flat-square&color=512BD4)<br>
![IntelliJ IDEA badge](https://img.shields.io/badge/-IntelliJ_IDEA-%23F7DF1E?style=flat-square&logo=intellijidea&logoColor=white&color=02303A)
![eclipseide badge](https://img.shields.io/badge/-Eclipse-%23F7DF1E?style=flat-square&logo=eclipseide&logoColor=white&color=2C2255)
![notion badge](https://img.shields.io/badge/-Notion-%23F7DF1E?style=flat-square&logo=notion&logoColor=white&color=000000)

## 3️⃣ 프로젝트 실행 화면
- 프로젝트 대한 내용을 Youtube 로 영상으로 기록하였습니다.

<div align="center">

[![Video Label](http://img.youtube.com/vi/Pd5Y6WWFic8/0.jpg)](https://youtu.be/Pd5Y6WWFic8)

</div>


## 4️⃣ 시스템에 대한 기능적인 요구사항 목록

<table>
<tr>
<th>상품 관리</th>
<td>- 상품을 등록, 수정, 삭제, 조회하는 기능<br> -판매통계를 조회하는 기능 (Chart.js)</tr>
<tr>
<th>상품 검색</th><td> - 상품을 이름으로 검색하는 기능 <br> - 카테고리로 상품을 조회하는 기능(아이폰, 애플워치, 에어팟, 액세서리)<br> - 상품의 품절여부를 표시하는 기능(품절 시 버튼 비활성화)<br> - 검색된 상품을 조건에 따라 정렬하는 기능<br>   * 조건: 가격, 판매량, 신상품<br> - 상품과 관련된 상품을 보여주는 기능<br> - 상품별 상세페이지
</tr>
<tr>
<th>장바구니</th>
<td> - 상품을 장바구니에 추가하는 기능<br> - 장바구니에 저장된 상품을 조회, 삭제하는 기능 <br> - 장바구니에 저장된 상품의 수량을 수정하는 기능</td>
</tr>

<tr>

<th>상품 주문</th>

<td>  - 장바구니에 저장된 상품을 선택하여 주문하는 기능 <br> - 사용자 정보, 배송지 정보, 결제정보를 입력 받아 결제하는 기능<br> - 주문내역 이메일로 발송<br> - 배송방법 선택 (매장 픽업(Map 띄우기) or 배송지로 발송) <br> - 주문상태 ( 상품준비중, 픽업대기중, 픽업완료, 배송중, 배송완료, 주문취소) <br> * 픽업대기중일때, 회원에게 픽업날짜, 시간, 장소를 이메일로 발송.</td><tr>

<tr>

<th>Q&A 게시판</th><td> - 자주 묻는 문의사항을 등록, 수정, 삭제, 조회하는 기능<br> - 문의사항을 등록, 수정, 삭제, 조회하는 기능<br> - 문의답변을 등록, 수정, 삭제, 조회하는 기능</td> 

</tr>
<tr>

<th>마이페이지</th> <td> - 개인정보를 수정하는 기능(비밀번호, 주소, 연락처, 이메일 주소)</td>

</tr>

<tr>

<th>회원관리</th> <td> - 회원가입 기능<br> - 회원 로그인 기능 (아이디 저장기능, 아이디, 비밀번호 받아서)<br> - 아이디 찾기 기능<br> -  비밀번호 찾기 기능 (임시 비밀번호를 이메일 주소로 발송)</td></tr>

<tr>

<th>기타</th> <td> - 오프라인 매장 찾기 (지도 API를 이용하여 검색)<br> - 주문내역을 조회하는 기능(회원 – 로그인, 비회원 – 주문번호)<br> - 주문취소 (상품준비중 일때만 가능, 주문내역 조회 후 사용 가능)</td></tr>
</table>

## 5️⃣ 액터별 기능 목록
<table>
<tr>
<th>사용자</th>
<th>기능</th>
<th>기능 범주</th>
</tr>
<tr><td rowspan="7">회원</td><td> - 상품을 이름으로 검색하는 기능<br> - 상품별 상세페이지 조회<br> - 카테고리로 상품을 조회하는 기능(아이폰, 애플워치, 에어팟, 액세서리)<br> - 상품의 품절여부를 표시하는 기능(품절 시 버튼 비활성화)<br>- 검색된 상품을 조건에 따라 정렬하는 기능 <br> * 조건: 가격, 판매량, 신상품 /<br> - 상품과 관련된 상품을 보여주는 기능 </td> <td>상품 검색</td></tr><tr><td> - 상품을 장바구니에 추가하는 기능<br> - 장바구니에 저장된 상품을 조회, 삭제하는 기능<br> - 장바구니에 저장된 상품의 수량을 수정하는 기능 </td><td>장바구니</td></tr><tr><td> - 장바구니에 저장된 상품을 선택하여 주문하는 기능<br> - 사용자 정보, 배송지 정보, 결제정보를 입력 받아 결제하는 기능<br> - 주문내역 이메일로 발송<br> - 배송방법 선택 (매장 픽업(지도API 띄우기) or 배송지로 발송)<br> - 주문상태 ( 상품준비중, 픽업대기중, 픽업완료, 배송중, 배송완료, 주문취소) </td><td > <br>상품 주문</td></tr><tr><td > - 문의사항을 등록, 수정, 삭제, 조회하는 기능<br> - 문의답변을 등록, 수정, 삭제, 조회하는 기능 </td><td > <br>Q&amp;A 게시판 </td></tr><tr><td> - 오프라인 매장 찾기 (지도 API를 이용하여 검색)<br> - 주문취소 ( 상품준비중 일때만 가능, 주문내역 조회 후 사용 가능) </td><td > <br>기타 </td></tr><tr><td > - 개인정보를 수정하는 기능(비밀번호, 주소., 연락처, 이메일 주소) </td><td > <br>마이페이지</td></tr><tr><td > - 회원가입 기능<br> - 로그인 기능 (아이디 저장기능)<br> - 아이디 찾기 기능<br> - 비밀번호 찾기 기능 (임시 비밀번호를 이메일 주소로 발송) </td><td > <br>회원관리</td></tr><tr><td ><br>비회원</td><td > - 상품조회 및 주문과정은 회원과 동일<br> - 장바구니(session 유지되는 동안)<br> - 문의사항 문의답변 조회만 가능<br> - 주문내역을 주문번호로 조회<br> - 주문취소 (상품준비중 일때만 가능, 주문내역 조회 후 사용 가능) </td><td > <br> </td></tr><tr><td rowspan="3"> <br>판매자<br> (관리자) </td><td > - 상품을 등록, 수정, 삭제, 조회하는 기능<br> - 판매통계를 조회하는 기능 (Chart.js, jqGrid)<br> (카테고리(아이폰, 애플워치, 에어팟, 액세서리) 판매량, 기기별 판매량, 총판매량) – 월별 / 년 도별 / 분기별 </td><td > <br>상품 관리</td></tr><tr><td > - 상품 준비 상태를 변경하는 기능<br>  (ex.상품준비중-&gt;배송중, 상품준비중-&gt;픽업대기중 으로 관리자가 상태변경시 메일 자동발송)<br></td><td > <br>주문 관리</td></tr><tr><td > - 자주 묻는 문의사항을 등록, 수정, 삭제, 조회하는 기능<br> - 문의사항을 삭제, 조회하는 기능<br> - 문의답변을 등록, 수정, 삭제, 조회하는 기능 </td><td> <br>Q&amp;A 게시판 </td></tr></tbody></table>

<div align="right">
written By JongYoung
</div>
