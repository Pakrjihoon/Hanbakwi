<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Content</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/addSlider.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/CommonCSSBundle.merged.css">
    <link rel="stylesheet" type="text/css" href="/css/PollCSSBundle.merged.css">
    <link rel="stylesheet" href="/css/header.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="/css/locationContent.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <script src="/js/common.merged.js"></script>
    <style>
        #myPick {
            /*display: none;*/
        }
        #logoImage{
            background-image: url("/img/로고.png");
        }

    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div class="navigator">
    <div class="to_top"><a href="#" class="arrow_to_top arrow fas fa-angle-up"></i></a></div>
    <div class="help">
        <button class="navigation"><span>이동하기</span></button>
    </div>
    <div class="to_bottom"><a href="#" class="arrow_to_bottom arrow fas fa-angle-down"></i></a></div>
</div>
<div id="wrap">
    <div class="selectMap">
        <div id="kakaoWrap" class="election_type2">
            <div id="kakaoContent" class="cont_vote" role="main">
                <div id="cSub">
                    <div class="feature_vote feature_count">
                        <div class="inner_g">
                            <div class="status_vote">
                                <div class="count_vote">
                                    <div class="sort_election"><!-- 팝업 오픈시 .sort_open 클래스 추가 -->
                                        <a href="javascript:;" class="btn_sort"><span class="screen_out">선택된 지역</span><span id="selectDistrict">전국</span><span class="ico_election">다른지역 펼치기</span></a>
                                        <ul class="layer_sort">
                                            <li class="on"><a href="javascript:;" class="link_region"><span class="txt_g">전국</span></a></li> <!-- 선택된 지역에 on클래스 추가 -->
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3110000">
                                            <span class="txt_g">
                                                    서울
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3260000">
                                            <span class="txt_g">
                                                    부산
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3270000">
                                            <span class="txt_g">
                                                    대구
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3280000">
                                            <span class="txt_g">
                                                    인천
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3290000">
                                            <span class="txt_g">
                                                    광주
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3300000">
                                            <span class="txt_g">
                                                    대전
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3310000">
                                            <span class="txt_g">
                                                    울산
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3410000">
                                            <span class="txt_g">
                                                    경기
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3420000">
                                            <span class="txt_g">
                                                    강원
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3430000">
                                            <span class="txt_g">
                                                    충북
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3440000">
                                            <span class="txt_g">
                                                    충남
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3450000">
                                            <span class="txt_g">
                                                    전북
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3460000">
                                            <span class="txt_g">
                                                    전남
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3470000">
                                            <span class="txt_g">
                                                    경북
                                            </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="link_region dist" did="3480000">
                                            <span class="txt_g">
                                                    경남
                                            </span>
                                                </a>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="link_nation" style="display: none;"><span class="ico_election">전국으로 돌아가기</span></a>
                                    </div>
                                    <div class="count_map">
                                        <div class="map_count">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--// cSub -->
            </div>
        </div>
    </div>
    <div><span id="myPick">내가 선택한 지역 : </span></div>
    <hr>
    <div id="fillter">
        <h2 id="fillterMain">필터</h2>
        <div id="money">
            <h2 id="priceBar">가격 정보</h2>
            <input type="range" min="0" max="180000" step="500" class="slider">
            <p class="result"></p>
        </div>
        <div id="type">
            <button type="button" class="moreBtn1"><i id="fa1" class="fas fa-arrow-circle-down"></i> 시설 타입</button>
            <div id="moreType" class="hide">
                <label class="type1"><input type="checkbox">호텔</label>
                <label class="type1"><input type="checkbox">모텔</label>
                <label class="type1"><input type="checkbox">게스트 하우스</label>
                <label class="type1"><input type="checkbox">민박 및 펜션</label>
                <label class="type1"><input type="checkbox">호스텔 및 콘도</label>
                <label class="type1"><input type="checkbox">기타</label>
            </div>
        </div>
        <div id="install">
            <button type="button" class="moreBtn2"><i id="fa2" class="fas fa-arrow-circle-down"></i> 부대 시설</button>
            <div id="moreInstall" class="hide">
                <label class="type1"><input type="checkbox" name="install">무료 주차</label>
                <label class="type1"><input type="checkbox" name="install">풀(월풀 욕조)</label>
                <label class="type1"><input type="checkbox" name="install">룸 서비스</label>
                <label class="type1"><input type="checkbox" name="install">조식 제공</label>
                <label class="type1"><input type="checkbox" name="install">애완동물 허용</label>
                <label class="type1"><input type="checkbox" name="install">음식점</label>
                <label class="type1"><input type="checkbox" name="install">장애인 시설 완비</label>
                <label class="type1"><input type="checkbox" name="install">금연시설</label>
                <label class="type1"><input type="checkbox" name="install">에어컨</label>
                <label class="type1"><input type="checkbox" name="install">무료 와이파이</label>
            </div>
        </div>
        <div id="userReview">
            <button type="button" class="moreBtn3"><i id="fa3" class="fas fa-arrow-circle-down"></i> 사용자 평점</button>
            <div id="moreReview" class="hide">
                <label class="type1"><input type="radio" name="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
                <label class="type1"><input type="radio" name="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
                <label class="type1"><input type="radio" name="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
                <label class="type1"><input type="radio" name="score"><i class="fas fa-star"></i><i class="fas fa-star"></i></label>
                <label class="type1"><input type="radio" name="score"><i class="fas fa-star"></i></label>
            </div>
        </div>
        <button type="button" id="applyBtn">적용 하기</button>
    </div>
    <div id="select">
        <button id="roomBtn" type="button" class="categoryBtn on">숙소</button>
        <button id="foodBtn" type="button" class="categoryBtn">음식점</button>
        <button id="cultureBtn" type="button" class="categoryBtn">관광지</button>
    </div>
    <div id="content">
        <div class="element">
            <div class="ele_picture">
                <img src="/img/hogwarts.jpg" alt="호텔">
            </div>
            <div class="ele_info">
                <h2 class="location_name">지후니의 호그와트</h2>
                <h2 class="fonderImg"><i class="fas fa-user-circle"></i>해리포터</h2>
                <h3 class="location_intro">품격있는 호텔, 최고의 서비스</h3>
                <span class="s_price1">1박 숙박 기준 </span>
                <span class="s_price2">180,000 원</span><br/>
                <span class="location_address">서울특별시 관악구</span>
                <span class="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                <i class="far fa-heart"> 4,023</i>
            </div>
        </div>
        <div class="element">
            <div class="ele_picture">
                <img src="/img/hogwarts.jpg" alt="호텔">
            </div>
            <div class="ele_info">
                <h2 class="location_name">지후니와 호그와트</h2>
                <h2 class="fonderImg"><i class="fas fa-user-circle"></i>해리포터</h2>
                <h3 class="location_intro">품격있는 호텔, 최고의 서비스</h3>
                <span class="s_price1">1박 숙박 기준 </span>
                <span class="s_price2">180,000 원</span><br/>
                <span class="location_address">서울특별시 관악구</span>
                <span class="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                <i class="far fa-heart"> 4,023</i>
            </div>
        </div>
        <div class="element">
            <div class="ele_picture">
                <img src="/img/hogwarts.jpg" alt="호텔">
            </div>
            <div class="ele_info">
                <h2 class="location_name">호그와트에서 라면먹고 갈래?</h2>
                <h2 class="fonderImg"><i class="fas fa-user-circle"></i>해리포터</h2>
                <h3 class="location_intro">품격있는 호텔, 최고의 서비스</h3>
                <span class="s_price1">1박 숙박 기준 </span>
                <span class="s_price2">180,000 원</span><br/>
                <span class="location_address">서울특별시 관악구</span>
                <span class="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                <i class="far fa-heart"> 4,023</i>
            </div>
        </div>
        <div class="element">
            <div class="ele_picture">
                <img src="/img/hogwarts.jpg" alt="호텔">
            </div>
            <div class="ele_info">
                <h2 class="location_name">지훈쨩 호그와트 조아해?</h2>
                <h2 class="fonderImg"><i class="fas fa-user-circle"></i>해리포터</h2>
                <h3 class="location_intro">품격있는 호텔, 최고의 서비스</h3>
                <span class="s_price1">1박 숙박 기준 </span>
                <span class="s_price2">180,000 원</span><br/>
                <span class="location_address">서울특별시 관악구</span>
                <span class="score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                <i class="far fa-heart"> 4,023</i>
            </div>
        </div>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/Obj.min.js"></script>
<script src="/js/addSlider.js"></script>
<script src="/js/e20180613SocialSharePcBundle.merged.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/localContent.js"></script>
<script src="/js/chat.js"></script>
<script src="/js/profilePopup.js"></script>
<script>
    $(".moreBtn1").click(function () {
        if($("#moreType").hasClass("hide")) {
            $("#moreType").removeClass("hide");
            $("#fa1").addClass("fa-arrow-circle-up");
        }
        else {
            $("#moreType").addClass("hide");
            $("#fa1").removeClass("fa-arrow-circle-up");
            $("#fa1").addClass("fa-arrow-circle-down");
        }
    });
    $(".moreBtn2").click(function () {
        if($("#moreInstall").hasClass("hide")) {
            $("#moreInstall").removeClass("hide");
            $("#fa2").addClass("fa-arrow-circle-up");
        }
        else {
            $("#moreInstall").addClass("hide");
            $("#fa2").removeClass("fa-arrow-circle-up");
            $("#fa2").addClass("fa-arrow-circle-down");
        }
    });
    $(".moreBtn3").click(function () {
        if($("#moreReview").hasClass("hide")) {
            $("#moreReview").removeClass("hide");
            $("#fa3").addClass("fa-arrow-circle-up");
        }
        else {
            $("#moreReview").addClass("hide");
            $("#fa3").removeClass("fa-arrow-circle-up");
            $("#fa3").addClass("fa-arrow-circle-down");
        }
    });
    $(".element").click(function() {
    	location.href="room/no"
    });
</script>
<script src="/js/e20180613VoteRegionBundle.merged.js"></script>
<script src="/js/fix-footer.js"></script>
</body>
</html>