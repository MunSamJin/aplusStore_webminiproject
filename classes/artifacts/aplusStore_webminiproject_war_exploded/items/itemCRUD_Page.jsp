<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>A+ Store</title>
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
    <style type="text/css">
        jong {
            margin: 150px auto;
        }

        #add {
            padding: 50px 0 100px 0;
            overflow: hidden;
        }
    </style>
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

        .overflow {
            height: 200px;
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
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {background-color: lightblue;}
    </style>
    <script type="text/javascript">
        $(function () {

            $("#CRUD").change(function () {

                let crud = $("#CRUD option:selected").val();

                if(crud == "????????????"){
                    $("#insert").show();
                    $("#delete").hide();
                    $("#selectAll").hide();
                    $("#update").hide();
                } else if(crud == "????????????"){
                    $("#insert").hide();
                    $("#delete").hide();
                    $("#selectAll").hide();
                    $("#update").show();
                }else if(crud == "????????????"){
                    $("#insert").hide();
                    $("#delete").show();
                    $("#selectAll").hide();
                    $("#update").hide();
                }else if(crud == "????????????"){
                    $("#insert").hide();
                    $("#delete").hide();
                    $("#selectAll").show();
                    $("#update").hide();
                }
            });


            $("#category").change(function () {

                let s = $("#category option:selected").val();

                if (s == "airpods") {
                    $("#airpods").show();
                    $("#accessory").hide();
                    $("#iphone").hide();
                    $("#watch").hide();
                } else if (s == "accessory") {
                    $("#accessory").show();
                    $("#airpods").hide();
                    $("#watch").hide();
                    $("#iphone").hide();

                } else if (s == "watch") {
                    $("#watch").show();
                    $("#airpods").hide();
                    $("#iphone").hide();
                    $("#accessory").hide();
                } else if (s == "iphone") {
                    $("#iphone").show();
                    $("#accessory").hide();
                    $("#airpods").hide();
                    $("#watch").hide();

                }


            });

            $("#button").click(function () {
                location.href=
                    "${path}/admin/AdminLogin.jsp";
            });

            $("#adminInfo").click(function () {
                location.href=
                    "${path}/admin/AdminInfo.jsp";
            });


        });



    </script>
    <script type="text/javascript" >
        $(function(){

            //????????????
            function selectAll(){
                $.ajax({
                    url :"${path}/ajax" , //??????????????????
                    type:"post", //????????????(method?????? : get | post | put | delete )
                    dataType:"json"  , //????????? ????????? ?????????(??????)??????(text | html | xml | json )
                    data: {key:"item" , methodName : "selectAll"}, //???????????? ?????? ???????????????(parameter??????)
                    success :function(arr){
                        let str="";
                        $.each(arr, function(index, item){
                            str+=`<tr>`;
                            str+=`<td>${"${item.modelNum}"}</a></td>`;
                            str+=`<td>${"${item.category}"}</td>`;
                            str+=`<td>${"${item.modelName}"}</td>`;
                            str+=`<td>${"${item.modelPrice}"}</td>`;
                            str+=`<td>${"${item.modelOption}"}</td>`;
                            str+=`<td>${"${item.modelColor}"}</td>`;
                            str+=`<td>${"${item.modelGPS}"}</td>`;
                            str+=`<td>${"${item.modelStock}"}</td>`;
                            str+=`<td>${"${item.modelRegDate}"}</td>`;
                            str+=`<td><button name='update' value='${"${item.modelNum}"}'>????????????</button>`
                            str+=`<td><button name='delete' id='${"${item.modelName}"}'>????????????</button>`
                            str+=`</tr>`;
                        });

                        $("#list tr:gt(0)").remove();
                        $("#list tr:eq(0)").after(str);

                    } , //??????????????? ????????? ??????
                    error : function(err){
                        alert(err+"?????? ???????????????.");
                    }  //??????????????? ????????? ??????
                });//ajax???
            }//selectAll ?????????

            selectAll();

            $(document).on("click","button[name=update]", function(){

                let modelNum = $(this).attr("value");

                let popupWidth = 400;
                let popupHeight = 450;

                let left = Math.ceil((window.screen.width)/2)-(popupWidth/2) ;
                let top = Math.ceil((window.screen.height)/2 -(popupHeight));



                window.open("${path}/front?key=item&methodName=updateItemRead&modelNum="+modelNum,"update",
                    'status=no, height='+popupHeight+',width='+popupWidth+
                ',left='+left+'top='+top);



            });

            $(document).on("click","button[name=delete]", function(){

                let modelName = $(this).attr("id");

                if(confirm(modelName+" ??? ????????? ?????????????????????????")){
                    location.href = "${path}/front?key=item&methodName=deleteItem&modelName="+modelName;
                    alert(modelName+"??? ?????????????????????.")
                }else {
                    alert(modelName+" ????????? ???????????? ???????????????.")
                }

            });



        });
    </script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid -->

<c:choose>
<c:when test="${empty adminLogin}">
<div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
        <div class="container nopadding">
            <div class="col-md-5"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
                                       src="${path}/images/search_main.png" alt="App" name="jong"/></div>
            <div class="col-md-7">
                <div class="hero-content">
                    <h1 class="wow fadeInUp" data-wow-delay="0.1s">????????? ????????? ??? ??????????????????</h1>
                    <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta A+ Store </p>
                    <div class="sub-form wow fadeInUp" data-wow-delay="0.3s" i>
                        <input class="btn btn-primary btn-lg" type="button" value="????????? ?????????" name="send" id="button">
                        <!-- subscribe message -->
                    </div>
                </div>
            </div>
        </div>
    </div>



    </c:when>



    <c:otherwise>
    <div class="main app form" id="main"><!-- Main Section-->
        <div class="hero-section">
            <div class="container nopadding">
                <div class="col-md-5"><img class="img-responsive wow fadeInUp" data-wow-delay="0.1s"
                                           src="${path}/images/search_main.png" alt="App" name="jong"/></div>
                <div class="col-md-7">
                    <div class="hero-content">
                        <h1 class="wow fadeInUp" data-wow-delay="0.1s">?????? ???????????????</h1>
                        <p class="wow fadeInUp" data-wow-delay="0.2s"> Kosta A+ Store </p>
                        <div class="sub-form wow fadeInUp" data-wow-delay="0.3s" id="add">

                            <input type="button" id="adminInfo" value="?????? ?????? ?????????" class="mail">
                            <form class="subscribe-form wow zoomIn">
                                Category : <select name="CRUD" class="mail" id="CRUD">
                                <option disabled selected>C.R.U.D</option>
                                <option>????????????</option>
                                <option>????????????</option>
                            </select>



                                <div id="insert" hidden>
                                    ????????? ????????? <br>
                                    ??????????????? ??????????????????. <p/>
                                    <form class="subscribe-form wow zoomIn">
                                        Category : <select name="category" class="mail" id="category">
                                        <option disabled selected>Category</option>
                                        <option>airpods</option>
                                        <option>accessory</option>
                                        <option>watch</option>
                                        <option>iphone</option>
                                    </select>
                                    </form>
                                    <p/>
                                    <p/>

                                    <div hidden id="watch">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            ?????? ?????? ?????? ????????????<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="??????"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="??????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Option : <input class="mail" type="text" name="modelOption"
                                                            placeholder="????????? ex)45mm" autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            GPS : <select name="gps" class="mail" id="gps">
                                            <option disabled selected>???</option>
                                            <option>gps</option>
                                            <option>cellular</option>
                                        </select>
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="?????????(??????)"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            ????????????.jpeg ????????? ???????????????
                                            <input class="submit-button" type="submit" value="????????????" name="send">
                                        </form>
                                    </div>

                                    <div hidden id="accessory">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            ???????????? ?????? ????????????<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="????????????"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="??????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Mini Category :<select name="mini" class="mail" id="mini">
                                            <option disabled selected>Mini Category</option>
                                            <option>cable</option>
                                            <option>case</option>
                                            <option>band</option>
                                        </select>
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="?????????(??????)"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            ????????????.jpeg ????????? ???????????????
                                            <input class="submit-button" type="submit" value="????????????" name="send">
                                        </form>
                                    </div>

                                    <div hidden id="airpods">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            ????????? ?????? ????????????<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="????????????"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="??????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="?????????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            ????????????.jpeg ????????? ???????????????
                                            <input class="submit-button" type="submit" value="????????????" name="send">
                                        </form>
                                    </div>

                                    <div hidden id="iphone">
                                        <form class="subscribe-form wow zoomIn"
                                              action="${path}/front?key=item&methodName=InsertItemByAcc" method="post"
                                              name="crudForm"
                                              enctype="multipart/form-data">
                                            ????????? ?????? ????????????<p/>
                                            Model Name : <input class="mail" type="text" name="modelName" placeholder="????????????"
                                                                autocomplete="off">
                                            <p/>
                                            <p/>
                                            Price : <input class="mail" type="text" name="modelPrice" placeholder="??????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Storage : <input class="mail" type="text" name="modelOption"
                                                             placeholder="iphone ??????" autocomplete="off">
                                            <p/>
                                            <p/>
                                            Color : <input class="mail" type="text" name="modelColor" placeholder="????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Stock : <input class="mail" type="text" name="modelStock" placeholder="?????????"
                                                           autocomplete="off">
                                            <p/>
                                            <p/>
                                            Photo : <input class="mail" type="file" name="file" maxlength="60" size="40">
                                            ????????????.jpeg ????????? ???????????????
                                            <input class="submit-button" type="submit" value="????????????" name="send">
                                        </form>
                                    </div>
                                </div>
                                <!-- subscribe message -->
                                <div id="mesaj"></div>
                                <!-- subscribe message -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="pitch text-center" id="selectAll" hidden>
            <div class="container">
                <div class="pitch-intro">
                    <h1 class="wow fadeInDown" data-wow-delay="0.2s">?????? ??????</h1>
                </div>
                <div>
                    <table  id="list" cellspacing="0">
                        <tr>
                            <th>????????????</th>
                            <th>????????????</th>
                            <th>????????????</th>
                            <th>????????????</th>
                            <th>????????????</th>
                            <th>????????????</th>
                            <th>GPS</th>
                            <th>?????????</th>
                            <th>?????????</th>
                            <th>??????</th>
                            <th>??????</th>
                        </tr>

                    </table>

                    </form>

                </div>
            </div>
        </div>



        </c:otherwise>

        </c:choose>




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
