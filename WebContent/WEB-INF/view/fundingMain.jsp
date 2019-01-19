<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>fundingMain</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <link rel="stylesheet" href="/css/footer.css">
    <style>
        #logoImage {
            background-image: url("/img/123.png");
        }
        #content{
            width: 1080px;
            height: 380px;
            margin: auto;
            /*background-color: yellow;*/
        }

        .pg{
            width: 150px;
            height: 30px;
            background-color: #40beed;
            margin:0 auto;
            text-align: center;
        }

        #content>h2{
            font-size: 20px;
            font-weight: 500;
            margin-top: 50px;
            border-top: 1px solid black;
            width: 250px;
            padding-top: 10px;
        }
        #content>a{
            font-size: 15px;
            font-weight: 500;
            /*margin-top: 50px;*/
            margin: 0 0 0 1020px;
        }
        #content>#fundingList{
            width: 1080px;
            /*height: 300px;*/
            /*background-color: red;*/
            overflow: hidden;

        }

        #fundingList > li.funding { /*이게 박스 하나 */
            width: 230px;
            height: 270px;
            background-color: #ffffff;
            border-radius: 2px;
            float: left;
            margin: 23px 70px 23px 60px;
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
            transition: all .1s ease-in-out;
            cursor: pointer;
        }

        #fundingList > li.funding:hover {
            transform: translateY(-2px);
            box-shadow: 0 3px 8px 0 rgba(0, 0, 0, .16);
        }

        /*#bandList>li.band+li.band{*/
        /*margin: 0 0 25px 25px;*/
        /*}*/
        #fundingList div.funding_img {
            width: 230px;
            height: 160px;

            position: relative;

        }

        #fundingList div.funding_img > img {
            width: 230px;
            height: 160px;
            border-radius: 2px 2px 0 0;
            position: absolute;
        }

        #fundingList div.funding_title {
            width: 180px;
            height: 80px;
            margin-left: 10px;
            margin-top: 10px;
        }

        #fundingList div.funding_title > strong {
            width: 180px;
            height: 16px;
            display: inline-block;
            font-size: 15px;
            font-weight: 600;

        }

        #fundingList div.funding_title > span {
            width: 180px;
            height: 16.8px;
            display: inline-block;
            font-size: 12px;
            color: #757575;
            padding-top: 5px;
        }

        /**/
        #content2{
            width: 1080px;
            height: 380px;
            margin: auto;
            /*background-color: yellow;*/
        }


        #content2>h2{
            font-size: 20px;
            font-weight: 500;
            margin-top: 50px;
            border-top: 1px solid black;
            width: 250px;
            padding-top: 10px;
        }
        #content2>a{
            font-size: 15px;
            font-weight: 500;
            /*margin-top: 50px;*/
            margin: 0 0 0 1020px;
        }
        #content2>#fundingList2{
            width: 1080px;
            /*height: 300px;*/
            /*background-color: red;*/
            overflow: hidden;

        }

        #fundingList2 > li.funding { /*이게 박스 하나 */
            width: 230px;
            height: 270px;
            background-color: #ffffff;
            border-radius: 2px;
            float: left;
            margin: 23px 70px 23px 60px;
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
            transition: all .1s ease-in-out;
            cursor: pointer;
        }

        #fundingList2 > li.funding:hover {
            transform: translateY(-2px);
            box-shadow: 0 3px 8px 0 rgba(0, 0, 0, .16);
        }

        /*#bandList>li.band+li.band{*/
        /*margin: 0 0 25px 25px;*/
        /*}*/
        #fundingList2 div.funding_img {
            width: 230px;
            height: 160px;

            position: relative;

        }

        #fundingList2 div.funding_img > img {
            width: 230px;
            height: 160px;
            border-radius: 2px 2px 0 0;
            position: absolute;
        }

        #fundingList2 div.funding_title {
            width: 180px;
            height: 80px;
            margin-left: 10px;
            margin-top: 10px;
        }

        #fundingList2 div.funding_title > strong {
            width: 180px;
            height: 16px;
            display: inline-block;
            font-size: 15px;
            font-weight: 600;

        }

        #fundingList2 div.funding_title > span {
            width: 180px;
            height: 16.8px;
            display: inline-block;
            font-size: 12px;
            color: #757575;
            padding-top: 5px;
        }
        
        
        #content3{
            width: 1080px;
            height: 380px;
            margin: auto;
            /*background-color: yellow;*/
        }


        #content3>h2{
            font-size: 20px;
            font-weight: 500;
            margin-top: 50px;
            border-top: 1px solid black;
            width: 250px;
            padding-top: 10px;
        }
        #content3>a{
            font-size: 15px;
            font-weight: 500;
            /*margin-top: 50px;*/
            margin: 0 0 0 1020px;
        }
       #content3>#fundingList3{
            width: 1080px;
            /*height: 300px;*/
            /*background-color: red;*/
            overflow: hidden;

        }

        #fundingList3 > li.funding { /*이게 박스 하나 */
            width: 230px;
            height: 270px;
            background-color: #ffffff;
            border-radius: 2px;
            float: left;
            margin: 23px 70px 23px 60px;
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
            transition: all .1s ease-in-out;
            cursor: pointer;
        }

        #fundingList3 > li.funding:hover {
            transform: translateY(-2px);
            box-shadow: 0 3px 8px 0 rgba(0, 0, 0, .16);
        }

        /*#bandList>li.band+li.band{*/
        /*margin: 0 0 25px 25px;*/
        /*}*/
        #fundingList3 div.funding_img {
            width: 230px;
            height: 160px;

            position: relative;

        }

        #fundingList3 div.funding_img > img {
            width: 230px;
            height: 160px;
            border-radius: 2px 2px 0 0;
            position: absolute;
        }

        #fundingList3 div.funding_title {
            width: 180px;
            height: 80px;
            margin-left: 10px;
            margin-top: 10px;
        }

        #fundingList3 div.funding_title > strong {
            width: 180px;
            height: 16px;
            display: inline-block;
            font-size: 15px;
            font-weight: 600;

        }

        #fundingList3 div.funding_title > span {
            width: 180px;
            height: 16.8px;
            display: inline-block;
            font-size: 12px;
            color: #757575;
            padding-top: 5px;
        }

        #photoBox{
            position: relative;
            width: 1080px;
            height: 350px;
            margin: auto;
            overflow: hidden;
            margin-top: 20px;
            border-radius: 3px;
        }

        #photoList{
            position: relative;
            width:4320px;
            height:350px;

        }
        #photoList li img{
            float: left;
            transition: .2s ease;
        }
        .item_photo h1, .item_photo h4{
            font-weight: bold;
        }
        .rightBtn{
            position: absolute;
            width: 50px;
            height: 50px;
            font-size: 40px;
            top:150px;
            color: #40BEED;
            background-color: transparent;
            border: none;
            outline: none;
            cursor: pointer;
        }
        .leftBtn{
            position: absolute;
            width: 50px;
            height: 50px;
            font-size: 40px;
            top:150px;
            color: #40BEED;
            background-color: transparent;
            border: none;
            outline: none;
            cursor: pointer;
        }
        #left{
            left:0px;
        }
        #right{
            right:0px ;
        }
        #navList li{
            position: absolute;
            bottom: 10px;
            color: #E0E0E0;
            cursor: pointer;
            margin-left: 280px;
        }
        #navList li:nth-child(1){
            left: 190px;
        }
        #navList li:nth-child(2){
            left: 220px;
        }
        #navList li:nth-child(3){
            left: 250px;
        }
        #navList li:nth-child(4){
            left: 280px;
        }

        #menuBox h3{
            position: absolute;
            font-size:40px ;
            top:30px;
            left:150px;
        }

        #navList li.on{
            color:#40BEED;
        }
       .item_photo h1{
            position: absolute;
            font-size: 40px;
            font-weight: 500;
            margin-left: 60px;
            margin-top: 125px;
            color: #FFFFFF;

        }
      .item_photo h4{
            position: absolute;
            margin-left: 70px;
            margin-top:180px;
            font-size: 18px;
            color: #FFFFFF;

        }
        .writeBtn{
            position: absolute;
            width: 150px;
            height: 40px;
            background-color: #40BEED;
            display: block;
            font-size: 20px;
            text-align: center;
            line-height: 40px;
            text-decoration: none;
            border-radius: 5px;
            margin-left: 910px;
            margin-top: 290px;
            color: #FFFFFF;
            font-weight: 500;
        }
        .writeBtn:hover {
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-shadow: 0 0 5px;
            background: #0091ea;
        }
        
        .funding_title .title {
        display:block;
        	overflow:hidden;
        	text-overflow: ellipsis;
        	white-space: nowrap;
        }
#logoImage{
            background-image: url("/img/로고.png");
        }
    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="photoBox">
    <ul id="photoList">
        <li class="item_photo">
            <img src="/img/K-8.png" width="1080px" height="350px">
            <h1>펀딩 여행!</h1>
            <h4>펀딩 여행이란 FD들의 후원을 받아 여행을 다녀온 후 작성한 근사한 여행기를 함께 즐기고 공유하는 컨텐츠 입니다.<br>한바퀴에서 멋진 경험을 지금 시작해보시는것은 어떠신가요?</h4>
            <a href="/funding/register" class="writeBtn">지금 작성하기</a>
        </li>
        <li class="item_photo">
            <img src="/img/00.jpg" width="1080px" height="350px" >
        </li>
        <li class="item_photo">
            <img src="/img/90.jpg" width="1080px" height="350px" >
        </li>
        <li class="item_photo">
            <img src="/img/70.jpg" width="1080px" height="350px">
        </li>
    </ul><!--//photoList-->

    <ul id="navList">
        <li class="on"><i class="fas fa-circle"></i></li>
        <li><i class="fas fa-circle"></i></li>
        <li><i class="fas fa-circle"></i></li>
        <li><i class="fas fa-circle"></i></li>
    </ul><!--//navList-->

    <button id="left" class="leftBtn" ><i class="fas fa-chevron-left"></i></button>
    <button id="right" class="rightBtn"><i class="fas fa-chevron-right"></i></button>
</div>
<div id="content">
    <h2>펀딩달성 임박</h2>
    <a href="/funding/page/1/filter/success" id="funding_end">+더보기</a>
    <ul id="fundingList">
    <c:forEach items="${successList }" var="success">
        <li class="funding">
        <a href="/fundingViewer/${success.fdNo}">
            <div class="funding_img">
                <img src="/funding/thumb/${success.thumbnail}" alt="썸네일" />
            </div><!--//.funding_img -->
            <div class="funding_title">
                <strong class="title">${success.title }</strong>
                <span class="title">${success.intro }</span>
                <span>${success.nickname }</span>
                <span>${success.ammount }원</i>
                    <em></em><br>
                    <span><i class="far fa-calendar-alt"></i>
                        <em>${success.deadline }(마감)</em>
                    </span>
                    </span>
            </div><!--//.funding_title -->
            </a>
        </li> <!--//.funding -->
        </c:forEach>
        </ul>
    
    </div><!--//.content -->

<div id="content2">
    <h2>마감을 앞둔 펀딩여행</h2>
    <a href="/funding/page/1/filter/deadline" id="funding_new">+더보기</a>
    <ul id="fundingList2">
    <c:forEach items="${deadlineList }" var="deadline">
        <li class="funding">
        <a href="/fundingViewer/${deadline.fdNo }">
            <div class="funding_img">
                <img src="/funding/thumb/${deadline.thumbnail }" alt="자전거" />
            </div><!--//.funding_img -->
            <div class="funding_title">
                <strong class="title">${deadline.title }</strong>
                <span class="title">${deadline.intro } </span>
                <span>${deadline.nickname }</span>
                <span>${deadline.ammount }원</i>
                    <em></em><br>
                    <span><i class="far fa-calendar-alt"></i>
                        <em>${deadline.deadline }(마감)</em>
                    </span>
                    </span>
            </div><!--//.funding_title -->
            </a>
        </li> <!--//.funding -->
        </c:forEach>
    </ul>
</div><!--//.content -->

<div id="content3">
    <h2>새로운 펀딩여행</h2>
    <a href="/funding/page/1/filter/newest" id="funding_new">+더보기</a>
    <ul id="fundingList3">
	<c:forEach items="${newList }" var="newf">
       <li class="funding">
       <a href="/fundingViewer/${newf.fdNo }">
            <div class="funding_img">
                <img src="/funding/thumb/${newf.thumbnail}" alt="자전거" />
            </div><!--//.funding_img -->
            <div class="funding_title">
                <strong class="title">${newf.title }</strong>
                <span class="title">${newf.intro }</span>
                <span>${newf.nickname }</span>
                <span>${newf.ammount }원</i>
                    <em></em><br>
                    <span><i class="far fa-calendar-alt"></i>
                        <em>${newf.deadline }(마감)</em>
                    </span>
                    </span>
            </div>
            </a>
        </li> 
        </c:forEach>
    </ul>
</div><!--//.content -->
<div id="footer">
    <div id="copyright">
        <p>상호명 : (주)에르메스 | 대표 : 샤넬 | 개인정보책임자 : 루이비똥</p>
        <p>사업자등록번호 : 201-54-10020 | 통신판매업신고번호 : 제 2018-서울관악-15411호</p>
        <p>주소 : 충청남도 아산시 신창면 순천향로 22, 멀티미디어관 6층 | 광고 및 제휴 : hsh2@sch.ac.kr</p>
        <br/>
        <p>Copyright 2018. HERMES. All rights reserved.</p>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/chat.js"></script>
<script>

    var num = 0;

    var idx = 0;

    var $navList = $("#navList").children();

    $("#left").click(function () {
// if(idx==0){
// alert("dd");
// // $("#photoList img").css("transform", "translateX(" + num + "px)");
// }
        if(idx!=0){
            idx--;
            var num= (-idx*1080);
            $("#photoList img").css("transform", "translateX(" + num + "px)");
// alert(no);
            $navList.removeClass("on");
            $navList.eq(idx).addClass("on");
        }
    });
    $("#right").click(function () {
//var no = 0;

// if(idx==3){
// alert("dd");
// //var num= 0;
// // $("#photoList img").css("transform", "translateX(" + num + "px)");
//
// }
        if(idx!=3) {
            idx++;
            num= -(idx*1080);
            $("#photoList img").css("transform", "translateX(" + num + "px)");
            console.log(num);
// alert(no);

            $navList.removeClass("on");
            $navList.eq(idx).addClass("on");
        }
    });
    $("#navList li").click(function () {
        var dotidx = $(this).index();
        console.log(dotidx);
        var imgmove = dotidx *= -1080;
        $("#photoList img").css("transform", "translateX(" + imgmove + "px)");
        $("#navList li").removeClass("on");
        $(this).addClass("on");
    });


//header

    var $popup=$("#popup");
    var $loginForm=$("#loginForm");
    var $findForm=$("#findForm");
    $("#login").click(function(e) {
        e.preventDefault();
        $popup.show();
        $loginForm.show();
    });
    $popup.click(function(e) {
        e.preventDefault();
        $(this).hide();
        $(".form").hide();
    });
    $("#find").click(function(e) {
        e.preventDefault();
        $loginForm.hide();
        $findForm.show();
    });
    $(".tab a").click(function () {
        $(".on").removeClass("on");
        $(this).addClass("on");
    })
    $("#findIDBtn").click(function (e) {
        e.preventDefault();
        $("#findID").show();
        $("#findPW").hide();
    });
    $("#findPWBtn").click(function (e) {
        e.preventDefault();
        $("#findPW").show();
        $("#findID").hide();
    });
    $(".change").click(function (e) {
        e.preventDefault();
        $findForm.hide();
        $("#chanePWForm").show();
    });
    $(".return").click(function (e) {
        e.preventDefault();
        $(".form").hide();
        $("#loginForm").show();
    });
    $("#profileImage").click(function () {
        $("#personalMenu").show();
        return false;
    });
    $(document).click(function () {
        $("#personalMenu").hide();
    })


/*  var i;

   function move(){
        if(num<=-3240){
            num=1080;
            console.log(num)
        }else {
            num-=1080;
            $("#photoList img").css("transform", "translateX(" + num + "px)");
            console.log(num)
        }
    }

    setInterval(move,4000);
    $("#photoList").mouseover(function () {
        clearInterval(i)
    });

    $("#photoList").mouseout(function () {

    });
 */



</script>
</body>
</html>