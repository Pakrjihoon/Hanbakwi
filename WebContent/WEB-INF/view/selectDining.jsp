<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>김치볶음 명인점|한바퀴</title>
    <link rel="stylesheet" href="/css/reset.css"/>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <style>
        body *{
            font-family: 'Noto Sans KR', sans-serif;
        }
        .box{
            width: 1060px;
            margin: auto;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            padding: 10px;
            position: relative;
        }
        h3{
            font-size: 20px;
        }
        #titleBox{
            height: 90px;
            line-height: 50px;
            font-size: 35px;
            font-weight: bold;
        }
        #titleBox p{
            font-size: 25px;
        }
        #founderImage{
            width: 50px;
            height: 50px;
            border-radius: 25px;
            position: absolute;
            top: 10px;
            right: 10px;
        }
        #pictureBox,.picture{
            height: 400px;
        }
        #pictureListBox {
            height: 150px;
        }
        .btn {
            width: 50px;
            height: 50px;
            border: none;
            font-size: 50px;
            cursor: pointer;
            position: absolute;
            top: 50px;
            background: white;
            outline: none;
            color: #40BEED;
        }
        #left{
            left: 0;
        }
        #right {
            right: 0;
        }
        .photosList{
            position: relative;
            width:1400px;
            height: 130px;
        }
        .photos {
            width: 165px;
            height: 130px;
            background-size: cover;
            float: left;
            margin-right: 10px;
        }
        .viewer{
            position: relative;
            width:960px;
            height: 130px;
            top:10px;
            left:50px;
            overflow: hidden;
        }
        #info{
            width: 1060px;
        }
        #info div{
            float: left;
            height: 300px;
        }
        #location{
            width: 360px;
        }
        #character {
            width: 340px;
            padding-left: 10px;
        }
        #map{
            float: left;
        }
        #type{
            width: 338px;
            padding-left: 10px;
            border-left: 1px solid #424242;
            border-right: 1px solid #424242;
        }
        #menuInfo{
            min-height: 100px;
            clear: both;
        }
        #menuInfo ul{
            overflow: hidden;
        }
        #menuInfo li{
            width: 430px;
            float: left;
            list-style: disc;
            margin: 10px 50px;
        }
        h2{
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .list_card{
            height: 330px;
            clear: both;
        }
        .detail{
            font-size: 15px;
            line-height: 2.5;
            margin: 30px;
        }
        .no_site{
            width: 1060px;
            height: 330px;
            text-align: center;
            line-height: 330px;
        }
        #reviewWriteBtn{
            width: 100px;
            height: 40px;
            border: none;
            border-radius: 5px;
            background: #40beed;
            color: #fff;
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
        .card{
            float: left;
            margin: 32px;
            text-align: center;
            line-height: 1.5;
        }
        .card a{
            color: #424242;
            text-decoration: none;
        }
        .card img{
            width: 200px;
            height: 150px;
        }
        #journalBox{
            height: 550px;
        }
        .card_journal{
            width: 900px;
            height: 150px;
            margin: 20px auto;
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .card_journal a{
            color: #424242;
        }
        .card_journal img{
            width: 200px;
            height: 150px;
            float: left;
        }
        .card_journal p{
            margin: 15px 0;
        }
        .card_journal li{
            float: left;
            min-width: 50px;
            height: 30px;
            padding: 5px;
            border-radius: 20px;
            background: #40BEED;
            color: #fff;
            line-height: 30px;
            margin-right: 10px;
            position: relative;
        }
        .card_journal hr{
            height: 3px;
            border: 0;
            position: absolute;
            left: 10px;
            bottom: 20px;
            background: #40beed;
        }
        .detail_journal{
            width: 680px;
            float: right;
            padding: 10px;
            line-height: 1.5;
            position: relative;
        }
        #reviewBox{
            height: 380px;
        }
    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="content">
    <div id="titleBox" class="box">
        <h1>新 참치</h1>
        <a href=""><img id="founderImage" src="/img/joy.jpg"/></a>
        <p>생참치 전문점</p>
    </div>
    <div id="pictureBox" class="box">
        <ul>
            <li>
                <img class="picture" src="/img/food.jpg" width="1060"/>
            </li>
        </ul>
    </div>
    <div id="pictureListBox" class="box">
        <button id="left" class="btn"><i class="fas fa-chevron-left"></i></button>
        <button id="right" class="btn"><i class="fas fa-chevron-right"></i></button>
        <div class="viewer">
            <ul class="photosList">
                <li>
                    <img class="photos" src="/img/참치1.jpg" width="165px" height="130px">
                </li>

                <li>
                    <img class="photos" src="/img/참치2.png" width="165px" height="130px">
                </li>

                <li>
                    <img class="photos" src="/img/maxresdefault.jpg" width="165px" height="130px">
                </li>

                <li>
                    <img class="photos" src="/img/참치3.jpg" width="165px" height="130px">
                </li>

                <li>
                    <img class="photos" src="/img/참치4.jpg" width="165px" height="130px">
                </li>
                <li>
                    <img class="photos" src="/img/참치1.jpg" width="165px" height="130px">
                </li>
            </ul>
        </div>
    </div>
    <div id="infoBox" class="box">
        <div id="info">
            <div id="location">
                <h2>위치 정보</h2>
                <div id="map" style="width:250px;height:250px;"></div>
            </div>
            <div id="type">
                <h2>시설 타입 및 정보</h2>
                <div class="detail">
                    <p>일반 식당</p>
                    <p>OPEN 14:00</p>
                    <p>CLOSE 03:00</p>
                    <p>매주 월요일 휴무</p>
                </div>
            </div>
            <div id="character">
                <h2>음식점 특징</h2>
                <div class="detail">
                    <p>일식</p>
                    <p>무료주차, 와이파이, 금연시설</p>
                    <p>매주 금요일 휴무</p>
                </div>
            </div>
        </div>
        <div id="menuInfo">
            <h2>메뉴 정보</h2>
            <ul>
                <li>주방장 특선 - 70,000원</li>
                <li>스페셜 A - 60,000원</li>
                <li>스페셜 B - 50,000원</li>
                <li>참치 모둠 초밥 - 30,000원</li>
                <li>마루 사케 - 35,000원</li>
                <li>아사히 생맥 - 8,000원</li>
            </ul>
        </div>
    </div>
    <div id="reviewBox" class="box list_card">
        <h2>사용자 후기</h2>
        <button id="reviewWriteBtn">리뷰 작성</button>
        <div>
            <div class="card">
                <a href="">
                    <img src="/img/참치1.jpg"/>
                    <h3>너무 비싼데 맛있어서 3점..</h3>
                    <p class="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
                    <p>2018.11.15</p>
                    <p>이동규</p>
                </a>
            </div>
        </div>
    </div>
    <div id="aroundBox" class="box">
        <div class="list_card">
            <h2>주변 숙소</h2>
            <!--<div class="no_site">
                주변에 숙소가 존재하지 않습니다.
            </div>-->
            <div class="card">
                <a href="">
                    <img src="/img/신1.jpg"/>
                    <h3>서울 신라호텔</h3>
                    <p>0.3km</p>
                </a>
            </div>
            <div class="card">
                <a href="">
                    <img src="/img/hogwarts.jpg"/>
                    <h3>지훈쨩 호그와트 조아해?</h3>
                    <p>0.4km</p>
                </a>
            </div>
            <div class="card">
                <a href="">
                    <img src="/img/cat.jpg"/>
                    <h3>토요코인 호텔</h3>
                    <p>1km</p>
                </a>
            </div>
        </div>
        <div class="list_card">
            <h2>주변 음식점</h2>
            <div class="no_site">
                주변에 식당이 존재하지 않습니다.
            </div>
            
        </div>
        <div class="list_card">
            <h2>주변 즐길거리</h2>
            <div class="no_site">
                주변에 관광지가 존재하지 않습니다.
            </div>
        </div>
    </div>
    <div id="journalBox" class="box list_card">
        <h2>관련 여행기</h2>
        <div class="no_site">
          관련 여행기가 존재하지 않습니다.
            </div>
    </div>
</div>
<c:import url="/WEB-INF/templates/footer.jsp"></c:import>
<script src="/js/jquery.js"></script>
<script src="/js/fixed.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5582a53295fa523e80970aa10695aeaa"></script>
<script>
    var container = document.getElementById('map');
    var options = {
        center: new daum.maps.LatLng(33.450701, 126.570667),
        level: 3
    };

    var map = new daum.maps.Map(container, options);

    var photoIdx=0;
    $("#left").click(function () {

        if (photoIdx != 0) {
            photoIdx--;

            var num = (-photoIdx * 175);
            $(".photosList img").css("transform", "translateX(" + num + "px)");
        }
    });
    $("#right").click(function () {

        if (photoIdx != 4) {
            photoIdx++;

            var num = -(photoIdx * 175);
            $(".photosList img").css("transform", "translateX(" + num + "px)");
        }
    });

    var liWidth=0;
    function getHrLength(){
        $(".detail_journal").each(function () {
            $(this).find("li").each(function () {
                liWidth+=$(this).width();
            });
            $(this).find("hr").width(liWidth+10);
            liWidth=0;
        });
    }
    getHrLength();
</script>
</body>
</html>