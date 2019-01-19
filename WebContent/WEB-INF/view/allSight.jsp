<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>명소 플러스</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
          integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <link rel="stylesheet" href="/css/tui-time-picker.css" />
</head>
<style>
    #titleMain {
        width: 1080px;
        height: 350px;
        background-color: cadetblue;
        margin: auto;
        color: #FFFFFF;
        background-image: url("img/00.jpg");
        background-repeat: repeat;
        border-radius: 3px;
        /* display: none;*/
    }

    #titleMain>h1 {
        font-size: 40px;
        font-weight: 500;
        margin-left: 50px;
        margin-top: 50px;
        padding-top: 110px;
    }

    #titleMain>h4 {
        margin-left: 80px;
        padding-top: 30px;
        font-size: 20px;
    }

    .writeBtn {
        width: 150px;
        font-size: 20px;
        height: 40px;
        background-color: #40beed;
        text-decoration: none;
        color: #FFFFFF;
        border-radius: 5px;
        display: inline-block;
        text-align: center;
        margin-left: 905px;
        margin-top: 40px;
        line-height: 35px;
        border-color: transparent;
    }

    .writeBtn:hover {
        box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        text-shadow: 0 0 5px;
        background: #0091ea;
    }

    #main_sight {
        margin: auto;
        width: 1080px;
        position: relative;
        /*background-color: #00bb00;*/
        /*display: none;*/
    }

    #filter {
        width: 200px;
        height: 500px;
        /*background-color: #00bb00;*/
        position: absolute;
        float: right;
        box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
        transition: all .1s ease-in-out;
        background-color: #ffffff;
        border-radius: 2px;
        margin-top: 10px;
    }

    #content {
        width: 860px;
        /*height: 500px;*/
        /*background-color: #0091ea;*/
        float: right;
    }

    #content > #sightList {
        width: 1080px;
        /*height: 300px;*/
        /*background-color: red;*/
        overflow: hidden;

    }

    #sightList > li.sight { /*이게 박스 하나 */
        width: 230px;
        height: 250px;
        background-color: #ffffff;
        border-radius: 2px;
        float: left;
        margin: 50px 20px 40px 30px;
        box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
        transition: all .1s ease-in-out;
        cursor: pointer;
    }

    #sightList > li.sight:hover {
        transform: translateY(-2px);
        box-shadow: 0 3px 8px 0 rgba(0, 0, 0, .16);
    }

    /*#bandList>li.band+li.band{*/
    /*margin: 0 0 25px 25px;*/
    /*}*/
    #sightList div.content_img > img {
        width: 230px;
        height: 160px;
        border-radius: 2px 2px 0 0;
    }

    #sightList div.content_title {
        width: 180px;
        height: 75px;
        margin-left: 10px;
        margin-top: 5px;
    }

    #sightList div.content_title > strong {
        width: 180px;
        height: 19.2px;
        display: inline-block;
        font-size: 15px;

    }

    #sightList div.content_title > span {
        width: 180px;
        height: 16.8px;
        display: inline-block;
        font-size: 12px;
        color: #757575;
    }


    .sort {
        width: 250px;
        height: 50px;
        /*background-color: #0091ea;*/
        display: block;
        font-weight: 500;
        padding-left: 15px;
    }

    #sight {
        margin-top: 10px;
        font-weight: bold;
        font-size: 20px;
    }

    #line {
        margin-top: 10px;
        font-weight: bold;
        font-size: 20px;
    }

    .applyBtn {
        width: 100px;
        font-size: 15px;
        height: 30px;
        background-color: #40beed;
        text-decoration: none;
        color: #FFFFFF;
        border-radius: 5px;
        display: inline-block;
        text-align: center;
        margin-left: 49px;
        margin-top: 30px;
        line-height: 30px;
    }

    .applyBtn:hover {
        box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        text-shadow: 0 0 5px;
        background: #0091ea;
    }

    .fa-plus-circle {
        color: #40beed;
        font-size: 15px;
    }

    .fa-minus-circle {
        color: #dd4444;
        font-size: 15px;
    }

    .vote {
        font-weight: 600;
        font-size: 15px;
        /*background-color: red;*/
    }
    #logoImage {
        background-image: url("img/로고.png");
    }
    /*location css*/
    #location {
        position: relative;
        margin: auto;
        width: 650px;
        height: auto;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        display: none;
    }
    .detailHeader {
        width: 650px;
        height: 98px;
        margin-top: 20px;
    }
    .firstFlow ,.secondFlow,.lastFlow {
        font-size: 20px;
        font-weight: bold;
        text-align: center;
        width: 180px;
        height: 50px;
        background-color: #f0f0f0;
        display: inline-block;
        line-height: 50px;
        margin-top: 20px;
        margin-left: 22px;
        border-radius: 10px;
    }
    hr {
        width: 500px;
        position: absolute;
        left: 75px;
        top: 35px;
        z-index: -1;
    }
    #searchLocationBar {
        width: 650px;
        height: 150px;
        line-height: 150px;
        text-align: center;
    }
    #registerLocation {
        width: 650px;
        height: 100px;
        line-height: 100px;
        text-align: center;
    }
    #resultList{
        width:400px;
        height: 300px;
        margin: auto;
        text-align: justify;
    }
    #resultList li{
        margin-left:50px;
        margin-bottom:15px;
        line-height:1.5;
    }
    #resultList li strong{
        font-weight:bold;
        color:#40BEED;
    }
    /*basic css*/
    #basic {
        position: relative;
        margin: auto;
        width: 650px;
        height: auto;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        display: none;
    }
    #basicContent {
        margin-top: 20px;
        margin-bottom: 10px;
    }
    #basicHeader {
        width: 650px;
        height: 100px;
        margin-top: 30px;
    }

    hr {
        width: 500px;
        position: absolute;
        left: 75px;
        top: 35px;
        z-index: -1;
    }
    #mainImage {
        position:relative;
        width: 400px;
        height: 200px;
        margin: auto;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
    }
    p {
        margin-top:10px ;
    }
    #name, #type, #basicIntro, #telNum, #address ,#map{
        width: 400px;
        margin: auto;
        margin-top: 25px;
    }
    #map {
        height: 300px;
    }
    .selector {
        width: 650px;
        height: 50px;
        position: relative;
        margin: auto;
    }
    .selectBtn {
        position: absolute;
        border-radius: 20px;
        padding: 10px;
        font-size: 15px;
        font-weight: bold;
        text-decoration: none;
        color: #424242;
        background-color: #f0f0f0 ;
        transition: .3s ease;
        border: 1px solid #f0f0f0 ;
        outline:none;
        cursor:pointer;
        box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    .selectBtn:hover {
        background-color: #40BEED;
        color: #ffffff;
        border: 1px solid #ffffff;
    }
    .select1 {
        margin-left: 150px;
    }
    .select2 {
        left: 400px;
    }
    #picture, #picture>i {
        width: 100%;
        height: 200px;
        line-height: 200px;
        text-align: center;
        font-size: 50px;
        cursor: pointer;
        transition: .2s ease;
        top:-2px;
    }
    #mainImage:hover {
        background-color: #f0f0f0;
    }
    #searchAddress {
        border: none;
        background-color: #f0f0f0;
        width: 120px;
        height: 20px;
        cursor: pointer;
        transition: .2s ease;
        border-radius: 20px;
    }
    #searchAddress:hover {
        background-color: #40BEED;
        color: #fff;
    }
    #basicIntro {
        height: 60px;
    }
    .bad1,.bad2,.typeBad {
        color:#E91E63;
        font-size: 12px;
    }
    #pictureImg{
        position:absolute;
    }
    #picture{
        position:absolute;
    }
    /*room css*/
    #rooms {
        position: relative;
        margin: auto;
        width: 700px;
        height: auto;
        left: 25px;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
        rgba(0, 0, 0, 0.12);
        display: none;
    }


    #nav {
        width: 650px;
        height: 150px;
    }

    .navigation {
        width: 650px;
        height: 75px;
        line-height: 75px;
    }

    #checkIn, #checkOut {
        font-size: 20px;
        width: 200px;
        height: 75px;
        float: left;
        font-weight: bold;
    }

    .navigation {
        text-align: right;
        line-height: 75px;
    }

    #leftSide {
        width: 320px;
        height: 200px;
        float: left;
        border-right: 1px solid #424242;
    }

    #rightSide {
        width: 360px;
        height: 220px;
        float: right;
    }

    .content2 {
        width: 650px;
        height: 200px;
        line-height: 30px;
        text-align: center;
        position: relative;
    }

    #leftSide>h2, #rightSide>h2, #content>h2, #rooms h2 {
        font-size: 20px;
        text-indent: 10px;
        font-weight: bold;
        margin: 10px;
    }

    #leftSide .type {
        height: 30px;
    }

    .type {
        margin: 5px;
        width: 150px;
        height: 20px;
        float: left;
    }

    .type2 {
        width: 500px;
        margin: 5px;
        height: 20px;
        float: left;
        text-align: left;

    }

    .menu {
        border: 1px solid #424242;
        border-radius: 5px;
        outline: #40BEED;
    }

    #addMenu {
        width: 650px;
        height: 50px;
        text-align: center;
    }

    #addMenu button {
        border: none;
        background-color: transparent;
        cursor: pointer;
        font-size: 18px;
    }

    .mainImage {
        width: 190px;
        height: 150px;
        margin-left: 10px;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
        rgba(0, 0, 0, 0.12);
        float: left;
        transition: .2s ease;
    }

    .mainImage:hover {
        background-color: #F0F0F0;
    }

    .detail {
        width: 450px;
        height: 200px;
        position: absolute;
        left:210px;



    }

    .picture, .picture>i {
        width: 190px;
        height: 100%;
        line-height: 150px;
        text-align: center;
        font-size: 50px;
        cursor: pointer;
        float: left;
    }

    #timepicker-wrapper22, #timepicker-wrapper33 {
        float: left;
        height: 75px;
        line-height: 80px;
        width: 400px;
        margin: 5px;
    }

    /*rooms css*/
    #food {
        position: relative;
        margin: auto;
        width: 650px;
        height: auto;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        display: none;
    }

    hr {
        width: 500px;
        position: absolute;
        left: 75px;
        top: 35px;
        z-index: -1;
    }
    .nav2 {
        width: 650px;
        height: 150px;
    }
    .navigation {
        width: 650px;
        height: 75px;
        line-height: 75px;
    }
    .openAndClose {
        font-size: 20px;
        width: 200px;
        height:75px;
        float: left;
        font-weight: bold;
    }
    .navigation {
        text-align: center;
        line-height: 75px;
    }
    .restDate {
        font-size: 20px;
        font-weight:bold;
        width: 200px;
        height: 75px;
    }
    .inputRestDate {
        width: 450px;
        height: 75px;
        float: right;
        line-height: 75px;
        text-indent: 80px;
    }
    .noRest {
        font-size: 15px;
        color: #424242;
    }
    #leftSide2 {
        width: 320px;
        height: 200px;
        float: left;
        border-right: 1px solid #424242;
    }
    #rightSide2 {
        width: 320px;
        height: 200px;
        float: right;
    }
    #content23 {
        width: 650px;
        height: 200px;
        clear: both;
    }
    .content22 {
        width:650px;
        height: 40px;
        line-height: 30px;
        text-align: center;
    }
    #leftSide>h2 , #rightSide>h2, #content23>h2, #food h2{
        font-size: 20px;
        text-indent: 10px;
        font-weight: bold;
        margin: 10px;
    }

    .type22 {
        margin: 10px;
        width: 150px;
        height: 20px;
        float: left;
    }


    #addMenu2 {
        width: 650px;
        height: 50px;
        text-align: center;
    }
    #addMenu2 button {
        border: none;
        background-color: transparent;
        cursor: pointer;
        font-size: 18px;
        height: 30px;

    }
    #timepicker-wrapper2, #timepicker-wrapper3 {
        float: left;
        height: 60px;
        line-height: 80px;
        width:200px;
        margin:5px;
    }
    .as {
        line-height: 80px;
        float: left;
    }
    /*food css end*/
       #culture {
           position: relative;
           margin: auto;
           width: 650px;
           height: auto;
           box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
           display: none;
       }

       hr {
           width: 500px;
           position: absolute;
           left: 75px;
           top: 35px;
           z-index: -1;
       }
     /*  #nav {
           width: 650px;
           height: 150px;
       }
       .navigation {
           width: 650px;
           height: 75px;
           line-height: 75px;
           text-align: center;
           line-height: 75px;
       }
*/
       #leftSide3 {
           width: 650px;
           height: 200px;
           float: left;
       }

       #content3 {
           width: 650px;
           height: 200px;
           clear: both;
       }
       .content23 {
           width:650px;
           height: 40px;
           line-height: 30px;
           text-align: center;
       }
       #leftSide3>h2 , #content3>h2, #culture h2{
           font-size: 20px;
           text-indent: 10px;
           font-weight: bold;
           margin: 10px;
       }
       .type3 {
           margin: 8px;
           width: 300px;
           height: 20px;
           float: left;
       }
       .type23 {
           margin: 10px;
           width: 150px;
           height: 20px;
           float: left;
       }
     /*  .menu{
           border-radius: 10px;
           outline: none;
       }*/
       #addMenu3 {
           width: 650px;
           height: 50px;
           text-align: center;
           margin-bottom: 10px;
       }
       #addMenu3 button {
           border: none;
           background-color: transparent;
           cursor: pointer;
           font-size: 18px;
       }
       #freeCulture {
           font-size: 15px;
           font-weight: bold;
           color: #424242;
       }
       #menuInfo {
           height: 50px;
       }
       #timepicker-wrapper23, #timepicker-wrapper34 {
           float: left;
           height: 60px;
           line-height: 80px;
           width:200px;
           margin:5px;
       }
      /*culture css end*/
    .flow{
        background-color: #40BEED;
        color: #fff;
    }
	#popup{
		width: 100%;
		height: 100%;
		background-color:#fff;
		display: none;
	}
</style>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="localsMenuBar"></div>
<div id="titleMain">
    <h1>명소 등록</h1>
    <h4>한바퀴에서 새롭게 제안하는 명소등록 시스템! 여러 사용자와 교루하며 새로알게된 장소를 주고받아 보세요.</h4>
    <h4>등록과 탈락도 모두 여러분의 선택으로 이루어 집니다.</h4>
    <button class="writeBtn">명소 등록하기</button>
</div>
<div id="main_sight">
    <div id="filter">
        <div class="row">
            <label id="sight" class="sort">명소</label>
            <label class="sort"><input type="checkbox" name="room" id="room" value="room" checked="checked">숙 소</label>
            <label class="sort"> <input type="checkbox" name="restaurant" id="restaurant" value="restaurant">음식점</label>
            <label class="sort"><input type="checkbox" name="tourism" id="tourism" value="tourism">관 광</label>
        </div><!--row end-->
        <div class="row">
            <label id="line" class="sort">정렬 순서</label>
            <label class="sort"><input type="radio" name="line" id="new" value="new" checked="checked">최신순</label>
            <label class="sort"><input type="radio" name="line" id="popularity" value="popularity">인기순</label>
            <label class="sort"><input type="radio" name="line" id="end" value="end">마감 임박순</label>
        </div><!--row end-->
        <a href="" class="applyBtn">적용하기</a>
    </div><!--filter end-->
    <div id="content">
        <ul id="sightList">
        <c:forEach items="${list }" var="site">
            <li class="sight">
                <div class="content_img">
                    <img src="img/car.jpg" alt="자전거"/>
                </div><!--//.funding_img -->
                <div class="content_title">
                    <h2>${site.name }</h2><!--타이틀로 설정할것-->
                    <strong>${site.intro }</strong>
                    <span>프로필
                        <em>${site.uTier }</em>
                         <span><i class="far fa-calendar-alt"></i>
                        <em>D-7</em>
                        </span>
                    </span>
                    <div class="voteWrap">
                    <span class="vote plus"><i class="fas fa-plus-circle"></i>
                        <em>35</em>
                    </span>
                        <span class="vote minus"><i class="fas fa-minus-circle"></i>
                        <em>6</em>
                    </span>
                    </div>
                </div>
            </li> <!--//.sight -->
            </c:forEach>
          <!--   <li class="sight">
                <div class="content_img">
                    <img src="img/car.jpg" alt="자전거"/>
                </div>//.funding_img
                <div class="content_title">
                    <h2>숙소 이름</h2>타이틀로 설정할것
                    <strong>내용 요약</strong>
                    <span>프로필
                        <em>티어</em>
                         <span><i class="far fa-calendar-alt"></i>
                        <em>D-7</em>
                        </span>
                    </span>
                    <div class="voteWrap">
                    <span class="vote plus"><i class="fas fa-plus-circle"></i>
                        <em>35</em>
                    </span>
                        <span class="vote minus"><i class="fas fa-minus-circle"></i>
                        <em>6</em>
                    </span>
                    </div>
                </div>
            </li> //.sight
            <li class="sight">
                <div class="content_img">
                    <img src="img/car.jpg" alt="자전거"/>
                </div>//.funding_img
                <div class="content_title">
                    <h2>숙소 이름</h2>타이틀로 설정할것
                    <strong>내용 요약</strong>
                    <span>프로필
                        <em>티어</em>
                         <span><i class="far fa-calendar-alt"></i>
                        <em>D-7</em>
                        </span>
                    </span>
                    <div class="voteWrap">
                    <span class="vote plus"><i class="fas fa-plus-circle"></i>
                        <em>35</em>
                    </span>
                        <span class="vote minus"><i class="fas fa-minus-circle"></i>
                        <em>6</em>
                    </span>
                    </div>
                </div>
            </li> //.sight -->
        </ul>
    </div><!--//.content -->
</div><!--main_sight end-->
<!-- <div id="popup"></div> -->
<div id="location">
	<div class="detailHeader">
	    <div class="firstFlow flow">명소 검색</div>
	    <div class="secondFlow">기본 정보 입력</div>
	    <div class="lastFlow">상세 정보 입력</div>
	    <hr/>
	</div>
	<div id="searchLocationBar">
	    <button id="inputLocation" type="submit">검색</button>
	    <input type="text" size="30" placeholder="명소를 입력하세요" >
	</div>
	<ul id="resultList">
	
	</ul>
	<div id="registerLocation">
	    <span>찾고자 하는 명소가 없으신가요?</span>
	    <a href="">명소 등록하기</a>
	</div>
</div><!--location end-->
<form action="/sight/register" method="post">
<div id="basic">
    <div id="basicHeader">
        <div class="firstFlow">명소 검색</div>
        <div class="secondFlow">기본 정보 입력</div>
        <div class="lastFlow">상세 정보 입력</div>
        <hr/>
    </div>
    <div id="basicContent">
            <input name="lat" id="siteLat" type="hidden"/>
            <input name="lng" id="siteLng" type="hidden"/>
            <input type="hidden" id="city" name="city"/>
            <input type="hidden" name="open" id="open" />
    		<input type="hidden" name="close" id="close" />
            <div id="mainImage" >
                <img src="/thumbnail/jw.jpg" width="400" height="200" id="pictureImg" name="pictureImg"/>
                <input type="hidden" id="filename" name="filename"/>
                <label id=picture for="pictures"><i id="test"class="fas fa-camera"></i>
                    <input id="pictures" class="screen_out" name="picture" type="file">
                </label>
            </div>
          
	        <div id="name">
	            <label for="locationName">명소 이름</label>
	            <input id="locationName" name="name" placeholder="명소 이름을 입력해주세요">
	            <span class="bad1"> *필수 입력사항 입니다.</span>
	        </div>
	         
	        <div id="type"> 명소 타입
	            <label><input name="type" class ="select_location_type" type="radio" value="L">숙소</label>
	            <label><input name="type" class ="select_location_type" type="radio" value="C">관광</label>
	            <label><input name="type" class ="select_location_type" type="radio" value="D">음식점</label>
	            <span class="typeBad"> *타입을 지정해주세요</span>
	        </div>
	     
	        <div id="address">주소
	            <input type="text" id="postcode" placeholder="우편번호" readonly>
	            <input type="button" id="searchAddress" value="주소 검색하기">
	            <p>
	                <input type="text" id="address1" size="50" name="address1"><br>
	                <span class="bad2"> *필수 입력사항 입니다.</span>
	            </p>
	            <p>
	                <input type="text" id="address2" size="50" placeholder="상세 주소 입력" name="address2">
	            </p>
	        </div>
	            
	        <div id="map"></div>
	   
	        <div id="telNum">
	            <label>전화번호</label>
	            <input class="tel_number" name="firstNumber" size="5">-<!--
	        --><input class="tel_number" name="secondNumber" size="5">-<!--
	        --><input class="tel_number" name="lasteNumber" size="5">
	        </div>
	        <div>
	            <div id="basicIntro">
	                <label for="intro">소개</label>
	                <input id="intro" type="text" size="50" name="intro">
	            </div>
	        </div>
	            
			<div class="selector">
			    <button type="button" class="selectBtn select1" id="basickBack">이전으로</button>
			    <button type="button" id="next" class="selectBtn select2">다음으로</button>
			</div>
			
	    </div>
	</div><!--basic end-->
	<div id="rooms">
		<input type="hidden" name="siteNo" />
		<div class="detailHeader">
		    <div class="firstFlow">명소 검색</div>
		    <div class="secondFlow">기본 정보 입력</div>
		    <div class="lastFlow">상세 정보 입력</div>
		    <hr />
		</div>
		<div id="nav">
		    <div id="checkIn" class="navigation">체크 인</div>
		    <div id="timepicker-wrapper22"></div>
		    <div id="checkOut" class="navigation">체크 아웃</div>
		    <div id="timepicker-wrapper33"></div>
		</div>
		<div id="leftSide">
		    <h2>시설 타입</h2>
		    <label class="type"><input type="radio" name="rsType" value="H">호텔</label>
		    <label class="type"><input type="radio" name="rsType" value="M">모텔</label>
		    <label class="type"><input type="radio" name="rsType" value="G">게스트 하우스</label>
		    <label class="type"><input type="radio" name="rsType" value="P">민박 및 펜션</label>
		    <label class="type"><input type="radio" name="rsType" value="C">호스텔 및 콘도</label>
		    <label class="type"><input type="radio" name="rsType" value="E">기타</label>
		</div>
		<div id="rightSide">
		    <h2>부대 시설</h2>
		    <label class="type"><input type="checkbox" name="crNo" value="1">무료주차</label>
		    <label class="type"><input type="checkbox" name="crNo" value="2">룸 서비스</label>
		    <label class="type"><input type="checkbox" name="crNo" value="3">풀(월풀욕조)</label>
		    <label class="type"><input type="checkbox" name="crNo" value="4">조식 제공</label>
		    <label class="type"><input type="checkbox" name="crNo" value="5">애완동물 허용</label>
		    <label class="type"><input type="checkbox" name="crNo" value="6">음식점</label>
		    <label class="type"><input type="checkbox" name="crNo" value="7">장애인시설 완비</label>
		    <label class="type"><input type="checkbox"	name="crNo" value="8">무료 와이파이</label>
		    <label class="type"><input type="checkbox" name="crNo" value="9">에어컨</label>
		    <label class="type"><input type="checkbox" name="crNo" value="10">금연 시설</label>
		</div>
		    <h2>객실 정보</h2>
		<div class="content2">
		    <div class="mainImage">
		        <label class=picture><i class="fas fa-camera"></i> <input
		                class="screen_out" name="picture" type="file"> </label>
		    </div>
		    <div class="detail">
		        <label class="type2">객실 이름 <input class="menu" type="text" name="menuName"></label>
		        <label class="type2">기준 인원 / 최대인원 <input class="menu" type="text" name="basicPeople" size="3">명 / <input class="menu" type="text" name="maxPeople" size="3">
		        명
		    </label>
		        <label class="type2">1일 숙박 금액 <input class="menu" type="number" name="price"> 원
		    </label>
		        <span class="type2">기준인원 외 추가 금액 <input class="menu" type="number" name="price"> 원 <label><input
		            type="checkbox">없음</label></span>
		        <span class="type2">대실 가격<input
		            class="menu" type="number" name="price"> 원
		            <label><input
		            type="checkbox">존재하지 않음</label></span>
		    </div>
		</div>
		<div id="addMenu">
		    <button id="addBtn" type="button">
		        <i class="fas fa-plus-circle"></i> 추가 하기
		    </button>
		</div>
		<div class="selector">
		    <button type="button" class="selectBtn select1" id="roomBack">&lt; 이전으로</button>
		    <button id="clearRegister" class="selectBtn select2">등록하기 &gt;</button>
		</div>
	</div><!--room end-->
	<div id="food">
	       <div class="detailHeader">
	           <div class="firstFlow">명소 검색</div>
	           <div class="secondFlow">기본 정보 입력</div>
	           <div class="lastFlow">상세 정보 입력</div>
	           <hr/>
	       </div>
	       <div class="nav2">
	           <div class="openAndClose navigation">영업 시간
	           </div>
	           <div id="timepicker-wrapper2"></div>
	           <span class="as">~</span>
	           <div id="timepicker-wrapper3"></div>
	            <div class="restDate navigation">휴무일</div>
		    <div class="inputRestDate">
		        <input class="inputRest" type="text" name="off">
		        <label class="noRest"><input type="checkbox" id="off">연중무휴</label>
		    </div>
		</div>
	       <div id="leftSide2">
	           <h2>시설 타입</h2>
	           <label class="type"><input type="radio" name="dType" value="R">레스토랑</label>
	           <label class="type"><input type="radio" name="dType" value="C">카페/베이커리</label>
	           <label class="type"><input type="radio" name="dType" value="N">일반 식당</label>
	           <label class="type"><input type="radio" name="dType" value="B">뷔페</label>
	           <label class="type"><input type="radio" name="dType" value="K">한정식</label>
	           <label class="type"><input type="radio" name="dType" value="H">호프/PUB/BAR</label>
	       </div>
	       <div id="rightSide2">
	           <h2>음식 종류</h2>
	           <label class="type"><input type="radio" name="foodType" value="K">한식</label>
	           <label class="type"><input type="radio" name="foodType" value="C">중식</label>
	           <label class="type"><input type="radio" name="foodType" value="J">일식</label>
	           <label class="type"><input type="radio" name="foodType" value="W">양식</label>
	           <label class="type"><input type="radio" name="foodType" value="B">뷔페</label>
	           <label class="type"><input type="radio" name="foodType" value="D">디저트</label>
	           <label class="type"><input type="radio" name="foodType" value="F">퓨전</label>
	           <label class="type"><input type="radio" name="foodType" value="E">기타(타국 등)</label>
	       </div>
	       <div id="content23">
	           <h2>시설 특징</h2>
	           <label class="type22"><input type="checkbox" name="crNo" value="15">예약</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="16">테이크아웃</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="17">유아용 의자</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="7">휠체어 이용 가능</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="8">와이파이 존</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="1">주차 가능</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="18">야외석</label>
	           <label class="type22"><input type="checkbox" name="crNo" value="19">주류 판매</label>
	       </div>
	       <h2>메뉴 정보</h2>
	       <div class="content22">
	           <label>메뉴 이름 <input class="menu" type="text" name="menuName"></label>
	           <label>가격 <input class="menu" type="text" name="price"></label> 원
	           <label><input type="radio" name="mainDish" checked>대표 메뉴 선택</label>
	       </div>
	    <div id="addMenu2">
	        <button id="addBtn2" type="button"><i class="fas fa-plus-circle"></i> 추가 하기</button>
	    </div>
	       <div class="selector">
	           <button type="button" class="selectBtn select1" id="foodBack">&lt; 이전으로</button>
	           <button id="clearRegister2" class="selectBtn select2">등록하기 &gt;</button>
	       </div>
	  
	</div>
	<div id="culture">
		<div class="detailHeader">
		    <div class="firstFlow">명소 검색</div>
		    <div class="secondFlow">기본 정보 입력</div>
		    <div class="lastFlow">상세 정보 입력</div>
		    <hr/>
		</div>
		<div class="nav2">
		    <div class="openAndClose navigation">영업 시간
		    </div>
		    <div id="timepicker-wrapper23"></div>
		    <span class="as">~</span>
		    <div id="timepicker-wrapper34"></div>
		    <div class="restDate navigation">휴무일</div>
		    <div class="inputRestDate">
		        <input class="inputRest" type="text" name="off">
		        <label class="noRest"><input type="checkbox" id="off">연중무휴</label>
		    </div>
		</div>
		<div id="leftSide3">
		    <h2>시설 타입</h2>
		    <label class="type3"><input type="radio" name="cType" value="N">자연/공원</label>
		    <label class="type3"><input type="radio" name="cType" value="L">랜드마크(놀이공원)</label>
		    <label class="type3"><input type="radio" name="cType" value="M">박물관/동물원/아쿠아리움</label>
		    <label class="type3"><input type="radio" name="cType" value="R">문화재/유적지</label>
		    <label class="type3"><input type="radio" name="cType" value="W">수상 스포츠</label>
		    <label class="type3"><input type="radio" name="cType" value="S">일반 스포츠</label>
		    <label class="type3"><input type="radio" name="cType" value="V">오락</label>
		    <label class="type3"><input type="radio" name="cType" value="E">기타</label>
		</div>
		<div id="content3">
		    <h2>시설 특징</h2>
		    <label class="type23"><input type="checkbox" name="crNo" value="1">주차 가능</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="5">애완동물 허용</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="6">음식점</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="7">장애인 시설 완비</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="8">무료 와이파이</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="11">화장실</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="12">카페테리아</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="13">실내공간</label>
		    <label class="type23"><input type="checkbox" name="crNo" value="14">셔틀버스</label>
		</div>
		<h2 id="menuInfo">가격 정보 <label id="freeCulture" for="free" ><input id="free" type="checkbox" name="feePrice">무료 시설</label></h2>
		<div id="feeBox">
			<div class="content23">
			    <label>대표가격 체크 <input type="radio" id="standard" name="isRepNo" value="0"></label>
			    <label>기준 <input class="menu" type="text" name="feeName"></label>
			    <label>금액 <input class="menu" type="text" name="feePrice"></label> 원
			</div>
		</div>
	    <div id="addMenu3">
	        <button id="addBtn3" type="button"><i class="fas fa-plus-circle"></i> 추가 하기</button>
	    </div>
		<div class="selector">
		    <button type="button" class="selectBtn select1" id="cultureBack">&lt; 이전으로</button>
		    <button id="clearRegister3" class="selectBtn select2">등록하기 &gt;</button>
		</div>
	
	</div><!--culture end-->
</form>

<script type="text/template" id="detailCulture">
		<div class="content23">
		    <label>대표가격 체크 <input type="radio" id="standard" name="isRepNo" value="<@=++repPriceIdx@>"></label>
		    <label>기준 <input class="menu" type="text" name="feeName"></label>
		    <label>금액 <input class="menu" type="text" name="feePrice"></label> 원
		</div>
</script>
<script type="text/template" id="detailFood">

<div class="content22">
	           <label>메뉴 이름 <input class="menu" type="text" name="menuName"></label>
	           <label>가격 <input class="menu" type="text" name="price"></label> 원
	           <label><input type="radio" name="mainDish" checked>대표 메뉴 선택</label>
	       </div>


</script>
<script type="text/template" id="detail_room">
    <div class="content2">
        <div class="mainImage">
            <label class=picture><i class="fas fa-camera"></i>
                <input class="screen_out" name="picture" type="file">
            </label>
        </div>
        <div class="detail">
            <label class="type2">객실 이름 <input class="menu" type="text" name="menuName"></label>
            <label class="type2">기준 인원 / 최대 인원
                <input class="menu" type="text" name="basicPeople" size="3"> 명 /
                <input class="menu" type="text" name="maxPeople" size="3"> 명</label>
            <label class="type2">1일 숙박 금액 <input class="menu" type="number" name="price"> 원</label>
            <label class="type2">기준인원 외 추가 금액 <input class="menu" type="number" name="price"> 원
                <label><input type="checkbox">없음</label></label>
            <label class="type2">대실 가격<input class="menu" type="number" name="price"> 원
                <label><input type="checkbox">존재하지 않음</label></label>
        </div>
    </div>
</script>
<script type="text/template" id="replayTmp">
    <li class="sight">
        <div class="content_img">
            <img src="img/car.jpg" alt="자전거"/>
        </div><!--//.funding_img -->
        <div class="content_title">
            <h2><@=site.name@></h2><!--타이틀로 설정할것-->
            <strong><@=site.intro@></strong>
            <span>프로필
                        <em><@=site.uTier@></em>
                         <span><i class="far fa-calendar-alt"></i>
                        <em>D-7</em>
                        </span>
                    </span>
            <div id="vote">
                    <span class="vote plus"><i class="fas fa-plus-circle"></i>
                        <em>35</em>
                    </span>
                <span class="vote minus"><i class="fas fa-minus-circle"></i>
                        <em>6</em>
                    </span>
            </div>
        </div>
    </li> <!--//.sight -->
</script>
<script type="text/template" id="resultListTmp">
        <@ _.each(results,function(result){ @>
        <li>
            <strong><@=result.name@></strong>
            <@=result.address@>
        </li>
        <@}) @>
</script>
<script src="/js/jquery.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/chat.js"></script>
<script src="/js/profilePopup.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86ebe9e4552156ffbdbba58beafaaf3d&libraries=services"></script>
<script src="/js/tui-code-snippet.min.js"></script>
<script src="/js/tui-time-picker.min.js"></script>
<script>
    _.templateSettings = {
        interpolate: /\<\@\=(.+?)\@\>/gim,
        evaluate: /\<\@([\s\S]+?)\@\>/gim,
        escape: /\<\@\-(.+?)\@\>/gim
    };

	var repPriceIdx = 0;
    var tmp = _.template($("#resultListTmp").html());



    var $window = $(window),
        $document = $(document);


    // alert(docHeight);

    $window.scroll(function () {

        var docHeight = $document.height(),
            winHeight = $window.height();

        var sTop = $window.scrollTop();

        if (docHeight <= (sTop + winHeight) + 30) {

            for (var i = 0; i < 10; i++) {

                var tmp = _.template($("#replayTmp").html());
                $("#sightList").append(tmp);
            }

        }

    });

    $(".writeBtn").click(function () {
        $("#location").css("display","block");
        $("#main_sight").css("display","none");
        $("#localsMenuBar").css("display","none");
        $("#titleMain").css("display","none");
    });
    
        $("#inputLocation").click(function (e) {
            e.preventDefault();
            var sl;
            sl=$("#searchLocationBar input").val();
            
            getResult(sl); 
            /*  $("#resultList").text("명소가 존재하지 않습니다. 명소를 등록해보세요") */
        });


        function getResult(sl) {

            $.ajax({
                url:"/ajax/sight/search/"+sl,
                dataType:"json",
                type:"get",
                error:function() {
                    alert("에러!");
                },
                success:function(json) {

                    console.log(json);
					if(json.list == 0){
						alert("값이 없습니다.");
						
					}
                    /* $("#resultList").appendTo().text() */
                    $("#resultList").html(tmp({results:json.list}));
					
                }
            });
        }//getResult() end

   

    $("#registerLocation a").click(function (e) {
        e.preventDefault();
        $("#basic").css("display","block");
        $("#location").css("display","none");
        $(".firstFlow").removeClass("flow");
        $(".secondFlow").addClass("flow");
        var $picture = $("#pictures");
        var pictureReg = /^image/;

        var test1;
        var test2;
        var filename;

        $("#pictureImg").css("display","none");
        $picture.change(function() {
            //jquery객체에서 순수자바스크립트요소객체 얻기
            var picture = $picture.get(0);

            //input type=file 요소(순수자바스크립트)는 무조건
            //files 배열을 가지고 있습니다.

            //한 개의 파일
            var file = picture.files[0];

            //File 객체의 속성
            //- type : MIME( image/jpeg, audio/mp3, video/mp4 ...)
            //- name : 파일명
            //- lastModified : 최종 수정일
            //- size : 파일 크기

            if(file.size <= 0) {
                alert("파일을 선택해 주세요");
            } //if end
            // 이미지인지 확인
            if(!pictureReg.test(file.type)) {
                alert("jpg, png, gif등 이미지 파일을 선택해 주세요")
            } else {

            } // if~else end
            //여기에 넘어왔다는 뜻은 유저가 선택한 파일이
            // 1바이트 이상의 크기이고 이미지 파일이라는 뜻입니다.

            // ajax로 넘길 폼을 생성하고
            var form = new FormData();

            // 우리가 선택한 파일을 붙임
            form.append("type","S"); // type=H 일반적인 데이터
            // 1) 파라미터명, 2) 파일 3) 파일명
            form.append("thumbnail",file,file.name);

            //multipart/form-data로 ajax처리
            $.ajax({
                url:"/ajax/sight/image",
                dataType:"json",
                type: "POST",
                processData:false,//multipart/form-data
                contentType:false,//multipart/form-data
                data:form,
                error:function() {
                    alert("점검중 입니다.");
                },
                success:function(json) {
                    $("#pictureImg").attr("src",json.src);
                    $("#test").css("display","none");
                    $("#pictureImg").css("display","block");
                    $("#filename").val(file.name);

                }
            }); //ajax() end

        });//change() end

        $(".bad1").hide();
        $(".bad2").hide();
        $(".typeBad").hide();
        var $postcode = $("#postcode");
        var $address1 = $("#address1");
        var $address2 = $("#address2");
        $("#searchAddress").click(function () {
            new daum.Postcode({
                oncomplete: function (data) {
                    var fullAddr = '';
                    var extraAddr = '';
                    if(data.userSelectedType==='R') {
                        fullAddr = data.roadAddress;
                    } else {
                        fullAddr = data.jibunAddress;
                    }
                    if(data.userSelectedType ==='R') {
                        if(data.bname!=='') {
                            extraAddr +=data.bname;
                        }
                        if(data.buildingName !=='') {
                            extraAddr+=(extraAddr !=='' ? ',' + data.buildingName : data.buildingName);
                        }
                        fullAddr += (extraAddr !==''?'('+extraAddr +')':'');
                    }
                    $postcode.val(data.zonecode);
                    $address1.val(fullAddr);
                    $address2.focus();


                    // 주소로 좌표를 검색합니다
                    geocoder.addressSearch(fullAddr, function(result, status) {

                        // 정상적으로 검색이 완료됐으면
                        if (status === daum.maps.services.Status.OK) {

                            var coords = new daum.maps.LatLng(result[0].y, result[0].x);

                            console.log(result[0].address);
                            console.log(result[0].address.region_1depth_name);
                            console.log(result[0].address.region_2depth_name);
                            console.log(result[0].address.region_3depth_name);
                            console.log(result[0].address.region_3depth_h_name);

                            test1 = result[0].y;
                            test2 = result[0].x;
                            
                            $("#city").val(result[0].address.region_1depth_name);
                           

                            // 결과값으로 받은 위치를 마커로 표시합니다
                            var marker = new daum.maps.Marker({
                                map: map,
                                position: coords
                            });
                            // 인포윈도우로 장소에 대한 설명을 표시합니다
                            var infowindow = new daum.maps.InfoWindow({
                                content: '<div style="width:150px;text-align:center;padding:6px 0;">여기염!</div>'
                            });
                            infowindow.open(map, marker);

                            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                            map.setCenter(coords);

                            $("#siteLat").val(test1);
                            $("#siteLng").val(test2);
                        }
                    });
                }
            }).open();
        });
        function check(e) {
            var locationName = $.trim($("#locationName").val());
            var address = $.trim($("#address1").val());
            if(locationName.length===0) {
                e.preventDefault();
                $(".bad1").show();
                $(".bad2").hide();
            }
            else if(address.length===0) {
                e.preventDefault();
                $(".bad2").show();
                $(".bad1").hide();
            }
            if(locationName.length===0 && address.length===0) {
                e.preventDefault();
                $(".bad2").show();
                $(".bad1").show();
            }
        }

        $("#next").click(function (e) {
            check(e);
           /*  console.log(test1);
            console.log(test2); */
            var type = $('input[name="type"]:checked').val();
            if(type==="L") {
                $(".typeBad").css("display","none");
                $(".secondFlow").removeClass("flow");
                $(".lastFlow").addClass("flow");
                $("#basic").css("display","none");
                $("#rooms").css("display","block");
                $(".clearRegister").click(function() {
                    alert("등록 완료");
                });

                $("#roomBack").click(function (e) {
                    e.preventDefault();
                    $(".lastFlow").removeClass("flow");
                    $(".secondFlow").addClass("flow");
                    $("#basic").css("display","block");
                    $("#rooms").css("display","none");
                });

                $("#addBtn").click(function() {

                    var tmp = _.template($("#detail_room").html());
                    $(".content2:last").after(tmp);
                });

                var now = new Date();
                
                var roomOpenTimePicker = new tui.TimePicker('#timepicker-wrapper22', {
                    initialHour : now.getHours(),
                    initialMinute : now.getMinutes(),
                    inputType : 'selectbox',
                   
                });
 				roomOpenTimePicker.on("change",function(time) {
                	
                	console.log(time);
                	$("#open").val(time.hour+":"+time.minute);
                })
                var roomEndTimePicker = new tui.TimePicker('#timepicker-wrapper33', {
                    initialHour : now.getHours(),
                    initialMinute : now.getMinutes(),
                    inputType : 'selectbox'
                });
 				
 				 roomEndTimePicker.on("change",function(time) {
                 	
                 	console.log(time);
                 	$("#close").val(time.hour+":"+time.minute);
                 })

               /*  checkIn=$("#timepicker-wrapper2").val();
                console.log(checkIn); */
            }
            else if(type==="D") {
                $(".typeBad").css("display","none");
                $(".secondFlow").removeClass("flow");
                $(".lastFlow").addClass("flow");
                $("#basic").css("display","none");
                $("#rooms").css("display","none");
                $("#food").css("display","block");

                $("#foodBack").click(function (e) {
                    e.preventDefault();
                    $(".lastFlow").removeClass("flow");
                    $(".secondFlow").addClass("flow");
                    $("#basic").css("display","block");
                    $("#food").css("display","none");
                });

                $("#clearRegister").click(function () {
                    alert("등록 완료");
                });
                $("#addBtn2").click(function () {
                    $(".content2").eq(0).after(' <div class="content2">\n' +
                        '        <label>메뉴 이름 <input class="menu" type="text" name="menuName"></label>\n' +
                        '        <label>가격 <input class="menu" type="text" name="price"></label> 원\n' +
                        '<label><input type="radio" name="mainDish">대표 메뉴 선택</label>\n'+
                        '    </div>');
                });
                $("#off").change(function(){
                	if($("#off").is(":checked")){
                		$(".inputRest").hide();
                		$(".inputRest").val("연중무휴").attr("readonly");
                		console.log($(".inputRest").val());
                	}
                	else{
                		$(".inputRest").show();
                		$(".inputRest").val("").attr("readonly","false");
                	}
                });//off change end
                
                var now = new Date();
                var foodOpenTimePicker = new tui.TimePicker('#timepicker-wrapper2', {
                    initialHour: now.getHours(),
                    initialMinute: now.getMinutes(),
                    inputType: 'selectbox'
                });
                
                foodOpenTimePicker.on("change",function(time) {
                	
                	console.log(time);
                	$("#open").val(time.hour+":"+time.minute);
                })
                
                var foodEndTimePicker = new tui.TimePicker('#timepicker-wrapper3', {
                    initialHour: now.getHours(),
                    initialMinute: now.getMinutes(),
                    inputType: 'selectbox'
                });
                
                foodEndTimePicker.on("change",function(time) {
                	
                	console.log(time);
                	$("#close").val(time.hour+":"+time.minute);
                })
                /*  $("#next").attr("href","/registerFood.jsp"); */
            }
            else if(type==="C") {
                $(".typeBad").css("display","none");
                $(".secondFlow").removeClass("flow");
                $(".lastFlow").addClass("flow");
                $("#basic").css("display","none");
                $("#rooms").css("display","none");
                $("#food").css("display","none");
                $("#culture").css("display","block");

                $("#cultureBack").click(function (e) {
                    e.preventDefault();
                    $(".lastFlow").removeClass("flow");
                    $(".secondFlow").addClass("flow");
                    $("#basic").css("display","block");
                    $("#culture").css("display","none");
                });
                $("#clearRegister").click(function () {
                    alert("등록 완료");
                    window.close();
                });
                
                
                $("#addBtn3").click(function () {
                	 var tmp = _.template($("#detailCulture").html());
                     //$(".content23:last").after(tmp);
                     $("#feeBox").append(tmp);
                   //feetmp();
                });
                
                
                $("#off").change(function(){
                	if($("#off").is(":checked")){
                		$(".inputRest").hide();
                		$(".inputRest").val("연중무휴").attr("readonly");
                		console.log($(".inputRest").val());
                	}
                	else{
                		$(".inputRest").show();
                		$(".inputRest").val("").attr("readonly","false");
                	}
                });//off change end
                
               
                
                 $("#free").change(function(){
                     if($("#free").is(":checked")){
                         $(".content23").hide();
                         $("#addMenu3").hide();
                         $("#free").val("무료시설");
                     }else{
                         $(".content23").show();
                         $("#addMenu3").show();
                     }
                 });

                var now = new Date();
                var cultureOpenTimePicker = new tui.TimePicker('#timepicker-wrapper23', {
                    initialHour: now.getHours(),
                    initialMinute: now.getMinutes(),
                    inputType: 'selectbox'
                });
                
 				cultureOpenTimePicker.on("change",function(time) {
                	console.log(time);
                	$("#open").val(time.hour+":"+time.minute);
                });
 				
                var cultureEndTimePicker = new tui.TimePicker('#timepicker-wrapper34', {
                    initialHour: now.getHours(),
                    initialMinute: now.getMinutes(),
                    inputType: 'selectbox'
                });
 				
 				 cultureEndTimePicker.on("change",function(time) {
                 	console.log(time);
                 	$("#close").val(time.hour+":"+time.minute);
                 });
 				 
                /*     $("#next").attr("href","/registerCulture.jsp") */
            }
            else {
                e.preventDefault();
                /*  $(".typeBad").css("display","inline"); */
            }
        });

        $("#basickBack").click(function(){
            $(".secondFlow").removeClass("flow");
            $(".firstFlow").addClass("flow");
            $("#location").css("display","block");
            $("#basic").css("display","none");

        });

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        // 지도를 생성합니다
        var map = new daum.maps.Map(mapContainer, mapOption);
        // 주소-좌표 변환 객체를 생성합니다.
        var geocoder = new daum.maps.services.Geocoder();

    })



</script>
</body>
</html>